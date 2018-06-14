class WordsController < ApplicationController
  def index
  end

  def show
  end

  def new
    @word = Word.new
  end

  def create
    @word = Word.new(word_params)

    if @word.save
      redirect_to word_path
    end
  end

  private

    def word_params
        params.require(:word).permit(:word)
    end
end
