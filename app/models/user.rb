class User < ActiveRecord::Base
  validates :name, presence: true
  #validates :name, :city, :country, length: {minimum: 2}
  validates :age, numericality: { only_integer: true}
  validates :email, format: { with: /\w+@\w+/ }, presence: true
  #validates :website, format: { with: /https?:\/\/\w+\.\w+/ }
  validates :website, format: { with: /\A(https?:\/\/).+\..+/ }
end
