class CatRentalRequest < ApplicationRecord
  validates :status, presence: true, inclusion: %w(PENDING APPROVED DENIED)
  validates :start_date, :end_date, :cat_id, presence: true
  validate :does_not_overlap_approved_request


  belongs_to :cat,
    class_name: :Cat,
    primary_key: :id,
    foreign_key: :cat_id,
    dependent: :destroy

  def overlapping_requests

  end

  def overlapping_approved_requests

  end
end
