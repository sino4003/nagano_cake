class OrderDetail < ApplicationRecord

  belongs_to :item
  belongs_to :order

  enum making_status: {"製作不可": 0, "製作待ち": 1, "製作中": 2, "製作完了": 3}

  def subtotal
    item.with_tax_price * amount
  end
end
