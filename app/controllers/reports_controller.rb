class ReportsController < ApplicationController
  def show
    @report = Report.find(params[:company_id])
    authorize @report
  end

  def edit
    @report = Report.find(params[:company_id])
    @company = Company.find(params[:id])
    authorize @report
  end
end
