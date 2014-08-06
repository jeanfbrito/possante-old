class CreateDocuments < ActiveRecord::Migration
  def change
    create_table :documents do |t|
      t.integer :maintenance_id

      t.string :title
      t.text   :description

      t.string  :file_uid
      t.string  :file_name

      t.timestamps
    end
  end
end
