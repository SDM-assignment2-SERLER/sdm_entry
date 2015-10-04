class Bibliographic < ActiveRecord::Base
	scope :waiting, -> {where(states: 'waiting') }
	scope :confirmed, -> {where(states: 'confirmed') }
	scope :reject, -> {where(states: 'reject') }

	belongs_to :user
	has_one :entity

end
