require 'spec_helper'

describe Rapidfire::QuestionGroup do
  describe "Validations" do
    it { should validate_presence_of(:name) }
  end

  describe "Associations" do
    it { should have_many(:questions) }
  end

  describe "positions" do

    let(:question_group) { FactoryGirl.create(:question_group, name: "Question Set") }

    it "be a sorted array of all questions' positions" do
      (1..5).each do |n|
        FactoryGirl.create(:q_radio, question_group: question_group, question_text: "Radio Question #{n}", position: n)
      end
      question_group.positions.should eq [1, 2, 3, 4, 5]
    end
  end
end
