Hanami::Model.migration do
  change do
    create_table :posts do
      primary_key :id

      column :title,      String
      column :synopsis,   String
      column :body,       "text[]"
      column :markup,     String, :default => 'markdown'
      
      column :created_at, DateTime, null: false
      column :updated_at, DateTime, null: false
    end
  end
end
