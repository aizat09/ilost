class AddDetailsToUserProvider < ActiveRecord::Migration[5.0]
  def change
    add_column :user_providers, :name, :string
  end
end
