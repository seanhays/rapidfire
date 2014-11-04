module Rapidfire
  class QuestionResultSerializer < ActiveModel::Serializer
    self.root = false

    attributes :question_type, :question_text, :question_render_type, :results

    def question_type
      object.question.type
    end

    def question_text
      object.question.question_text
    end

    def question_render_type
      object.question.render_type
    end
  end
end
