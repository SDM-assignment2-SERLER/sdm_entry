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

require 'test_helper'

class BibliographicTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
