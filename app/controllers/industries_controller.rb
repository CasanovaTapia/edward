class IndustriesController < ApplicationController
  before_action :set_industry, only: [:show, :edit, :update, :destroy]

  def index
    @industries = Industry.all
    authorize @industries
  end

  def show
    authorize @industry
  end

  def new
    @industry = Industry.new
    authorize @industry
  end

  def edit
        authorize @industry
  end

  def create
    @industry = Industry.new(industry_params)
    authorize @industry
    @industry.save
  end

  def update
    @industry.update(industry_params)
    authorize @industry
  end

  def destroy
    authorize @industry
    @industry.destroy
    respond_to do |format|
      format.html { redirect_to industries_url, notice: 'Industry was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_industry
      @industry = Industry.find(params[:id])
    end

    def industry_params
      params.require(:industry).permit(:title)
    end
end
