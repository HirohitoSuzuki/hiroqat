class QuestionsController < ApplicationController
    def box
        @questions = Question.all
    end

    def new
    end

    def create
        Question.create(que_params)
        redirect_to :action => "new"
    end

    def que_params
        params.require(:question).permit(:uname, :content)
    end


end
