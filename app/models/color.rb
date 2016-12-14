class Color < ActiveRecord::Base
  belongs_to :user
  validates :favorite, presence: true
end
