json.extract! @post, :id, :title, :content
json.postulations @post.postulations do |postulation|
  json.extract! postulation, :id, :description
end
