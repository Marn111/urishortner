class CreateUrls < ActiveRecord::Migration
  def change
    create_table :urls do |t|
      t.string :full_url
      t.string :full_url_hash
      t.string :short_url

      t.timestamps null: false
    end
  end
end
