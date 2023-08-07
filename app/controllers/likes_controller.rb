
class likesController < ApplicationController
    

  def create
  @likes = Like.new(user_id: @current_user.id, product_id: params[:product_id])
  @likes.save
  #redirect_to("/posts/#{params[:post_id]}")
  end




  def destroy

  end





  end
  