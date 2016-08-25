class Question < ApplicationRecord
  include Filterable

  belongs_to :user
  has_many :answers
  belongs_to :topic

  scope :topic, -> (topic_id) { where topic_id: topic_id }

  def self.search(search)
    where("title ILIKE ? ", "%#{search}%")
  end
end
