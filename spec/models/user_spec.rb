require 'spec_helper'

describe User do
  it { should validate_presence_of(:username) }
	it { should validate_presence_of(:email) }
	it { should validate_presence_of(:password) }

	it { should have_many :comments }
	it { should have_many :links }
	it { should have_many :votes }

	it { should respond_to(:name) }
  it { should respond_to(:email) }
  it { should respond_to(:password_digest) }
  it { should respond_to(:password) }
  it { should respond_to(:password_confirmation) }
end
