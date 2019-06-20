class QuestionController < ApplicationController
    def box
        @questions = Question.all
    end
end
