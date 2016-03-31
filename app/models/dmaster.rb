class Dmaster < ActiveRecord::Base
  # You might want to think about the Dmaster and Campaigns being many to many.
  # Or perhaps you might want a User model in this case with different roles.
  # There are a few ways to do this, but it would be a many to many relationship
  
  belongs_to :campaign
end
