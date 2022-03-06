class CreateIncidents < ActiveRecord::Migration[6.1]
  def change
    create_table :incidents do |t|
      t.string :subject
      t.string :description
      t.date :incident_date

      t.timestamps
    end
  end
end
