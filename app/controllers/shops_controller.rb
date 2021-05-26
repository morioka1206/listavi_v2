class ShopsController < ApplicationController
  def new
    @shop = Shop.new
  end
  
  def create
    @shop = User.new(user_params)
    if @shop.save
      redirect_to login_path
      flash[:notice] = 'ユーザーの作成に成功しました'
    else
      flash.now[:alert] = 'ユーザーの作成に失敗しました'
      render :new
    end
  end

  private

  def shop_params
    params.require(:shop).permit(:name, :email, :password, :password_confirmation)
  end
end
