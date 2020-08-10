class AddTitleAndBodyToBook < ActiveRecord::Migration[5.2]
  def change
    add_column :books, :Title, :string
    add_column :books, :Body, :text
  end
end
