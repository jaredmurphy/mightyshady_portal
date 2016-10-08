class BandsController < ApplicationController
  def index
    @bands = Band.all
    render json: @bands
  end

  def show
    @band = Band.find_by(id: params[:id])
    render json: @band
  end

  def create
    @band = Band.new(band_params)

    if @band.save
      render json: @band, status: :created
    else
      render json: @band.errors, status: :unprocessable_entity
    end
  end

  def edit
    @band = Band.find_by(id: params[:id])
  end

  def update
    if @band.update(band_params)
      render json: @band, status: :updated
    else
      render json: @band.errors, status: :unprocessable_entity
    end
  end

  private
    def band_params
      params.require(:band).permit(:name, :city, :state, :genre)
    end
end
