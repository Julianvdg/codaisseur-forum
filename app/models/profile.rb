class Profile <  ActiveRecord::Base
  belongs_to :user

  def full_name
    self.first_name + " " + self.last_name
  end

  mount_uploader :avatar, ImageUploader

  def self.search(search)
    where("first_name ILIKE ? ", "%#{search}%")
  end

end
