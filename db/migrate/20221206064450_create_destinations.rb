class CreateDestinations < ActiveRecord::Migration[7.0]
  def change
    create_table :destinations do |t|
      t.string :title
      t.string :image_url
      t.string :site_url
      t.string :description
      t.integer :user_id

      t.timestamps
    end
  end
end
