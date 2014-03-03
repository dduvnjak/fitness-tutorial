class ArticlesController < ApplicationController

	def index
		
	end

	def create
		article = Article.create(header: params[:header], 
														 content: params[:content], 
														 publish_date: DateTime.now, 
														 user_id: @user.id)
    redirect_to articles_path()
	end

	def update
		article = Article.find(params[:id])

    article.header = params[:header]
    article.content = params[:content]

    article.save
    redirect_to articles_path  
	end

	def destroy
		article = Article.find(params[:id])
    article.destroy
    redirect_to articles_path
	end

end