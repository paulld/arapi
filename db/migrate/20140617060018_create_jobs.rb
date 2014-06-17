class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.date :starts_on
      t.date :ends_on
      t.references :user, index: true
      t.references :duty, index: true

      t.timestamps
    end
  end
end
