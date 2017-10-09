json.extract! activity, :id, :user_id, :project_id, :supported_point_id, :comment_id, :type, :created_at, :updated_at
json.url activity_url(activity, format: :json)
