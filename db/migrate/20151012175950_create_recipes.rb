class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.text :content
      t.string :name
    end
  end
end