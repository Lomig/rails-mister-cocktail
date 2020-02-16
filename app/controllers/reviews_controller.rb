# frozen_string_literal: true

##
# Reviews Controller
class ReviewsController < ApplicationController
  def create
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = dose.new
    @review = Review.new(review_params)
    @review.cocktail = @cocktail
    return render "cocktails/show" unless @review.save

    redirect_to @cocktail
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
