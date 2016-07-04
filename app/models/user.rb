class User < ActiveRecord::Base
  #validates :name, :city, :country, :email, :age, presence: true
  validates :website, format: { with: /\A(http|https):\/\/[a-z0-9]+([\.]{1}[a-z0-9]+)*\.[a-z]{2,5}\z/ }
end
