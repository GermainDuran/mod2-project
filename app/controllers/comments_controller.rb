class CommentsController < ApplicationController

  def create
    @comment = Comment.new comment_params
    if !@comment.save
      flash[:message] = @comment.errors.full_messages.first
    end
    redirect_to phrase_path @comment.phrase
  end

  private

    def set_comment

    end

    def comment_params
      params.require(:comment).permit(:content,:user_id,:phrase_id)
    end
end
