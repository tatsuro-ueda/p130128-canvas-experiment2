class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :imageType
      t.string :path

      t.timestamps
    end
  end
end
