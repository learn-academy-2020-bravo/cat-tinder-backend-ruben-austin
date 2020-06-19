class AddColumnImagesToCats < ActiveRecord::Migration[6.0]
  def change
    add_column :cats, :images, :string
  end
end
