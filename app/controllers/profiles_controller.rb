class ProfilesController < ApplicationController
  before_action :set_profile, only: [:show, :edit, :update, :destroy, :tag]

  def index
    if params[:query].present?
      @profiles = Profile.search(params[:query])
    else
        @profiles = Profile.all
    end
    authorize @profiles
  end

  def show
    authorize @profile
  end

  def new
    @profile = Profile.new
    authorize @profile
  end

  def edit
    authorize @profile
  end

  def tag
    authorize @profile
  end

  def create
    @profile = Profile.new(profile_params)
    authorize @profile

    respond_to do |format|
      if @profile.save
        format.html { redirect_to @profile, notice: 'An Edwardian was successfully created.' }
        format.json { render :show, status: :created, location: @profile }
      else
        format.html { render :new }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    authorize @profile
    respond_to do |format|
      if @profile.update(profile_params)
        format.html { redirect_to :back, notice: 'An Edwardian was successfully updated.' }
        format.json { render :show, status: :created, location: @profile }
      else
        format.html { render :new }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    authorize @profile
    @profile.destroy
    respond_to do |format|
      format.html { redirect_to profiles_url, notice: 'Edwardian was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_profile
      @profile = Profile.find(params[:id])
    end

    def profile_params
      params.require(:profile).permit(:name, :tagline, :location, :bio, :website, :curr_project, :industry_id, :avatar, :twitter, :instagram, :facebook, :imdb, :portfolio)
    end
end
