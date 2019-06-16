CREATE TABLE account_owner (
    "owner_id" SERIAL PRIMARY KEY,
    "name" VARCHAR(60),
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
    "institution_code" VARCHAR(3) NOT NULL,
    "account_type_code" VARCHAR(3) NOT NULL,
    "last_four" SMALLINT,
    "account_nick_name" VARCHAR(32) NOT NULL,
    "purpose" VARCHAR(60),
    "owner_id" SMALLINT,
    "created_at" TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE transaction_type (
    "type_code" VARCHAR(3) PRIMARY KEY,
    "type" VARCHAR(32),
    "created_at" TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE transaction (
    "transaction_id" SERIAL PRIMARY KEY,
    "transaction_type" VARCHAR(3),
    "amount" NUMERIC,
    "timestamp" TIMESTAMPTZ NOT NULL,
    "account_to" SMALLINT NOT NULL,
    "account_from" SMALLINT,
    "modified_at" TIMESTAMPTZ,
    "created_at" TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP
);
