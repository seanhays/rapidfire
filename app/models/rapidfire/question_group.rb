module Rapidfire
  class QuestionGroup < ActiveRecord::Base
    has_many  :questions
    has_many :answer_groups
    validates :name, :presence => true

    if Rails::VERSION::MAJOR == 3
      attr_accessible :name
    end

    def positions
      self.questions.inject([]) { |p, q| p << q.position }.sort
    end


  end
end
