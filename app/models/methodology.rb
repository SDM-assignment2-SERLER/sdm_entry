# == Schema Information
#
# Table name: methodologies
#
#  id         :integer          not null, primary key
#  name       :string
#  sort       :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  desc       :string
#

class Methodology < ActiveRecord::Base
	has_and_belongs_to_many :entities
end
