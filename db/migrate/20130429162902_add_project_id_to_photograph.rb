class AddProjectIdToPhotograph < ActiveRecord::Migration
  def change
    add_column :photographs, :project_id, :integer
  end
end
