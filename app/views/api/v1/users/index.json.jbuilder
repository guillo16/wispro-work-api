json.array! @posts do |post|
  json.extract! post, :id, :title, :user_id
  json.postulations post.postulations do |postulation|
    json.extract! postulation, :id, :description, :user, :status
  end
end
