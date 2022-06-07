class CreateLivros < ActiveRecord::Migration[7.0]
  def change
    create_table :livros do |t|
      t.string :titulo
      t.string :autor
      t.integer :ano

      t.timestamps
    end
  end
end
