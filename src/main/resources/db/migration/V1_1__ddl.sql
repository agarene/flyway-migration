
CREATE TABLE public."user" (
	id integer NOT NULL,
	first_name varchar(50) NOT NULL,
	last_name varchar(50) NOT NULL,
	user_name varchar(50) NOT NULL,
	mail_id varchar(50) NOT NULL,
	"password" varchar(50) NOT NULL,
	CONSTRAINT pk_user_id PRIMARY KEY (id)
);
