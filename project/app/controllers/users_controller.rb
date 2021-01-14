class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  # GET /users
  # GET /users.json
  def index
    @users = User.all
  end

  # GET /users/1
  # GET /users/1.json
  def show
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def login
  end

  def do_login
    user = User.where(user_name: params[:user_name], password: params[:password]).first
    if user
      session[:current_user_id] = user.user_id
        if user.user_name == "Customer1"
            user.user_role = 1
        elsif user.user_name == "Customer2"
            user.user_role = 1
        else
            user.user_role = 2
        end
        user.save
      redirect_to products_url, notice: 'User login successfully.'
      TransactionItem.all.each {|transaction_item|transaction_item.destroy}
      CartItem.all.each {|cart_item|cart_item.destroy}
    else
      redirect_to login_users_url, alert: 'Wrong username or password!'
    end
  end

  def logout
    session.delete(:current_user_id)
    redirect_to login_users_url, alert: 'User logout successfully!'
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_params
      params.require(:user).permit(:user_id, :user_name, :password, :user_role)
    end
end
