class CreateLocalItems < ActiveRecord::Migration[7.0]
  def change
    create_table :local_items do |t|
      t.references :livro, null: false, foreign_key: true
      t.belongs_to :list, null: false, foreign_key: true

      t.timestamps
    end
  end
end
