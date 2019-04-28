class Post < ApplicationRecord

  mount_uploader :image, ImageUploader

  belongs_to :user

  has_many :comments

  validates :title, presence: true, length: {minimum: 5}

  public def short_body(body)
    body = "edited"
  end

end
