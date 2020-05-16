class Message < ApplicationRecord
  belongs_to :group
  belongs_to :user

  validates :content, presence: true, unless: :image?

  mount_uploader :image, ImageUploader

  def date
    created_at.strftime("%Y年%m月%d日 %H時%M分")
  end
end
