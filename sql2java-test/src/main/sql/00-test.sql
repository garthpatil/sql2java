CREATE TABLE person (
  id integer GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
  username varchar(255) NOT NULL,
  first_name varchar(255) NOT NULL,
  last_name varchar(255) NOT NULL,
  create_date datetime NOT NULL,
  update_date timestamp DEFAULT CURRENT_TIMESTAMP NOT NULL,
  UNIQUE (username)
);

CREATE TABLE phone (
  id integer GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
  phone_number varchar(30) NOT NULL,
  phone_type integer NOT NULL,
  person_id integer NOT NULL,
  create_date datetime NOT NULL,
  FOREIGN KEY (person_id) REFERENCES person(id),
  UNIQUE (phone_number)
);
