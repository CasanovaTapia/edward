class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :body
      t.references :user, index: true
      t.references :category, index: true, default: 1
      t.references :status, index: true, default: 1

      t.timestamps
    end
  end
end
