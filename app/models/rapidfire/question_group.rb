module Rapidfire
  class QuestionGroup < ActiveRecord::Base
    has_many  :questions
    validates :name, :presence => true

    if Rails::VERSION::MAJOR == 3
      attr_accessible :name
    end

    def positions
      self.questions.inject([]) { |p, q| p << q.position }.sort
    end


  end
end
