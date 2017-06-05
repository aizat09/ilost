class CreateUserProvider < ActiveRecord::Migration[5.0]
  def change
    create_table :user_providers do |t|
      t.string :uid
      t.string :provider
      t.references :user, foreign_key: true, index: true

      t.timestamps
    end
  end
end
