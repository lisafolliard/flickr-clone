class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.column :name, :string
      t.column :user_id, :integer
      t.column :photo_id, :integer

      t.timestamps
    end
  end
end
