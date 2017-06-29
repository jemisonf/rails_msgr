class Post < ApplicationRecord
  # before_save :check_session_user_id
  validates_presence_of :title, :text
  belongs_to :user, optional: true
  # def valid?
  #  self.user_id = session[:user_id]
  #  super
  # end
end
