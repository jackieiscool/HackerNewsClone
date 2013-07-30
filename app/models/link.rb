class Link < ActiveRecord::Base
  attr_accessible :title, :url#, :comments_attributes

  has_many :comments, as: :commentable 
  has_many :votes, as: :votable

  validates_presence_of :url

  # accepts_nested_attributes_for :comments
end
