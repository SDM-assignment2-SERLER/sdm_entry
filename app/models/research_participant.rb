class ResearchParticipant < ActiveRecord::Base
	has_and_belongs_to_many :entities
end
