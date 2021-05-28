class WinesController < ApplicationController
  def index
  end

  def new
    @wine = Wine.new
  end

  def create
    @wine = WineForm.new(wine_params)
    
    binding.pry
    
    if @wine.save
      flash[:success] = "Object successfully created"
      redirect_to new_wine_path
    else
      flash[:error] = "Something went wrong"
      render :new
    end
  end

  private

  def wine_params
    params.require(:wine_form).permit(:grape_name, :name, :name_kana)
  end
  
  
end
