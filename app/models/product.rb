class Product < ApplicationRecord
  has_many :orders
  has_many :comments

  def self.search(search_term)
    if Rails.env == "development"
      name_env = "name LIKE ?"
    else
      name_env = "name ilike ?"
    end

    Product.where(name_env, "%#{search_term}%")
  end

  def highest_rating_comment
    comments.rating_desc.first
  end

  def lowest_rating_comment
    comments.rating_asc.first
  end

  def average_rating
    comments.average(:rating).to_f
  end
  
  def latest_comment
    comments.created_at.first
  end

end
