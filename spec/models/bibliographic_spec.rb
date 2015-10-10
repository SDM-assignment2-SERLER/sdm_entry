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

require 'rails_helper'
describe Bibliographic, type: :model do

	it 'should new valid bibliographic' do
		b = Bibliographic.new()
		expect(b).to be_valid
	end

	it 'should create bibliographic' do
		b = Bibliographic.create(title: 'test', author: 'me')
		expect(b.title).to eql('test')
		expect(b.author).to eql('me')
		expect(b.states).to eql('waiting')
		expect(b.persisted?).to be_truthy
	end

	it 'should create entity' do
		b = Bibliographic.create(title: 'test', author: 'me')
		expect(b.title).to eql('test')
		expect(b.author).to eql('me')
		expect(b.states).to eql('waiting')
		expect(b.persisted?).to be_truthy

		e = FactoryGirl.create(:e1)
		b.entity = e
		expect(b.entity.persisted?).to be_truthy
	end

	it 'should be only one entity' do
		b = Bibliographic.create(title: 'test', author: 'me')
		expect(b.title).to eql('test')
		expect(b.author).to eql('me')
		expect(b.states).to eql('waiting')
		expect(b.persisted?).to be_truthy

		e = FactoryGirl.create(:e1)
		b.entity = e
		expect(b.entity.persisted?).to be_truthy

		e2 = FactoryGirl.create(:e2)
		b.entity = e2
		expect(b.entity).to be_eql(e2)
	end
end
