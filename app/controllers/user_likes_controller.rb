class UserLikesController < ApplicationController
  def create
    @user_like = UserLike.new(
                                user_id: params[:user_id],
                                like_id: params[:like_id]
                              )
    if @user_like.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @user_like.errors.full_messages}, status: :unprocessable_entity
    end
  end
end
