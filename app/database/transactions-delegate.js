const connection = require('./connection');
const QUERY = require('./db-query');

module.exports = class TransactionsDelegate {
  static getTransactions(accountId) {
    if (connection._connected) {
      return connection.query(QUERY.transaction.get, [accountId]);
    }

    return Promise.reject('Error connecting to the database');
  }

  static getRecentTransactions(accountId) {
    if (connection._connected) {
      return connection.query(QUERY.transaction.recent, [accountId]);
    }

    return Promise.reject('Error connecting to the database');
  }
};
