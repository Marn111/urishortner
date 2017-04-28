class AddColumnIntoVisitsTbl1 < ActiveRecord::Migration
  def change
  	add_column :visits, :url_id, :integer
  end
end
