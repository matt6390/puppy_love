class UsersController < ApplicationController
  def index
    @users = User.all

    render 'index.json.jbuilder'
  end

  def show
    @user = User.find(current_user.id)

    render 'show.json.jbuilder'
  end

  def create
    @user = User.new(
                      first_name: params[:first_name],
                      last_name: params[:last_name],
                      email: params[:email],
                      password: params[:password],
                      password_confirmation: params[:password_confirmation],
                      gender: params[:gender],
                      phone_number: params[:phone_number],
                      zipcode: params[:zipcode]
                    )
    if @user.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @user.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def update
    @user = User.find(params[:id])

    @user.first_name = params[:first_name] || @user.first_name    
    @user.last_name = params[:last_name] || @user.last_name    
    @user.email = params[:email] || @user.email   
    @user.password = params[:password] || @user.password
    @user.password_confirmation = params[:password_confirmation] || @user.password_confirmation
    @user.gender = params[:gender] || @user.gender
    @user.phone_number = params[:phone_number] || @user.phone_number
    @user.zipcode = params[:zipcode] || @user.zipcode

    if @user.save
      render json: {message: "User Updated succesfully"}
    else
      render json: {errors: @user.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    render json: {message: "User account succesfully removed"}
  end

end







