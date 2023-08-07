class CartsController < ApplicationController
  
  
  
  def top
    @cart_product = Cart.all.order(created_at: :desc)
  end


  def delete
    @cart = Cart.find_by(product_id: params[:id])
    
    if @cart 
      @cart.destroy
      flash[:notice] = "カートから商品を削除しました"
      redirect_to("/cart/top")  
    end
  end


end
