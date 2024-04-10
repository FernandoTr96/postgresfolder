enum gender_enum{
  man
  woman
  other
}

table users{
  id int [pk, increment]
  name varchar(50) [not null]
  email varchar(100) [not null]
  gender gender_enum [not null]
  role_id int [ref: > roles.id, not null]
  created_at timestamp [default: 'now()'] 
}

table roles{
  id int [pk, increment]
  name varchar(30) [not null]
}

table posts{
  id int [pk, increment]
  og_image varchar(255) [not null]
  title varchar(255) [default: '']
  content text [default: '']
  slug varchar(255) [not null]
  published bool [default: false]
  user_id int [ref: > users.id]
  created_at timestamp [default: 'now()'] 
}

// claps si quieres que pueda dar varios clicks cuando quiera
table claps{
  id int [pk, increment]
  post_id int [ref: > posts.id]
  user_id int [ref: > users.id]
  counter int [default: 0]
  created_at timestamp [default: 'now()'] 
}

// claps si quieres que por persona haya 1 solo clap o like
/*table _claps{
  id int [pk, increment]
  post_id int [ref: > posts.id]
  user_id int [ref: > users.id]
  created_at timestamp [default: 'now()'] 
}*/

table comment{
  id int [pk, increment]
  content text
  post_id int [ref: > posts.id]
  user_id int [ref: > users.id]
  comment_parent_id int
  created_at timestamp [default: 'now()'] 
  deleted_at timestamp [null] 
}