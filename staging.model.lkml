connection: "thelook"

label: "Sales - Staging"

include: "/views/*.view.lkml"
include: "/datagroups.lkml"
persist_with: sales_update
