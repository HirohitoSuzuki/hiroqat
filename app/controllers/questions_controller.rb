class QuestionsController < ApplicationController
    def box
        @questions = Question.all
    end
end
