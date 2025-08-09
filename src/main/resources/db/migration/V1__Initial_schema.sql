-- V1__Initial_schema.sql
CREATE TABLE IF NOT EXISTS donors (
  id SERIAL PRIMARY KEY,
  full_name TEXT NOT NULL,
  email TEXT NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS receiver (
    id SERIAL PRIMARY KEY,
    full_name TEXT NOT NULL,
    email TEXT NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS payments (
    id SERIAL PRIMARY KEY,
    amount DOUBLE PRECISION NOT NULL,
    method TEXT NOT NULL,
    external_id TEXT,
    status TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS donations (
    id SERIAL PRIMARY KEY,
    donor_id INT NOT NULL REFERENCES donors(id) ON DELETE CASCADE,
    payment_id INT NOT NULL REFERENCES payments(id) ON DELETE CASCADE,
    donation_date TIMESTAMP NOT NULL DEFAULT now()
);

CREATE TABLE IF NOT EXISTS helps (
    id SERIAL PRIMARY KEY,
    beneficiary_id INT NOT NULL REFERENCES receiver(id) ON DELETE CASCADE,
    payment_id INT NOT NULL REFERENCES payments(id) ON DELETE CASCADE,
    description TEXT NOT NULL
);