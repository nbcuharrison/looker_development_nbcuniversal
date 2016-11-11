view: upfront_pct_ratecard {
  sql_table_name: public.upfront_pct_ratecard ;;

  dimension: advertiser {
    type: string
    sql: ${TABLE}.advertiser ;;
  }

#   dimension: client_pct_rc {
#     type: number
#     sql: ${TABLE}.client_pct_rc ;;
#   }

  measure: client_ratecard_dollars {
    type: sum
    value_format: "$#,##0.00"
    sql: ${TABLE}.client_ratecard_dollars ;;
  }

  measure: prop_pct_ratecard {
    type: number
    value_format: "0.00\%"
    sql: ${prop_sales_dollars}/${prop_ratecard_dollars} ;;
  }

  measure: index_to_average {
    type: number
    value_format: "0.00\%"
    sql: ${client_pct_ratecard}/${prop_pct_ratecard};;
  }

  measure: client_sales_dollars {
    type: sum
    value_format: "$#,##0.00"
    sql: ${TABLE}.client_sales_dollars ;;
  }

#   measure: upfront_rate {
#     type: sum
#     sql: ${client_sales_dollars}/u ;;
#   }

  measure: client_pct_ratecard {
    type: number
    value_format: "0.00\%"
    sql: ${client_sales_dollars}/${client_ratecard_dollars};;
  }

  dimension: daypart {
    type: string
    sql: ${TABLE}.daypart ;;
  }

#   dimension: prop_dp_pct_rc {
#     type: number
#     sql: ${TABLE}.prop_dp_pct_rc ;;
#   }

  dimension: prop_ratecard_dollars {
    type: number
    value_format: "$#,##0.00"
    sql: ${TABLE}.prop_ratecard_dollars ;;
  }

  measure: prop_sales_dollars {
    type: sum
    value_format: "$#,##0.00"
    sql: ${TABLE}.prop_sales_dollars ;;
  }

  dimension: property {
    type: string
    sql: ${TABLE}.property ;;
  }

  dimension: quarter {
    type: string
    sql: ${TABLE}.quarter ;;
  }

  dimension: selling_title_id {
    type: number
    sql: ${TABLE}.selling_title_id ;;
  }

  dimension: selling_title_name {
    type: string
    sql: ${TABLE}.selling_title_name ;;
  }

  dimension: upront_purchased {
    type: string
    sql: ${TABLE}.upront_purchased ;;
  }

  measure: count {
    type: count
    drill_fields: [selling_title_name,selling_title_id]
  }
}
