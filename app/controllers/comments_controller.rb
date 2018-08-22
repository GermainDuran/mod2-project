class CommentsController < ApplicationController

  def create
    @comment = Comment.create comment_params
    byebug
    redirect_to phrase_path @comment.phrase
  end

  private

    def set_comment

    end

    def comment_params
      params.require(:comment).permit(:content,:user_id,:phrase_id)
    end
end
