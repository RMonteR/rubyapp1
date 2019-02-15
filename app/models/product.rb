class Product < ApplicationRecord

  def self.search(search_term)
    if Rails.env == "development"
      name_env = "name LIKE ?"
    else
      name_env = "name ilike ?"
    end

    Product.where(name_env, "%#{search_term}%")
  end
end
