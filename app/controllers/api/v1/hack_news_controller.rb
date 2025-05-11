class Api::V1::HackNewsController < ApplicationController
  def recent
    # 获取最近的创建时间
    recent_time = HackNews.order(created_at: :desc).limit(1).pluck(:created_at).first

    if recent_time
      # 查找所有在最近创建时间的 HackNews 记录
      @hack_news = HackNews.where(created_at: recent_time).order(id: :asc)
      render json: @hack_news
    else
      render json: { message: 'No HackNews found' }, status: :not_found
    end
  end
end
