class AddShowColumns< ActiveRecord::Migration[5.1]
  def change
    add_column(:shows, :category, :string)
  end
end
