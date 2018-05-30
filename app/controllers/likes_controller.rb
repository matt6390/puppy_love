class LikesController < ApplicationController

  def create
    @like = Like.new(
                      profile_id: params[:profile_id]
                    )

    if @like.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @like.errors.full_messages}, status: :unprocessable_entity
    end
  end



end
