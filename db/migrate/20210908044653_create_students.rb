class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string :name
      t.string :project_title
      t.references :grp_leader, foreign_key: { to_table: :students }

      t.timestamps
    end
  end
end
