create database Case_study_Module3;
use Case_study_Module3;
create table role(
                     id int(10) not null auto_increment primary key ,
                     name varchar(20)
);
create table user(
                     id int(10) not null auto_increment primary key ,
                     fullName varchar(50),
                     introduction varchar(50),
                     username varchar(30),
                     password varchar(30)
);
create table role_user(
                          role_id int(10),
                          user_id int(10),
                          foreign key (role_id) references role(id)
                              ON DELETE CASCADE,
                          foreign key (user_id) references user(id)
                              ON DELETE CASCADE
);
create table post(
                     id int(10) not null auto_increment primary key ,
                     title varchar(500),
                     content text,
                     image text,
                     user_id int(10),
                     foreign key (user_id) references user(id)
                         ON DELETE CASCADE
);
create table comment(
                        id int(10) not null auto_increment primary key ,
                        content text,
                        post_id int(10),
                        user_id int(10),
                        foreign key (post_id) references post(id)
                            ON DELETE CASCADE,
                        foreign key (user_id)references user(id)
                            ON DELETE CASCADE
);
create table relationship(
                             receipt_id int(10) ,
                             send_id int(10),
                             status int(10),
                             foreign key (receipt_id)references user(id)
                                 ON DELETE CASCADE,
                             foreign key (send_id)references user(id)
                                 ON DELETE CASCADE
);
create table likePost(
                         id int(10) auto_increment not null primary key ,
                         post_id int(10),
                         user_id int(10),
                         foreign key (post_id)references post(id)
                             ON DELETE CASCADE,
                         foreign key (user_id)references user(id)
                             ON DELETE CASCADE
);
