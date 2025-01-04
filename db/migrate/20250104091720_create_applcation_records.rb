class CreateApplcationRecords < ActiveRecord::Migration[8.0]
  def change
    create_table :applcation_records do |t|
      t.timestamps
    end
  end
end
