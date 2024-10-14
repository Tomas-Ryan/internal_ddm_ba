connection: "ddm_ba_test"

# include all the views
include: "/views/**/*.view.lkml"

datagroup: ddm_ba_test_ok_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: ddm_ba_test_ok_default_datagroup

explore: salesforce_ddmonly_lineitems {
    join: salesforce_ddmonly_lineitems__values {
      view_label: "Salesforce Ddmonly Lineitems: Values"
      sql: LEFT JOIN UNNEST(${salesforce_ddmonly_lineitems.values}) as salesforce_ddmonly_lineitems__values ;;
      relationship: one_to_many
    }
}

#comentario
