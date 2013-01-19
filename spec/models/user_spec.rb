require 'spec_helper'

describe User do

  let(:user) { FactoryGirl.create(:user) }

  subject { user }
  
  it { should be_valid }

  it { should respond_to(:name) }
  it { should respond_to(:email) }
  it { should respond_to(:password_digest) }
  it { should respond_to(:password) }
  it { should respond_to(:password_confirmation) }
     
  it { should validate_uniqueness_of(:email) }
  it { should ensure_length_of(:name).is_at_least(1)} 
  it { should ensure_length_of(:name).is_at_most(30)}
  it { should ensure_length_of(:email).is_at_least(1)} 
  it { should ensure_length_of(:email).is_at_most(100)}
  
  describe "when password is not present" do
    subject { FactoryGirl.build(:user, password: " ", password_confirmation: " ")}
    it { should_not be_valid }
  end
  describe "when password doesn't match confirmation" do
    subject { FactoryGirl.build(:user, password: "foobar", password_confirmation: "mismatch")}
    it { should_not be_valid }
  end

  it { should respond_to(:authenticate) }
  describe "return value of authenticate method" do
    before { user.save }
    let(:found_user) { User.find_by_email(user.email) }

    describe "with valid password" do
      it { should == found_user.authenticate(user.password) }
    end

    describe "with invalid password" do
      let(:user_for_invalid_password) { found_user.authenticate("invalid") }

      it { should_not == user_for_invalid_password }
      specify { user_for_invalid_password.should be_false }
    end
  end
  
end