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

  def update
    @report = Report.find(params[:id])
    @company = Company.find(params[:company_id])
    authorize @report
    if @report.update(report_params)
      redirect_to company_report_path(@company, @report)
    else
      render :edit
    end
  end

  private

  def report_params
    params.require(:report).permit(:premises_name, :street_address, :city, :postcode, :telephone_number, :date_report_completed)
  end
end
