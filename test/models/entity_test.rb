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

require 'test_helper'

class EntityTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
