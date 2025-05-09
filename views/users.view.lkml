view: users {
  sql_table_name: thelook_events.USERS ;;

  dimension: age {
    type: number
    sql: ${TABLE}.AGE ;;
  }
  dimension: city {
    type: string
    sql: ${TABLE}.CITY ;;
  }
  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.COUNTRY ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.CREATED_AT ;;
  }
  dimension: email {
    type: string
    sql: ${TABLE}.EMAIL ;;
  }
  dimension: first_name {
    type: string
    sql: ${TABLE}.FIRST_NAME ;;
  }
  dimension: gender {
    type: string
    sql: ${TABLE}.GENDER ;;
  }
  dimension: id {
    type: number
    sql: ${TABLE}.ID ;;
  }
  dimension: demo {
    type: number
    sql: ${id} ;;
  }
  dimension: last_name {
    type: string
    sql: ${TABLE}.LAST_NAME ;;
  }
  dimension: latitude {
    type: number
    sql: ${TABLE}.LATITUDE ;;
  }
  dimension: longitude {
    type: number
    sql: ${TABLE}.LONGITUDE ;;
  }
  dimension: state {
    type: string
    sql: ${TABLE}.STATE ;;
  }
  dimension: traffic_source {
    type: string
    sql: ${TABLE}.TRAFFIC_SOURCE ;;
  }
  dimension: zip {
    type: zipcode
    sql: ${TABLE}.ZIP ;;
  }
  measure: count {
    type: count
    drill_fields: [last_name, first_name]
  }

  }
