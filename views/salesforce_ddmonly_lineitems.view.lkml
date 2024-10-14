view: salesforce_ddmonly_lineitems {
  sql_table_name: `looker_datamarts.salesforce_ddmonly_lineitems` ;;

  dimension: account_name {
    type: string
    sql: ${TABLE}.Account_Name ;;
  }
  dimension: approved_by {
    type: string
    sql: ${TABLE}.Approved_By ;;
  }
  dimension: approved_by_clean {
    type: string
    sql: ${TABLE}.Approved_By_clean ;;
  }
  dimension: approver_offboarded {
    type: yesno
    sql: ${TABLE}.Approver_offboarded ;;
  }
  dimension_group: billing {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Billing_Date ;;
  }
  dimension: billing_status {
    type: string
    sql: ${TABLE}.Billing_Status ;;
  }
  dimension: client_id {
    type: number
    sql: ${TABLE}.Client_ID ;;
  }
  dimension: currency_iso_code {
    type: string
    sql: ${TABLE}.CurrencyIsoCode ;;
  }
  dimension: delivery_lead {
    type: string
    sql: ${TABLE}.Delivery_Lead ;;
  }
  dimension: description {
    type: string
    sql: ${TABLE}.Description ;;
  }
  dimension: engagement_line_item {
    type: string
    sql: ${TABLE}.Engagement_Line_Item ;;
  }
  dimension: engagement_name {
    type: string
    sql: ${TABLE}.Engagement_Name ;;
  }
  dimension: engagement_number {
    type: number
    sql: ${TABLE}.Engagement_Number ;;
  }
  dimension: no_recognised_rev {
    type: yesno
    sql: ${TABLE}.no_recognised_rev ;;
  }
  dimension: opportunity_account_name {
    type: string
    sql: ${TABLE}.Opportunity_Account_Name ;;
  }
  dimension: opportunity_attribution {
    type: string
    sql: ${TABLE}.Opportunity_Attribution ;;
  }
  dimension_group: opportunity_close {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Opportunity_Close_Date ;;
  }
  dimension: opportunity_id {
    type: string
    sql: ${TABLE}.Opportunity_ID ;;
  }
  dimension: percent_complete {
    type: number
    sql: ${TABLE}.percent_complete ;;
  }
  dimension: service_line {
    type: string
    sql: ${TABLE}.Service_Line ;;
  }
  dimension: sow_line_item_id {
    type: string
    sql: ${TABLE}.SOW_Line_Item_ID ;;
  }
  dimension: status {
    type: string
    sql: ${TABLE}.Status ;;
  }
  dimension: team {
    type: string
    sql: ${TABLE}.team ;;
  }
  dimension: total_line_item_revenue_recognized {
    type: number
    sql: ${TABLE}.Total_Line_Item_Revenue_Recognized ;;
  }
  dimension: total_line_item_sold {
    type: number
    sql: ${TABLE}.Total_Line_Item_Sold ;;
  }
  dimension: url_1 {
    type: string
    sql: ${TABLE}.url_1 ;;
  }
  dimension: url_2 {
    type: string
    sql: ${TABLE}.url_2 ;;
  }
  dimension: values {
    hidden: yes
    sql: ${TABLE}.values ;;
  }
  measure: count {
    type: count
    drill_fields: [opportunity_account_name, account_name, engagement_name]
  }
}

view: salesforce_ddmonly_lineitems__values {

  dimension: office_location {
    type: string
    sql: Office_Location ;;
  }
  dimension: percentage {
    type: string
    sql: Percentage ;;
  }
  dimension: salesforce_ddmonly_lineitems__values {
    type: string
    hidden: yes
    sql: salesforce_ddmonly_lineitems__values ;;
  }
}
