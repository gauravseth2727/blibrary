class Book < ApplicationRecord
	belongs_to :library
	belongs_to :user ,optional: true

	 validate :count_no_of_books
	 def count_no_of_books
	 	if book_count > max_book_count
		 	self.errors.add :book_count, "exceeded limit #{max_book_count}"
		 end
	 end

end
