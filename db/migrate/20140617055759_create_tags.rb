class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :name, index: true
      t.references :article, index: true

      t.timestamps

      create_join_table :articles, :tags
    end
  end
end
