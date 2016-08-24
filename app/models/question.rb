class Question < ApplicationRecord

  belongs_to :user
  has_many :answers
  belongs_to :topic

  def self.search(search)
    where("title ILIKE ? ", "%#{search}%")
    where("body ILIKE ? ", "%#{search}%")
  end

end
