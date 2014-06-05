json.array!(@timelines) do |timeline|
  json.extract! timeline, :id, :user, :image_url, :image_date, :image_source, :likes, :shares, :retweets, :number_of_comments
  json.url timeline_url(timeline, format: :json)
end
