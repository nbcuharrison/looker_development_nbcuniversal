view: stewisplaying {
  derived_table: {
    sql: SELECT advertiser, COUNT(*) FROM public.atp_valuation GROUP BY 1 ORDER BY COUNT(*) DESC LIMIT 100
      ;;
  }

  dimension: advertiser {
    type: string
    sql: ${TABLE}.advertiser ;;
  }

  dimension: count {
    type: number
    sql: ${TABLE}.count ;;
  }

  set: detail {
    fields: [advertiser, count]
  }
}
