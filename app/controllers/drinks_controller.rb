class DrinksController < ApplicationController
  def index
    render 'index.json.jbuilder'
  end

  def show
    render 'show.json.jbuilder'
  end
  
end
