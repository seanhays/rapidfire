class AddResultsPublishedToRapidfireQuestionGroups < ActiveRecord::Migration
  def change
    add_column :rapidfire_question_groups, :results_published, :boolean, default: false
  end
end
