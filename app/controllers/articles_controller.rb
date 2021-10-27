class ArticlesController < ApplicationController
    def index 
        render :index, status: 200
    end
end
