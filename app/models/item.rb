class Item < ActiveRecord::Base
  paginates_per 5  # 1ページあたり5項目表示
  belongs_to :user
  has_many :comments
end
