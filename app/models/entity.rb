# == Schema Information
#
# Table name: entities
#
#  id                  :integer          not null, primary key
#  research_aim        :string
#  research_metric     :string
#  evidence_benefit    :string
#  evidence_context    :string
#  evidence_result     :string
#  evidence_intergrity :string
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  bibliographic_id    :integer
#

class Entity < ActiveRecord::Base
	belongs_to :bibliographic
	has_and_belongs_to_many :research_methods	
	has_and_belongs_to_many :research_participants
	has_and_belongs_to_many :evidence_methods
	has_and_belongs_to_many :methodologies
end
