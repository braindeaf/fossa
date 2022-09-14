# frozen_string_literal: true
class AddFossaLogsPathIndex < ActiveRecord::Migration
  def change
    add_index :fossa_logs, :path
  end
end
