# frozen_string_literal: true
class User < ActiveRecord::Base
  include Authentication
  has_many :colors, dependent: :destroy
end
