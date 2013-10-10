class BatmanApp.Order extends Batman.Model
  @resourceName: 'order'
  @persist BatmanApp.APIStorage

  @encode 'name', 'financial_status', 'fulfillment_status', 'total_price'
