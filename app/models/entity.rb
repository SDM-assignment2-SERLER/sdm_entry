class Entity < ActiveRecord::Base
	belongs_to :bibliographic
	has_and_belongs_to_many :research_methods	
	has_and_belongs_to_many :research_participants
	has_and_belongs_to_many :evidence_methods
	has_and_belongs_to_many :methodologies
end
