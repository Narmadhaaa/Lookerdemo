view: products {
  sql_table_name: `sqsh-developer-pocs.bqdemo.products` ;;
  drill_fields: [product_id]

  dimension: product_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.product_id ;;
  }
  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
  }
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }
  dimension: platform {
    type: string
    sql: ${TABLE}.platform ;;
  }
  dimension: price {
    type: number
    sql: ${TABLE}.price ;;
  }
  measure: count {
    type: count
    drill_fields: [product_id, name]
  }
}
