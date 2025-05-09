view: order_items {
  sql_table_name: thelook_events.ORDER_ITEMS ;;

  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.CREATED_AT ;;
  }
  dimension_group: delivered {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.DELIVERED_AT ;;
  }
  dimension: id {
    type: number
    sql: ${TABLE}.ID ;;
  }
  dimension: inventory_item_id {
    type: number
    sql: ${TABLE}.INVENTORY_ITEM_ID ;;
  }
  dimension: order_id {
    type: number
    sql: ${TABLE}.ORDER_ID ;;
  }
  dimension_group: returned {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.RETURNED_AT ;;
  }

  dimension: sale_price {
    type: number
    sql: ${TABLE}.SALE_PRICE ;;
  }

  measure: sum_total_sales {
    type: sum
    sql: ${sale_price} ;;
  }

  # measure: avg_total_sales {
  #   type: average
  #   sql: ${sum_total_sales} ;;
  # }

  dimension_group: shipped {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.SHIPPED_AT ;;
  }
  dimension: status {
    type: string
    sql: ${TABLE}.STATUS ;;
  }
  dimension: user_id {
    type: number
    sql: ${TABLE}.USER_ID ;;
  }
  measure: count {
    type: count
}
}
