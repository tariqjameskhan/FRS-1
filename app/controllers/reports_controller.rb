class ReportsController < ApplicationController
  before_action :set_company, only: [:new, :create, :edit, :update, :show]

  def new
    @report = Report.new
    # @company = Company.find(params[:company_id])
    authorize @report
  end

  def create
    @report = Report.new(report_params)
    @report.company = @company
    authorize @report
    if @report.save
      @questions = Question.all
      # for every question
      @questions.each do |question|
        @report_question = ReportQuestion.new(answer: false)
        # new instance of report_question
        @report_question.question = question
        # assign the question for example report_question(1) will be assinged question(1)
        @report_question.report = @report
        # assigned to the report we just created
        @report_question.save!
        # save it!
      end
      redirect_to company_report_path(@company, @report)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @report = Report.find(params[:id])
    authorize @report
    @report_questions = @report.report_questions
    @markers = [{
      lat: @report.latitude,
      lng: @report.longitude
    }]
  end

  def fire_alarm
    @report = Report.find(params[:id])
    @company = Company.find(params[:company_id])
    authorize @report
    @report_questions = []
    @report.report_questions.each { |report_question| @report_questions << report_question if report_question.id < 4 }
  end

  def fire_training
    @report = Report.find(params[:id])
    @company = Company.find(params[:company_id])
    authorize @report
    @report_questions = []
    @report.report_questions.each { |report_question| @report_questions << report_question if report_question.id > 3 && report_question.id < 9 }
  end

  def fire_extinguishers
    @report = Report.find(params[:id])
    @company = Company.find(params[:company_id])
    authorize @report
    @report_questions = []
    @report.report_questions.each { |report_question| @report_questions << report_question if report_question.id > 8 }
  end

  def edit
    @report = Report.find(params[:id])
    # @company = Company.find(params[:company_id])
    authorize @report
  end

  def update
    @report = Report.find(params[:id])
    # @company = Company.find(params[:company_id])
    authorize @report
    if @report.update(report_params)
      redirect_to action_plan_path(@company, @report)
    else
      render :edit
    end
  end

  def action_plan
    @report = Report.find(params[:id])
    authorize @report
    @company = @report.company
    @report_questions = @report.report_questions.select do |question|
      question if question.answer == false && question.fault.present?
    end
  end

  private

  # def report_params
  #   params.require(:report).permit(
  #     :premises_name,
  #     :street_address,
  #     :city, :postcode,
  #     :telephone_number,
  #     :date_report_completed,
  #     :construction_details,
  #     :number_of_floors,
  #     :floor_area,
  #     photos: []
  #   )
  # end

  def report_params
    params.require(:report).permit(
      :premises_name,
      :street_address,
      :city, :postcode,
      :telephone_number,
      :date_report_completed,
      :construction_details,
      :number_of_floors,
      :floor_area,
      photos: [],
      report_questions_attributes: [:id, :answer, :fault, :recommendation, :date, :priority, :question_id]
    )
  end

  def set_company
    @company = Company.find(params[:company_id])
  end
end
