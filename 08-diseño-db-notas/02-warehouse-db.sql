enum product_status{
  in_stock
  out_of_stock
  running_low
}

enum order_status{
  placed
  confirmed
  processed
  complete
}

table product{
  id int [pk, increment]
  serial varchar 
  name varchar(200)
  stock int
  merchant_id int [ref: > merchant.id]
  price float(10,2)
  status product_status
  created_at timestamp [default: 'now()']
}

table merchant{
  id int [pk, increment]
  name varchar
  country_id int [ref: > country.id]
  created_at timestamp [default: 'now()']
}

table country{
  id int [pk, increment]
  name varchar
}

table order{
  id int [pk, increment]
  status order_status
  amount float(12,2)
  user_id int
  created_at timestamp [default: 'now()']
}

table order_item{
  id int [pk, increment]
  quantity int
  order_id int [pk, increment]
  product_id int [ref: > product.id]
}