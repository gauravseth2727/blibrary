class CreateTableBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :name
      t.references :library, foreign_key: true
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
