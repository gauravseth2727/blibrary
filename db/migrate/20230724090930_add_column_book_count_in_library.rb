class AddColumnBookCountInLibrary < ActiveRecord::Migration[6.1]
  def change
  	add_column :books, :book_count, :integer
  	add_column :books, :max_book_count, :integer
  	add_column :libraries, :max_book_count, :integer
  end
end
