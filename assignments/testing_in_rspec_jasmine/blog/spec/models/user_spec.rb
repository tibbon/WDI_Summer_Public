require 'spec_helper'

describe User do
  describe "mass assignment" do
  	let(:user) { FactoryGirl.create :user }
  	it { should allow_mass_assignment_of :email }
  	it { should allow_mass_assignment_of :password }
  	it { should allow_mass_assignment_of :password_confirmation }
  	it { should allow_mass_assignment_of :remember_me }
  end
end
