json.array!(@timelines) do |timeline|
  json.extract! timeline, :id, :user_id, :imageurl, :dateofimage, :sourceofimage, :numcomments, :likes, :shares
  json.url timeline_url(timeline, format: :json)
end
