class Word < ApplicationRecord
  has_many :synonym_words, class_name: "SynonymWord", foreign_key: "original_id", dependent: :destroy
  has_many :originals, through: :synonym_words
  has_many :similars, through: :synonym_words

  validates :name, presence: true
end
