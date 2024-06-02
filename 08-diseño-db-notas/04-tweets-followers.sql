table user {
    id int [pk, increment]
    name varchar(100)
    slug varchar(50)
    email varchar[unique]
    bio text
    created_at timestamp[default: 'now()']
}

table tweet{
    id integer [pk, increment]
    content varchar(150)
    user_id int [ref: > user.id]
    created_at timestamp[default: 'now()']
}

table follower{
    id integer [pk, increment]
    follower_id int
    followed_id int 
    created_at timestamp[default: 'now()']
}