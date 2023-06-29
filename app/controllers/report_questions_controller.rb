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
      redirect_to company_report_path(@company, @report)
    else
      render :edit
    end
  end

  private

  def report_question_params
    params.require(:report_question).permit(:answer, :fault, :recommendation, :priority, :date)
  end
end
