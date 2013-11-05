class Link < ActiveRecord::Base
  attr_accessible :title, :url

  has_many :comments, as: :commentable 
  has_many :votes, as: :votable
  belongs_to :user

  validates_presence_of :url

end
