class Twiit < ApplicationRecord
  validates :content, presence: { message: ": 内容を書いてください" },
                      length: { maximum: 140 , too_long: ": 140文字以内で入力してください" }

  validate :content_changed?

  def content_changed?
    if persisted? && content_was == content
      errors.add(:content, "内容を変更してください")
    end
  end
end


