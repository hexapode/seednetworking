class CreateProjects < ActiveRecord::Migration
  def self.up
    create_table :projects do |t|
      t.string :name
      t.text :description
      t.string :seeking
      t.string :website

      t.references :user
      t.references :event

      t.timestamps
    end
  end

  def self.down
    drop_table :projects
  end
end
