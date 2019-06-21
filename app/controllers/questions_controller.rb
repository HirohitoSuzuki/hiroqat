class QuestionsController < ApplicationController
    def box
        q = Question.where(uname: params[:id])
        if(q.empty?) then
            render "que_empty"
        else
            @questions = q
        end
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

    def que_empty
    end


end
