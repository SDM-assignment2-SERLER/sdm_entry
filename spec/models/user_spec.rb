# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :inet
#  last_sign_in_ip        :inet
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  role                   :string           default("user")
#

require 'rails_helper'
describe User, type: :model do


	it 'should create bibliographic' do
		b = Bibliographic.create(title: 'test', author: 'me')
		expect(b.title).to eql('test')
		expect(b.author).to eql('me')
		expect(b.states).to eql('waiting')
		expect(b.persisted?).to be_truthy

	    user = FactoryGirl.create(:user)
	    user.bibliographics << b

	    expect(user.bibliographics.length).to eql(1)
	end
	
end
