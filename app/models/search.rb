class Search < ApplicationRecord
  validates :query, presence: true, length: { minimum: 2, tokenizer: ->(str) { str.split(/\s+/) } }
end
