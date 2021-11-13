class DecorsController < ApplicationController
  before_action :set_decor, except: [:index, :new, :create]
  # /decors
  def index
    @decors = Decor.all
  end

  # /decors/new
  def new
    @decor = Decor.new
  end

  # /decors
  def create
    @decor = Decor.new(decor_params)
    @decor.user = current_user

    if @decor.save
      redirect_to decors_path, notice: 'Le décor a été créé'
    else
      render :new
    end
  end

  def show
  end

  # /decors/:id/edit
  def edit
  end

  def update
    if @decor.update(decor_params)
      redirect_to @decor, notice: 'Bravo'
    else
      render :edit
    end
  end

  def destroy
    @decor.destroy
    redirect_to decors_path, notice: 'Décor supprimé'
  end

  private

  def decor_params
    params.require(:decor).permit(:title, :category, :luminosity, :decor_exposition, :extra, :address, :size, :capacity, :price, photos: [])
  end

  def set_decor
    @decor = Decor.find(params[:id])
  end
end
