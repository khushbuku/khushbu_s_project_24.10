view: inventory_items {
  sql_table_name: thelook_events.INVENTORY_ITEMS ;;

  dimension: cost {
    type: number
    sql: ${TABLE}.COST ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.CREATED_AT ;;
  }
  dimension: id {
    type: number
    sql: ${TABLE}.ID ;;
  }
  dimension: product_brand {
    type: string
    sql: ${TABLE}.PRODUCT_BRAND ;;
  }
  dimension: product_category {
    type: string
    sql: ${TABLE}.PRODUCT_CATEGORY ;;
  }
  dimension: product_department {
    type: string
    sql: ${TABLE}.PRODUCT_DEPARTMENT ;;
  }
  dimension: product_distribution_center_id {
    type: number
    sql: ${TABLE}.PRODUCT_DISTRIBUTION_CENTER_ID ;;
  }
  dimension: product_id {
    type: number
    sql: ${TABLE}.PRODUCT_ID ;;
  }
  dimension: product_name {
    type: string
    sql: ${TABLE}.PRODUCT_NAME ;;
  }
  dimension: product_retail_price {
    type: number
    sql: ${TABLE}.PRODUCT_RETAIL_PRICE ;;
  }
  dimension: product_sku {
    type: string
    sql: ${TABLE}.PRODUCT_SKU ;;
  }
  dimension_group: sold {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.SOLD_AT ;;
  }
  measure: count {
    type: count
    drill_fields: [product_name]

}
}
