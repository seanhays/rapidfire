class AddPublishedToRapidfireQuestionGroups < ActiveRecord::Migration
  def change
    add_column :rapidfire_question_groups, :published, :boolean, default: false
  end
end
