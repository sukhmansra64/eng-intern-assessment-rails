class Article < ApplicationRecord
    validates :title, presence: true
    validates :author, presence: true
    validates :content, presence: true
  def self.search(search)
    if search
      @articles = self.where("title LIKE :q or author LIKE :q or content LIKE :q", q: "%#{search}%")
    else
      @articles = self.all
    end
  end
end
