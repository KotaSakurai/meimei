class WordsController < ApplicationController
  def index
    @words = Word.all
  end

  def show
    @word = Word.find params[:id]
  end

  def new
    @word = Word.new
  end

  def create
    @word = Word.new(word_params)

    if @word.save
      redirect_to words_path
    end
  end

  private

    def word_params
      params.require(:word).permit(:name)
    end
end
