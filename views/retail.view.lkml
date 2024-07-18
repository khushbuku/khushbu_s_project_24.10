
view: retail {
  derived_table: {
    sql: SELECT
          `order_items`.`id` AS `order_items.id`,
          `orders`.`status` AS `orders.status`,
          COUNT(DISTINCT orders.id ) AS `orders.count`
      FROM
          `demo_db`.`order_items` AS `order_items`
          LEFT JOIN `demo_db`.`orders` AS `orders` ON `order_items`.`order_id` = `orders`.`id`
      GROUP BY
          1,
          2
      ORDER BY
          3 DESC
      LIMIT 500 ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: order_items_id {
    type: number
    primary_key: yes
    sql: ${TABLE}.`order_items.id` ;;
  }

  dimension: orders_status {
    type: string
    sql: ${TABLE}.`orders.status` ;;
  }

  dimension: orders_count {
    type: number
    sql: ${TABLE}.`orders.count` ;;
  }

  set: detail {
    fields: [
        order_items_id,
  orders_status,
  orders_count
    ]
  }
}
