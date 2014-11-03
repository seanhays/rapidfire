class AddCloseDateToRapidfireQuestionGroups < ActiveRecord::Migration
  def change
    add_column :rapidfire_question_groups, :close_date, :datetime
  end
end
