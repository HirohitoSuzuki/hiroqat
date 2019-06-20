class QuestionsController < ApplicationController
    def box
        @questions = Question.all
    end

    def new
    end

    def create
        question = Question.create(que_param)


end
