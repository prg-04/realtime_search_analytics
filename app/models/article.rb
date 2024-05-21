# app/models/article.rb
class Article < ApplicationRecord
  def self.search(search)
    if search.present?
      where('LOWER(title) LIKE ?', "%#{search.downcase}%")
    else
      all
    end
  end
end
