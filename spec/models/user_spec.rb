require 'rails_helper'

RSpec.describe User, type: :model do
  it 'first_name must be present' do
    u = User.new(first_name: "", last_name: "bar", password: "foobar", email: "foo@bar.com")
    expect(u).to be_invalid
  end

  it 'last_name must be present' do
    u = User.new(first_name: "foo", last_name: "", password: "foobar", email: "foo@bar.com")
    expect(u).to be_invalid
  end

  it 'password is to short(minimum 6 characters)' do
    u = User.new(first_name: "foo", last_name: "bar", password: "fobar", email: "foo@bar.com")
    expect(u).to be_invalid
  end

  it 'email must be uniqueness' do
    user1 = User.create(first_name: "foo", last_name: "bar", password: "foobar", email: "foo@bar.com")
    user2 = User.new(first_name: "foo", last_name: "bar", password: "foobar", email: "foo@bar.com")

    expect{user2.save!}.to raise_error(ActiveRecord::RecordInvalid)
  end

  it 'email must match format' do
    user1 = User.new(first_name: "foo", last_name: "bar", password: "fobar", email: "foobar.com")
    expect(user1.email).not_to match(/\w+@[a-zA-Z_]+?\.[a-zA-Z]{2,3}/)
  end

end
