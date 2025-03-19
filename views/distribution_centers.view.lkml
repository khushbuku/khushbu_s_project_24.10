view: distribution_centers {
  sql_table_name: thelook_events.DISTRIBUTION_CENTERS ;;

  dimension: id {
    type: number
    sql: ${TABLE}.ID ;;
  }
  dimension: latitude {
    type: number
    sql: ${TABLE}.LATITUDE ;;
  }
  dimension: longitude {
    type: number
    sql: ${TABLE}.LONGITUDE ;;
  }
  dimension: name {
    type: string
    sql: ${TABLE}.NAME ;;
  }
  measure: count {
    type: count
    drill_fields: [name]
  }
}
