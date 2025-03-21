datagroup: sales_update {
  sql_trigger: SELECT max(id) FROM order_items ;;
}

datagroup: sales_update_production {
  sql_trigger: SELECT max(id) FROM users ;;
}
