class ArticlesController < ApplicationController
    def index 
        render :index, status: 200
    end

    def new 
        @article = Article.new
        render :new, status: 200
    end
end
