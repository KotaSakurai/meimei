class SynonymWordsController < ApplicationController
  def new
    @synonym_word = SynonymWord.new
  end

  def create
    @synonym_word = SynonymWord.new(synonym_word_params.merge(original_id: params[:word_id]))
    if @synonym_word.save
      redirect_to root_path
    end
  end

  private

    def synonym_word_params
      params.require(:synonym_word).permit(:similar_id)
    end
end
