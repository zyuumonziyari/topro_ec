class ProductsController < ApplicationController
  
  before_action :set_current_product
  
  def set_current_product
    @current_product = Product.find_by(id: session[:product_id])
  end


  def top
    end
  
    def show
      @product = Product.find_by(id: params[:id])

      if @product
      session[:product_id] = @product.id
      end

    end

    def cart

      @cart =Cart.new(product_id: @current_product.id)

      if @cart.save
        flash[:notice]="カートに追加しました"
        redirect_to("/products/top")
      else
        flash[:notice] = "エラーが発生しました"
        redirect_to("/products/top")
    end

  end
  
  end

  