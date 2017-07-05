class Reply < ApplicationRecord
  validates_presence_of :user_id, :text
end
