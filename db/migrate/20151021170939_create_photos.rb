class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.column :caption, :string
      t.column :image, :string


      t.timestamps
    end
  end
end
