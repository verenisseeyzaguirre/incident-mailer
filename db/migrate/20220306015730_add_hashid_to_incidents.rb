class AddHashidToIncidents < ActiveRecord::Migration[6.1]
  def change
    add_column :incidents, :hashid, :string
  end
end
