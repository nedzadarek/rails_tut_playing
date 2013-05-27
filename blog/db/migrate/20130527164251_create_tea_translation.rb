class CreateTeaTranslation < ActiveRecord::Migration
  def up
    Tea.create_translation_table!({
      extra_content: :text
    }, {
      migrate_data: true
    })
  end
  def down
    Tea.drop_translation_table! migrate_data: true
  end
end