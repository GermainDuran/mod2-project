class PhrasesController < ApplicationController
  before_action :set_phrase, only: [:new,:show,:edit,:update,:edit_state,:rate]
  def index
    @phrases = Phrase.all
  end

  def show
  end

  def new
  end

  def state_select
    @region = Region.find params[:region]
    render :new
  end

  def create
    @phrase = Phrase.new phrase_params(:content,:state_id,:user_id,:description,:area_or_city)
    if @phrase.save
      redirect_to phrase_path @phrase
    else
      redirect_to new_phrase_path
    end
  end

  def edit

  end

  def edit_state
    @region = Region.find params[:region]
    render :edit
  end

  def update

    if @phrase.update phrase_params(:content,:state_id,:user_id, :description,:area_or_city)
      redirect_to phrase_path @phrase
    else
      redirect_to edit_phrase_path @phrase
    end
  end

  def delete
    phrase = Phrase.find params[:id]
    phrase.destroy
    redirect_to
  end

  def search
    @query = params[:q]
    @terms = Phrase.all.select {|phrase| phrase.content.include?(@query)}
    render :search
  end

  def categorize
    @category = params[:category]
  end

  private

    def set_phrase
      if params[:id]
        @phrase = Phrase.find params[:id]
      else
        @phrase = Phrase.new
      end
    end

    def phrase_params(*args)
      params.require(:phrase).permit(*args)
    end
end
