class Userlanguage < ApplicationRecord
  belongs_to :user
  belongs_to :language
  validates_uniqueness_of :language_id, scope: :user_id, :message => "You may already have this language. Please update instead"
end
