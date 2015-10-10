# == Schema Information
#
# Table name: research_participants
#
#  id         :integer          not null, primary key
#  name       :string
#  sort       :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class ResearchParticipant < ActiveRecord::Base
	has_and_belongs_to_many :entities
end
