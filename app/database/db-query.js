module.exports = {
  owner: {
    get: 'SELECT * FROM account_owner',
    getOne: 'SELECT * FROM account_owner WHERE owner_id = $1',
    getAllByOwner: 'SELECT * FROM account_owner WHERE owner_id = $1',
    add: 'INSERT INTO account_owner (name) VALUES ($1)',
  },
  account: {
    get: 'SELECT * FROM financial_account WHERE owner_id = $1',
    getOne: 'SELECT * FROM financial_account WHERE account_id = $1',
    add: 'INSERT INTO financial_account ' +
          '(owner_id, institution_code, account_type_code, last_four, account_nick_name, purpose) ' +
          'VALUES ($1, $2, $3, $4, $5, $6)',
  },
};
