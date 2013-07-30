class Vote < ActiveRecord::Base
  
	belongs_to :votable, polymorphic: true
	validates_presence_of :votable

end
