class AddSlugToIncidents < ActiveRecord::Migration[6.1]
  def change
    add_column :incidents, :slug, :string
    add_index :incidents, :slug, unique: true
  end
end
