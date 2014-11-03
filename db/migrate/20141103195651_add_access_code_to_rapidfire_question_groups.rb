class AddAccessCodeToRapidfireQuestionGroups < ActiveRecord::Migration
  def change
    add_column :rapidfire_question_groups, :access_code, :string
  end
end
