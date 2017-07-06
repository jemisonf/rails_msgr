module PostsHelper
  def has_replies?(post)
    Reply.where(post_id: post.id).size == 0? false: true
  end
end
