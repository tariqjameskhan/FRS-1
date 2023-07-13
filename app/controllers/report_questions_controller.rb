class ReportQuestionsController < ApplicationController
  def edit
    @report_question = ReportQuestion.find(params[:id])
    authorize @report_question
  end

  def update
    @report_question = ReportQuestion.find(params[:id])
    @company = Company.find(params[:company_id])
    @report = Report.find(params[:report_id])
    authorize @report_question
    if @report_question.update(report_question_params)
      redirect_to action_plan_path(@company, @report)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def show
    @report = Report.find(params[:id])
    # @report_question = @report.report_questions.find_by(id: params[:question_id])
  end

  private

  def report_question_params
    params.require(:report_question).permit(:answer, :fault, :recommendation, :priority, :date, photos: [])
  end
end
