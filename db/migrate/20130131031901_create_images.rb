class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :type
      t.string :path

      t.timestamps
    end
  end
end
