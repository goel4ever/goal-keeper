module.exports = {
  owner: {
    get: 'SELECT * FROM account_owner',
    getOne: 'SELECT * FROM account_owner WHERE owner_id = $1',
    getAllByOwner: 'SELECT * FROM account_owner WHERE owner_id = $1',
    add: 'INSERT INTO account_owner (name) VALUES ($1)',
  },
  account: {
    get: 'SELECT * FROM financial_account WHERE owner_id = $1',
    getOne: 'SELECT * FROM financial_account WHERE owner_id = $1 AND account_id = $2',
    add: `INSERT INTO financial_account
                (owner_id, institution_code, account_type_code, last_four, account_nick_name, purpose)
             VALUES ($1, $2, $3, $4, $5, $6)`,
  },
  transaction: {
    get: `SELECT transaction_id, transaction_type, amount, timestamp, account_id, status, purpose FROM transaction
                WHERE account_id = $1
                ORDER BY timestamp DESC`,
    getOne: `SELECT transaction_id, transaction_type, amount, timestamp, account_id, status, purpose FROM transaction
                WHERE account_id = $1 AND transaction_id = $2
                ORDER BY timestamp DESC`,
    recent: `SELECT transaction_id, transaction_type, amount, timestamp, account_id, status, purpose FROM transaction
                WHERE account_id = $1
                ORDER BY timestamp DESC LIMIT 10`,
    add: `INSERT INTO transaction (transaction_type, amount, timestamp, account_id, status)
            VALUES ($1, $2, $3, $4, $5)`,
  },
};
