class Words < ApplicationRecord
  has_many :synonym_words, class_name: "SynonymWords", foreign_key: "similar_id", dependent: :destroy
  has_many :original, through: :synonym_words, source: :similar
end
