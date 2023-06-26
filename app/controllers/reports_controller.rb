class ReportsController < ApplicationController
  def show
    @report = Report.find(params[:id])
    authorize @report
  end

  def edit
    @report = Report.find(params[:id])
    @company = Company.find(params[:company_id])
    authorize @report
  end
end
