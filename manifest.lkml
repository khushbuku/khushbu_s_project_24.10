project_name: "Khushbu_test_project"

# # Use local_dependency: To enable referencing of another project
# # on this instance with include: statements
#
# local_dependency: {
#   project: "name_of_other_project"
# }
constant: value_format_liquid_currency {

  value: "{% if value >=1000000000 %}

  ${{ value | divided_by: 1000000000 | round: 1 | times: 1 }} B

  {% elsif value <=-1000000000 %}

  -${{ value | divided_by: 1000000000 | round: 1 | times: -1 }} B

  {% elsif value >=1000000 %}

  ${{ value | divided_by: 1000000 | round: 1 | times: 1 }} M

  {% elsif value <=-1000000 %}
  -${{ value | divided_by: 1000000 | round: 1 | times: -1 }} M

{% elsif value <=-1000 %}

-${{ value | divided_by: 1000 | round: 1 | times: -1 }} K

{% elsif value >=1000 %}

${{ value | divided_by: 1000 | round: 1 | times: 1 }} K

{% elsif value <1000 %}

${{ value | divided_by: 100 | round: 1 | times: 1 }}

{% elsif value <0 %}

-${{ value | divided_by: 1 | times: -1 | round: 1}}
{% elsif value >0 %}

${{ value | divided_by: 1 | round: 1 | times: 1 }}

{% elsif value >= 0 %}

${{ value }}

{% endif %}"

}
