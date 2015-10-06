class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :location
      t.string :bio
      t.string :website
      t.string :curr_project
      t.references :industry, index: true
      t.string :avatar
      t.string :twitter
      t.string :instagram
      t.string :facebook
      t.string :imdb
      t.string :portfolio

      t.timestamps
    end
  end
end
