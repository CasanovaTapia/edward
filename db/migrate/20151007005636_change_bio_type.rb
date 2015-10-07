class ChangeBioType < ActiveRecord::Migration
  def up
    change_column :profiles, :bio, :text, :limit => nil
  end

  def down
    change_column :profiles, :bio, :string
  end
end
