view: orders {
  sql_table_name: demo_db.orders ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }
  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_id ;;
  }
  measure: demo {
    type: sum
    sql: ${user_id} ;;
    #value_format_name: "conditional_dollar_with_one_decimal"
    value_format_name: big_money
    html: @{value_format_liquid_currency} ;;
  }

  parameter: test {
    type: unquoted
    allowed_value: {
      label: "-5s"
      value: "mi_maas_usd_neg_5"
    }
    allowed_value: {
      label: "-1s"
      value: "mi_maas_usd_neg_1"
    }
  }
  dimension: test_1 {
    sql:
    {% if test._parameter_value == 'mi_maas_usd_neg_5' %}
    ${user_id}
    {% elsif test._parameter_value == 'mi_maas_usd_neg_1' %}
${id}
    {% endif %};;

  }
  measure: count {
    type: count
    value_format_name: conditional_dollar_with_one_decimal_1
    html: @{value_format_liquid_currency} ;;
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
  id,
  users.id,
  users.first_name,
  users.last_name,
  billion_orders.count,
  fakeorders.count,
  hundred_million_orders.count,
  hundred_million_orders_wide.count,
  order_items.count,
  order_items_vijaya.count,
  ten_million_orders.count
  ]
  }

}
