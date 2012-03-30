class Subscription < ActiveRecord::Base
  validates :email, :format => { :with => /^([^@\s]+)@((?:[-a-z0-9A-Z]+\.)+[a-zA-Z]{2,})$/ }
end
