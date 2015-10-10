# == Schema Information
#
# Table name: evidence_methods
#
#  id         :integer          not null, primary key
#  name       :string
#  sort       :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class EvidenceMethod < ActiveRecord::Base
	has_and_belongs_to_many :entity
end
