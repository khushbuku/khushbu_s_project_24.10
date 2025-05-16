include: "/views/order_status_vijaya.view.lkml"
include: "/models/khushbu_s_project.model.lkml"
include: "/views/orders.view.lkml"
include: "/views/inventory_items.view.lkml"
include: "/views/products.view.lkml"
include: "/views/users.view.lkml"



explore: order_items_vijaya {
  join: orders {
    type: left_outer
    sql_on: ${order_items_vijaya.order_id} = ${orders.id} ;;
    relationship: many_to_one
  }

  join: inventory_items {
    type: left_outer
    sql_on: ${order_items_vijaya.inventory_item_id} = ${inventory_items.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${orders.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: products {
    type: left_outer
    sql_on: ${inventory_items.product_id} = ${products.id} ;;
    relationship: many_to_one
  }
}
