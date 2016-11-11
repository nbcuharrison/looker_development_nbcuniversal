view: atp_valuation {
  sql_table_name: public.atp_valuation ;;

  dimension: advertiser {
    type: string
    sql: ${TABLE}.advertiser ;;
  }

  dimension: broadcast_quarter_year {
    type: string
    sql: ${TABLE}.broadcast_quarter_year ;;
  }

  dimension: line_class {
    type: string
    sql: ${TABLE}.line_class ;;
  }

  dimension: plan_type {
    type: string
    sql: ${TABLE}.plan_type ;;
  }

  dimension: portfolio_link_id {
    type: number
    sql: ${TABLE}.portfolio_link_id ;;
  }

  dimension: property {
    type: string
    sql: ${TABLE}.property ;;
  }

  measure: sales_dollars {
    type: sum
    value_format: "$#,##0.00"
    sql: ${TABLE}.sales_dollars ;;
  }

  dimension: selling_title_id {
    type: number
    sql: ${TABLE}.selling_title_id ;;
  }

  dimension: selling_title_name {
    type: string
    sql: ${TABLE}.selling_title_name ;;
  }

  dimension: source_daypart {
    type: string
    sql: ${TABLE}.source_daypart ;;
  }

  measure: true_value {
    type: sum
    sql: ${TABLE}.true_value ;;
  }

  measure: unit_count_eq_30 {
    type: sum
    sql: ${TABLE}.unit_count_eq_30 ;;
  }

  measure: net_value_gain_loss {
    type: sum
    value_format: "$#,##0.00"
    sql: |
      CASE when ${plan_type} = 'CARVE OUT'
      THEN ${weighted_value} - ${true_value}
      ELSE ${sales_dollars} - ${weighted_value}
      END;;
        }

  dimension_group: week_of {
    type: time
    timeframes: [date, week, month]
    convert_tz: no
    sql: ${TABLE}.week_of_date ;;
  }

  measure: weighted_value {
    type: sum
    value_format: "$#,##0.00"
    sql: ${TABLE}.weighted_value ;;
  }

  measure: row_count {
    type: count
    drill_fields: [selling_title_name]
  }
}
