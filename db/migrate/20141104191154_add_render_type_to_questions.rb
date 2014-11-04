class AddRenderTypeToQuestions < ActiveRecord::Migration
  def change
    add_column :rapidfire_questions, :render_type, :integer, :default => 0, :null => false
  end
end
