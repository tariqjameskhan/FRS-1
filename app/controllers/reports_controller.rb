class ReportsController < ApplicationController
  def show
    @report = Report.find(params[:company_id])
    authorize @report
  end
end
