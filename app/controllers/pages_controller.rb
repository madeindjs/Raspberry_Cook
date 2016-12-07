# 
class PagesController < ApplicationController
	before_filter :authenticate, :only =>  [:feeds]
	
	# GET /home
	# GET /pages/home
	# a web page to present Raspberry Cook
	def home
		@description = 'Des recettes. Partout. Tout plein!'
		@recipes = Recipe.last(3).reverse
	end


	# GET /credits
	# GET /pages/credits
	# a web page to thank all contributors on this amazing project
	def credits
		@title = 'credits'
		@description = 'Un grand merci à toi, lecteur.'
	end


	# GET /feeds
	# GET /pages/feeds
	# allow usser to consult what he missed on Raspberry Cook
	def feeds
		@title = 'actualités'
		@description = 'Tout ce que vous n\'avez pas ecore vu'
		@recipes_feeds = Recipe.unread_by(current_user).paginate(:page => params[:page]).order('id DESC')
		@unread_comments = Comment.unread_by(current_user)
	end
	
end
