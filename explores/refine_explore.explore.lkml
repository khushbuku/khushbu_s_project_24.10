include: "/refine_view_test/retail.view"
include: "/views/order_items.view.lkml"
include: "/views/orders.view.lkml"

explore: products {
  join: order_items {
    type: left_outer
    sql_on: ${products.id} = ${order_items.id} ;;
    relationship: one_to_many
  }

  join: orders {
    type: left_outer
    sql_on: ${orders.id} = ${order_items.id} ;;
    relationship: one_to_many
  }
}

explore: retail {}
