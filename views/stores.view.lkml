view: stores {
  sql_table_name: `sqsh-developer-pocs.bqdemo.stores` ;;
  drill_fields: [store_id]

  dimension: store_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.store_id ;;
  }
  dimension: location {
    type: string
    sql: ${TABLE}.location ;;
  }
  dimension: manager {
    type: string
    sql: ${TABLE}.manager ;;
  }
  measure: count {
    type: count
    drill_fields: [store_id]
  }
}
