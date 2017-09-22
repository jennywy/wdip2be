# frozen_string_literal: true
class User < ApplicationRecord
  include Authentication
  has_many :examples
  has_many :languages, through: :userlanguages
  has_many :userlanguages
end
