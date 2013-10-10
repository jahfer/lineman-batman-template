class BatmanApp.OrdersController extends BatmanApp.ApplicationController
  routingKey: 'orders'

  index: (params) ->
    BatmanApp.Order.load @errorHandler (orders) =>
      @set('orders', orders)