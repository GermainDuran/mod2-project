class RatingsController < ApplicationController
  def rate
    new_rating
    @phrase = Phrase.find params[:id]
    @rating.phrase = @phrase
    @rating.save
    redirect_to phrase_path @phrase
  end

  private

    def new_rating
      @rating = Rating.new rating_params
    end

    def rating_params
      params.require(:rating).permit(:rating,:user_id)
    end
end
