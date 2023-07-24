class LibrariesController < ApplicationController
	def index
		render json: Library.includes(:books).all.to_json(include: [:books] )
	end

	def checked_out_books
		render json: Library.joins(:books).where('books.user_id is null').to_json(include: [:books] )
	end

	def available_books
		render json: Library.joins(:books).where('books.user_id is not null').to_json(include: [:books] )
	end
end
