require 'spec_helper'

describe Post do
  describe "mass assignment" do
  	let(:post) { FactoryGirl.create :post }
  	it { should allow_mass_assignment_of :title }
  	it { should allow_mass_assignment_of :body }
  end
end
