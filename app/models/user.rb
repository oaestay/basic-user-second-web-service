class User < ApplicationRecord
  validates_presence_of :email, :image
end
