require_relative 'spec_helper'
require_relative '../school'

describe School do
  let(:school) {School.new('Springfield Elementary')}

  describe ".new" do
    it "creates a School object" do
      expect(school).to_not eq nil
    end
    it "has no students" do
      expect(school.students.count).to eq 0
    end
  end

  describe "#name" do
    it "has a name" do
      expect(school.name).to eq 'Springfield Elementary'
    end
  end

  describe "#enroll_student" do
    it "create adds a student" do
      school.enroll_student('Bart Simpson', 4.0)
      expect(school.students['Bart Simpson']).to eq 4.0
      expect(school.students.count).to eq 1
    end
  end

  describe "#grade" do
    it "updates the gpa of a student" do
      school.enroll_student('Lisa Simpson', 4.0)
      school.grade('Lisa Simpson', 3.9)
      expect(school.students['Lisa Simpson']).to eq 3.9
    end
  end

  describe "#average_gpa" do
    it "returns average gpa of all students" do
      school.enroll_student('Lisa Simpson', 4.0)
      school.enroll_student('Bart Simpson', 3.0)
      school.enroll_student('Ralph Wiggum', 2.0)
      expect(school.average_gpa).to eq 3.0
    end
  end

  describe '#withdraw student' do
    it "removes a student from the school" do
      school.enroll_student('Lisa Simpson', 4.0)
      school.enroll_student('Ralph Wiggum', 2.0)
      school.withdraw_student('Ralph Wiggum')
      expect(school.average_gpa).to eq 4.0
      expect(school.students.count).to eq 1
    end
  end
end
