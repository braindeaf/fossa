klass = ActiveRecord::Migration.respond_to?(:[]) ? ActiveRecord::Migration[5.0] : ActiveRecord::Migration
class CreateFossaLog < klass
  def change
    create_table :fossa_logs do |t|
      t.integer :ip
      t.string :path
      t.string :user_agent
      t.string :referer
      t.timestamp :created_at
    end
  end
end
