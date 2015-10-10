# == Schema Information
#
# Table name: bibliographics
#
#  id         :integer          not null, primary key
#  title      :string
#  author     :string
#  year       :date
#  source     :string
#  book       :string
#  publisher  :string
#  doi        :string
#  number     :integer
#  page       :string
#  month      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  states     :string           default("waiting")
#  rating     :integer          default(0)
#  user_id    :integer
#

class Bibliographic < ActiveRecord::Base
	scope :waiting, -> {where(states: 'waiting') }
	scope :confirmed, -> {where(states: 'confirmed') }
	scope :reject, -> {where(states: 'reject') }

	belongs_to :user
	has_one :entity

end
