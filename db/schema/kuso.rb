# frozen_string_literal: true

create_table :kusos, force: :cascade, options: 'ENGINE=InnoDB DEFAULT CHARSET=utf8mb4' do |t|
  t.string :unique_id
  t.string :sentence

  t.datetime :created_at, null: false
  t.datetime :updated_at, null: false
end

