json.extract! word, :id, :title, :yomi, :body, :user_id, :created_at, :updated_at
json.url word_url(word, format: :json)
