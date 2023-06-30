class CompaniesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_company, only: [:show, :edit, :update, :destroy]

  def index
    @companies = policy_scope(Company)
    @companies = Company.all unless @companies

    @markers = @companies.geocoded.map do |company|
      {
        lat: company.latitude,
        lng: company.longitude
      }
    end


  end

  def show
    authorize(@company)
    @markers = [{
      lat: @company.latitude,
      lng: @company.longitude
    }]
  end

  def new
    @company = Company.new
    authorize @company
  end

  def create
    @company = Company.new(company_params)
    @company.inspector_id = current_user.id
    # @company.user_id = current_user.id
    @client = User.where(client_params).first
    @company.client_id = @client.id if @client.present?
    authorize @company
    respond_to do |format|
      if @company.save
        format.html { redirect_to company_path(@company) }
        format.json # Follow the classic Rails flow and look for a create.json view
      else
        format.html { render "companies/new", status: :unprocessable_entity }
        format.json # Follow the classic Rails flow and look for a create.json view
      end
    end
  end

  def edit
    authorize(@company)
  end

  def update
    authorize(@company)
    if @company.update(company_params)
      redirect_to company_path(@company)
    else
      render :edit
    end
  end

  def destroy
    authorize @company
    if @company.destroy
      redirect_to companies_path, status: :see_other
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def company_params
    params.require(:company).permit(:name, :address, :telephone_number, :email_address)
  end

  def client_params
    params.require(:company).permit(:email)
  end

  def set_company
    @company = Company.find(params[:id])
  end
end
