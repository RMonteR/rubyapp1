class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :product

  validates :body, presence: true
  # validates :rating, numericality: { only_integer: true }
  # the 2 following validations are not necessary in ruby 5
  # validates :user, presence: true
  # validates :product, presence: true


  scope :rating_desc, -> { order(rating: :desc) }
  scope :rating_asc, -> { order(rating: :asc) }
  scope :created_at, -> { order(created_at: :desc) }

end
