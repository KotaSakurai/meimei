class SynonymWords < ApplicationRecord
  belongs_to :original, class_name: "Words"
  belongs_to :similar, class_name: "Words"
end
