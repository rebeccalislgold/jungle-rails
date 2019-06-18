require 'rails_helper'

RSpec.describe User, type: :model do

  let(:name) {'Jane'}
  let(:email) {'janedoe@test.com'}
  let(:password) {'1234'}
  let(:password_confirmation) {'1234'}
  let(:user1) {User.new(name: name, email: email, password: password, password_confirmation: password_confirmation)}

  context "when password does not equal password confirmation" do

    it "should not be valid" do
      user1.password_confirmation = '123'
      expect(user1).to_not be_valid
    end

  end

  context "when email is already taken" do

    it "should not be valid" do
      user1.save
      user2 = User.create(name: 'Joe', email: 'janedoe@test.com', password: '4321', password_confirmation: '4321')
      expect(user2).to_not be_valid
    end

  end

end
