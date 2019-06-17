const connection = require('./connection');
const QUERY = require('./db-query');

module.exports = class AccountsDelegate {
  static getAccountsByOwner(ownerId, accountId) {
    if (connection._connected) {
      if (accountId) {
        return connection.query(QUERY.account.getOne, [ownerId, accountId]);
      }

      return connection.query(QUERY.account.get, [ownerId]);
    }

    return Promise.reject('Error connecting to the database');
  }
};
