klass = ActiveRecord::Migration.respond_to?(:[]) ? ActiveRecord::Migration[5.0] : ActiveRecord::Migration
class CreateFossaIpRanges < klass
  def change
    create_table :fossa_ip_ranges do |t|
      t.integer :start_ip, limit: 8
      t.integer :end_ip, limit: 8
      t.string :country_code, length: 2
    end
  end
end
