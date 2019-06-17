const connection = require('./connection');
const QUERY = require('./db-query');

module.exports = class CommentsDelegate {
  static getAccountsByOwner(ownerId, accountId) {
    if (connection._connected) {
      if (accountId) {
        return connection.query(QUERY.account.getOne, [ownerId, accountId]);
      }

      return connection.query(QUERY.account.get, [ownerId]);
    }

    return Promise.reject('Error connecting to the database');
  }

  static getCommentsByPostId(postId) {
    if (connection._connected) {
      return connection.query(QUERY.comments.getOne, [postId]);
    }

    return Promise.reject('Error connecting to the database');
  }

  static addComments(commentRequest) {
    if (connection._connected) {
      return connection.query(QUERY.comments.add, [
        commentRequest.userId,
        commentRequest.postId,
        commentRequest.text,
      ]);
    }

    return Promise.reject('Error connecting to the database');
  }

  // TODO
  static updateComments(commentRequest) {
    if (connection._connected) {
      return connection.query(QUERY.comments.add, [
        commentRequest.userId,
        commentRequest.postId,
        commentRequest.text,
      ]);
    }

    return Promise.reject('Error connecting to the database');
  }

  // TODO
  static deleteComments(commentId) {
    if (connection._connected) {
      return connection.query(QUERY.comments.getOne, [commentId]);
    }

    return Promise.reject('Error connecting to the database');
  }
};
