require 'uri'
class QuestionsController < ApplicationController
    def box
        @check = false
        @id = params[:id]
        q = Question.where(uname: @id)
        if(q.empty?) then
            @check = true
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
