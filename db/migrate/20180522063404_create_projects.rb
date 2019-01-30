class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :title
      t.text :description
      t.string :status
      t.string :owner
      t.string :tech_stack
      t.string :github_link

      t.timestamps
    end
  end
end
