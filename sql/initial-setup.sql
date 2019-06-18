CREATE TABLE account_owner (
    "owner_id" SERIAL PRIMARY KEY,
    "name" VARCHAR(60) UNIQUE NOT NULL,
    "date_of_birth" DATE CONSTRAINT valid_date_of_birth CHECK (date_of_birth > '1960-01-01'),
    "created_at" TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE financial_institution (
    "institution_code" VARCHAR(3) PRIMARY KEY,
    "institution_name" VARCHAR(32),
    "active" BOOL DEFAULT true,
    "created_at" TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE financial_account_type (
    "account_type_code" VARCHAR(3) PRIMARY KEY,
    "account_type" VARCHAR(32),
    "active" BOOL DEFAULT true,
    "created_at" TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE financial_account (
    "account_id" SERIAL PRIMARY KEY,
    "institution_code" VARCHAR(3) NOT NULL REFERENCES financial_institution (institution_code) ON DELETE CASCADE ON UPDATE CASCADE,
    "account_type_code" VARCHAR(3) NOT NULL REFERENCES financial_account_type (account_type_code) ON DELETE CASCADE ON UPDATE CASCADE,
    "last_four" SMALLINT,
    "account_nick_name" VARCHAR(32) NOT NULL,
    "purpose" VARCHAR(60),
    "owner_id" SMALLINT REFERENCES account_owner (owner_id) ON DELETE CASCADE ON UPDATE CASCADE,
    "created_at" TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE transaction_type (
    "type_code" VARCHAR(3) PRIMARY KEY,
    "type" VARCHAR(32),
    "created_at" TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE transaction_status (
    "type_code" VARCHAR(3) PRIMARY KEY,
    "type" VARCHAR(32),
    "created_at" TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE transaction (
    "transaction_id" SERIAL PRIMARY KEY,
    "transaction_type" VARCHAR(3) REFERENCES transaction_type (type_code) ON DELETE CASCADE ON UPDATE CASCADE,
    "amount" NUMERIC DEFAULT 0.0 CONSTRAINT positive_amount CHECK (amount > 0),
    "timestamp" TIMESTAMPTZ NOT NULL,
    "account_id" SMALLINT NOT NULL REFERENCES financial_account (account_id) ON DELETE CASCADE ON UPDATE CASCADE,
    "status" VARCHAR(3) NOT NULL DEFAULT 'CMP' REFERENCES transaction_status (type_code) ON DELETE CASCADE ON UPDATE CASCADE,
    "notes" VARCHAR(60),
    "modified_at" TIMESTAMPTZ,
    "created_at" TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP
);

--RELATIONSHIPS
--ALTER TABLE financial_account ADD FOREIGN KEY ("owner_id") REFERENCES account_owner("owner_id");
--ALTER TABLE transaction ADD FOREIGN KEY ("transaction_type") REFERENCES transaction_type("type_code");

--CONSTRAINTS
--ALTER TABLE prices_list ADD CONSTRAINT price_discount_check CHECK (price > 0);
