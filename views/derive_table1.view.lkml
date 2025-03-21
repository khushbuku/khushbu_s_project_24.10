#include: "/models/khushbu_s_project.model.lkml"
view: derive_table1 {

  derived_table: {
    explore_source: products {
      column: department {}
      column: count {}
    }

  #datagroup_trigger: khushbu_s_project_default_datagroup
  }

  dimension: department {
    description: ""
  }
  dimension: count {
    description: ""
    type: number
  }
}
