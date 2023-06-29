class ReportsController < ApplicationController
  before_action :set_company, only: [:new, :create, :edit, :update]

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
      redirect_to company_report_path(@company, @report)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @report = Report.find(params[:id])
    authorize @report
    @report_questions = @report.report_questions
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
      redirect_to company_report_path(@company, @report)
    else
      render :edit
    end
  end

  private

  def report_params
    params.require(:report).permit(:premises_name, :street_address, :city, :postcode, :telephone_number, :date_report_completed, photos: [] )
  end

  def set_company
    @company = Company.find(params[:company_id])
  end
end
