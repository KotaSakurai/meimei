class SynonymWord < ApplicationRecord
  belongs_to :original, class_name: "Word"
  belongs_to :similar, class_name: "Word"
end
