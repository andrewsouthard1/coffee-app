class Api::V1::BeersController < ApplicationController
  def index 
    @beers = Beer.all
    render 'index.json.jbuilder'
  end

  def show
    @beer = Beer.find_by(id: params[:id])
    render 'show.json.jbuilder'
  end

  def create
    @beer = Beer.new(
      name: params[:name],
      hop: params[:hop],
      ibu: params[:ibu]
    )
    if @beer.save
      render 'show.json.jbuilder'
    else
      render json: {errors: "Didn't save"}, status: 420
    end
  end

  def update
    @beer = Beer.find_by(id: params[:id])
    @beer.update(
      name: params[:name],
      hop: params[:hop],
      ibu: params[:ibu]
    )
    render 'show.json.jbuilder'
  end

  def destroy
    @beer = Beer.find_by(id: params[:id])
    @beer.destroy
    render json: {message: "Entry deleted"}
  end
end
