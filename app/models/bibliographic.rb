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
require 'bibtex'
class Bibliographic < ActiveRecord::Base
	scope :waiting, -> {where(states: 'waiting') }
	scope :confirmed, -> {where(states: 'confirmed') }
	scope :reject, -> {where(states: 'reject') }

	belongs_to :user
	has_one :entity

	#def month_enum
	#	{'jan': 1, 'feb': 2}
	#end

	#def month_name_to_int(name)
	#	month_enum[name]
	#end


	def parsed_by_bit(bit)

		b = BibTeX.parse(bit.strip)
		the_hash = b.to_hash[:bibliography].first
		if the_hash[:year].present?
			the_year = Time.new(the_hash[:year]).to_datetime
		end

		Bibliographic.new(	title: strip_bracket(the_hash[:title]), 
							author: strip_bracket(the_hash[:author]), 
							publisher: strip_bracket(the_hash[:publisher]), 
							year: the_year)
	end

	def strip_bracket(item)
		tmp = item.sub('{', '')
		tmp = tmp.sub('}', '')
		tmp
	end

end
