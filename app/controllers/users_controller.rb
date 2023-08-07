class UsersController < ApplicationController
  before_action :ensure_correct_user, {only: [:show, :edit, :update]}
  before_action :forbid_login_user, {only: [:new, :create, :login_form, :login]}
  before_action :authenticate_user, {only: [:show]}

  def forbid_login_user
    if @current_user
      flash[:notice] = "すでにログインしています"
      redirect_to("/users/#{@current_user.id}")
    end
  end


  def authenticate_user
    if session[:user_id] == nil
      flash[:notice] = "ログインが必要です"
      redirect_to("/login")
    end
  end

  def ensure_correct_user
    if params[:id].to_i != @current_user.id
      flash[:notice] = "権限がありません"
      redirect_to("/")
    end
  end




    def show
      @user = User.find_by(id: params[:id])
    end
  
    def edit
      @user = User.find_by(id: params[:id])


    end

    def update
      @user = User.find_by(id: params[:id])
      @user.name = params[:name]
      @user.email = params[:email]
      @user.password = params[:password]

      if @user.save
        flash[:notice] = "プロフィールを編集しました"
        redirect_to("/users/#{@current_user.id}")

        else
          render("users/edit")
      end

    end





    def new
     @user =User.new
    
    
    end
  
  
    def create
      @user = User.new(
        name: params[:name],
        email: params[:email],
        password: params[:password]
      )
      if @user.save
        session[:user_id] = @user.id
        flash[:notice] = "ユーザー登録が完了しました"
        redirect_to("/products/top")
      else
        render("users/new")
      end
    end
  
    def login_form
    end
  
  
    def login
      @user = User.find_by(
        email: params[:email],
        password: params[:password]
      )
      if @user
        session[:user_id] = @user.id
        flash[:notice] = "ログインに成功しました"
        redirect_to("/products/top")
  
        else
          flash[:notice] = "ログインに失敗しました"
          @error_message = "メールアドレス,もしくはパスワードが異なります"
          @email = params[:email]
          @password = params[:password]
          render("users/login_form")
  
    end
  end
  
  
    def logout
      session[:user_id] = nil
      flash[:notice] = "ログアウトしました"
      redirect_to("/login")
  
    end
  
  
  
  
  
  
    
  end