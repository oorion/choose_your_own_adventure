class AddAssociationToStory < ActiveRecord::Migration
  def change
    change_table :stories do |t|
      t.references :story, index: true
    end
  end
end
