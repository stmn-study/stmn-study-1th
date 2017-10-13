# == Schema Information
#
# Table name: activities
#
#  id                 :integer          not null, primary key
#  user_id            :integer          not null
#  project_id         :integer          not null
#  supported_point_id :integer
#  comment_id         :integer
#  event_type         :integer          default("support"), not null
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

class Activity < ApplicationRecord
  enum event_type: {support:1, watch:2, comment:3}

  belongs_to :user
  belongs_to :project
  belongs_to :supported_point, optional: true
  # belongs_to :comment

  validates :user, :project, presence: true

  class << self
    def factory(user, project, event_type, supported_point:nil, comment:nil)
      activity = Activity.new do |n|
        n.user = user
        n.project = project
        n.event_type = event_type.to_sym
      end

      case event_type.to_sym
        when :support
          activity.supported_point = supported_point
        when :comment
          activity.comment = comment
        when :watch
          # none
        else
          raise ArgumentError, "Invalid event_type #{event_type.to_sym}"
      end
      activity
    end

    def factory!(*args)
      activity = factory(*args)
      activity.save!
      activity
    end

    def support!(supported_point)
      factory!(supported_point.user, supported_point.project, :support)
    end

    def watch!(user, project)
      factory!(user, project, :watch)
    end

    def comment!(comment)
      factory!(comment.user, comment.project, :comment)
    end
  end

  def sentence
    case event_type.to_sym
      when :support
        "#{user.email}さんが支援しました"
      when :comment
        "#{user.email}さんがコメントしました"
      when :watch
        "#{user.email}さんがウォッチしました"
      else
        # あとでError追加
    end
  end
end
