class ProfilesController < ApplicationController
  # before_action :set_profile, except: [:new, :create, :index]

  def new
    @profile = Profile.new
  end

  def create
    @profile = Profile.new(profile_params)
    @profile.user = current_user

    if @profile.save
      redirect_to profile_path(@profile), notice: 'Le profil a été créé'
    else
      render :new
    end
  end

  def index
    @profiles = Profile.all
  end

  def show
    @profile = Profile.find(params[:id])
  end

  def edit
    @profile.user = current_user
  end

  def update
    @profile.user = current_user

    if @profile.update(profile_params)
      redirect_to @profile, notice: 'Bravo'
    else
      render :edit
    end
  end

  def destroy
    @profile.destroy
    redirect_to profile_path, notice: 'Profil supprimé'
  end

  private

  def profile_params
    params.require(:profile).permit(:first_name, :last_name, :description, :avatar)
  end

  # def set_profile
  #   @profile = Profile.find(params[:id])
  # end
end
