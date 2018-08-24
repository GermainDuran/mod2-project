class ApplicationController < ActionController::Base
  helper_method :uniq_phrases

  def uniq_phrases
    self.comments.map do |comment|
      comment.phrase
    end.uniq
  end


  def home

  end

  def current_user

  end


end
