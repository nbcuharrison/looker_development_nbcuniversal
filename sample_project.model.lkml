connection: "postgressql"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

explore: atp_valuation {

label: "atp_valuation"
description: "used to track atp_value over time against the orgiginal carve out"
hidden:  no
view_name: atp_valuation
}

explore: upfront_pct_ratecard {

  label: "upfront_pct_ratecard"
  description: "view used for the campaign managers so they can see how much money will make on st level for each client"
  hidden:  no
  view_name: upfront_pct_ratecard

}

explore: inventory {

  label: "inventory"
  description: "view used for to track inventory avails"
  hidden:  no
  view_name: inventory

}
