class PurchaseController < ApplicationController
    def top
      @cart_product = Cart.all.order(created_at: :desc)

    end
  
    def create

      if @current_user == nil
      @purchase=Purchase.new(name: params[:name], address: params[:address], email: params[:email])
      @purchase.save
      redirect_to("/purchase/deal")
     else
      @error_message="氏名、メールアドレス、住所を正確に入力してください"
      redirect_to("/purchase/top")
     end

    end


    def deal
      @cart_product = Cart.all.order(created_at: :desc)
      @deal = Deal.new

    end
  

    def credit
      
      @credit=Deal.new(due_number: params[:due_number], card_name: params[:card_name], card_password: params[:card_password], card_number: params[:card_number])
      if @credit.save
      redirect_to("/purchase/check")
      else
        redirect_to("/purchase/deal")
    
    end
  end
   
            
  def check
      @cart_product = Cart.all.order(created_at: :desc)
      @purchase =Purchase.find_by(id: 1)
      @deal =Deal.find_by(id: 1)
    end
  
  
    def action
      Cart.destroy_all

      Purchase.destroy_all

      Deal.destroy_all
     
      if Deal.exists? and Purchase.exists?
        redirect_to("/")
        flash[:notice]="エラーが発生しました"

      else
      redirect_to("/")
      flash[:notice]="購入しました"

       
      end
    
    end
  
  
  end
  