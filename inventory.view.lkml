view: inventory {
  sql_table_name: public.inventory ;;

  dimension: capacity {
    type: number
    sql: ${TABLE}.capacity ;;
  }

  dimension: property {
    type: string
    sql: ${TABLE}.property ;;
  }

  dimension: property_id {
    type: number
    sql: ${TABLE}.property_id ;;
  }

  dimension: quarter {
    type: string
    sql: ${TABLE}.quarter ;;
  }

  dimension: selling_name {
    type: string
    sql: ${TABLE}.selling_name ;;
  }

  measure: selling_name_avails {
    type: sum
    sql: ${TABLE}.selling_name_avails ;;
  }

  dimension: selling_name_id {
    type: number
    sql: ${TABLE}.selling_name_id ;;
  }

  measure: selling_name_pressure {
    type: sum
    sql: ${TABLE}.selling_name_pressure ;;
  }

  measure: selling_name_realistic_avails {
    type: sum
    sql: ${TABLE}.selling_name_realistic_avails ;;
  }

  measure: selling_name_sold {
    type: sum
    sql: ${TABLE}.selling_name_sold ;;
  }

  dimension_group: week_of {
    type: time
    timeframes: [date, week, month]
    convert_tz: no
    sql: ${TABLE}.week_of_date ;;
  }

  measure: row_count {
    type: count
    drill_fields: [selling_name]
  }
}
