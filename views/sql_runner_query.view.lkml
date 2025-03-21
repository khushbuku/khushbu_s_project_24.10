
view: sql_runner_query {
  derived_table: {
    sql: SELECT
          order_items.SALE_PRICE  AS `order_items.sale_price`,
          order_items.ID  AS `order_items.id`,
          COALESCE(SUM(order_items.SALE_PRICE ), 0) AS `order_items.sum_total_sales`
      FROM thelook_events.ORDER_ITEMS  AS order_items
      GROUP BY
          1,
          2
      ORDER BY
          3 DESC
      LIMIT 500 ;;
  }

  dimension: order_items_id {
    type: number
    primary_key: yes
    sql: ${TABLE}.`order_items.id` ;;
  }

  dimension: order_items_sale_price {
    type: number
    sql: ${TABLE}.`order_items.sale_price` ;;
  }

  dimension: order_items_sum_total_sales {
    type: number
    sql: ${TABLE}.`order_items.sum_total_sales` ;;
  }

  measure: avg_total_sales {
    type: average
    sql: ${order_items_sum_total_sales} ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  set: detail {
    fields: [
        order_items_sale_price,
  order_items_id,
  order_items_sum_total_sales
    ]
  }
}
