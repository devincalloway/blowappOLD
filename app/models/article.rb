class Article < ActiveRecord::Base
  validates_presence_of :title, :body
  validates_uniqueness_of :title
  
  acts_as_commentable
end