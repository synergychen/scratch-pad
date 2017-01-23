class Note < ActiveRecord::Base
  validate :ensure_title_or_content

  private

  def ensure_title_or_content
    unless title.strip.present? || content.strip.present?
      errors.add(:base, "Must provide title or content")
    end
  end
end
