connection: "thelook"

# include all the views
include: "/views/**/*.view.lkml"

datagroup: Test_project_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: Test_project_default_datagroup

