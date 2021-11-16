create database Case_study_Module3;
use Case_study_Module3;
create table role(
                     id int(10) not null primary key ,
                     name varchar(20)
);
create table user(
                     id int(10) not null primary key ,
                     fullname varchar(30),
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
                     id int(10) not null primary key ,
                     title varchar(20),
                     content varchar(50),
                     user_id int(10),
                     foreign key (user_id) references user(id)
                         ON DELETE CASCADE
);
create table comment(
                        id int(10) not null primary key ,
                        content varchar(50),
                        post_id int(10),
                        user_id int(10),
                        foreign key (post_id) references post(id)
                            ON DELETE CASCADE,
                        foreign key (user_id)references user(id)
                            ON DELETE CASCADE
);
