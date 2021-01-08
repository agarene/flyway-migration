CREATE TABLE public."role" (
	id uuid NOT NULL,
	role_name varchar(50) NOT NULL,
	created_by varchar(50) NULL,
	created_on timestamp NULL,
	updated_by varchar(50) NULL,
	updated_on timestamp NULL,
	CONSTRAINT role_pkey PRIMARY KEY (id)
);
CREATE TABLE public.preference (
	id uuid NOT NULL,
	preference_name varchar(255) NOT NULL,
	created_by varchar(50) NULL,
	created_on timestamp NULL,
	updated_by varchar(50) NULL,
	updated_on timestamp NULL,
	CONSTRAINT preference_pkey PRIMARY KEY (id)
);
CREATE TABLE public."permission" (
	id uuid NOT NULL,
	permission_name varchar(50) NOT NULL,
	created_by varchar(50) NULL,
	created_on timestamp NULL,
	updated_by varchar(50) NULL,
	updated_on timestamp NULL,
	CONSTRAINT pk_permission_id PRIMARY KEY (id)
);


CREATE TABLE public."user" (
	id uuid NOT NULL,
	first_name varchar(50) NOT NULL,
	last_name varchar(50) NOT NULL,
	user_name varchar(50) NOT NULL,
	mail_id varchar(50) NOT NULL,
	"password" varchar(50) NOT NULL,
	is_active bool NULL DEFAULT true,
	is_lock bool NULL DEFAULT false,
	created_by varchar(50) NULL,
	created_on timestamp NULL,
	updated_by varchar(50) NULL,
	updated_on timestamp NULL,
	manager_id uuid NULL,
	role_id uuid NOT NULL,
	CONSTRAINT pk_user_id PRIMARY KEY (id),
	CONSTRAINT fk_manager_id FOREIGN KEY (manager_id) REFERENCES "user"(id),
	CONSTRAINT fk_role_id FOREIGN KEY (role_id) REFERENCES role(id)
);

CREATE TABLE public.role_permission (
	role_id uuid NOT NULL,
	permission_id uuid NOT NULL,
	CONSTRAINT pk_role_permission PRIMARY KEY (role_id, permission_id),
	CONSTRAINT fk_role_permission_permission FOREIGN KEY (permission_id) REFERENCES permission(id),
	CONSTRAINT fk_role_permission_role FOREIGN KEY (role_id) REFERENCES role(id)
);

CREATE TABLE public.user_preference (
	user_id uuid NOT NULL,
	preference_id uuid NOT NULL,
	CONSTRAINT pk_user_preference PRIMARY KEY (user_id, preference_id),
	CONSTRAINT fk_user_id FOREIGN KEY (user_id) REFERENCES "user"(id),
	CONSTRAINT fk_user_preference FOREIGN KEY (preference_id) REFERENCES preference(id)
);
