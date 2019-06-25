require 'uri'
class QuestionsController < ApplicationController
    def box
        @id = params[:id]
        q = Question.where(uname: @id)
        if(q.empty?) then
            render "que_empty"
        else
            @questions = q
        end
    end

    def new
        @@uname = params[:id]
        @uname = @@uname
        # render plain: "#{@uname}さんの投稿ページです"
    end

    def top
    end

    def create
        @q = Question.new(que_params)
        if @q.save then
            flash[:success] = "#{@@uname}さんに質問を投稿しました。"
            redirect_to :action => "top"
        else
            render("posts/new/#{@@uname}")
        end
    end

    def newbox
        redirect_to "/box/#{params[:un]}"
    end

    private

    def que_params
        un = { :uname => @@uname }
        params.require(:question).permit(:content).merge(un)
        # params[:uname]=@uname
    end

end
