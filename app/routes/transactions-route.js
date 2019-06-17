const express = require('express');
const TransactionsDelegate = require('../database/transactions-delegate');

const router = express.Router();

router.get('/transactions/:accountId', (req, res) => {
  TransactionsDelegate.getTransactions(req.params.accountId)
    .then((result) => {
      if (result && result.rows && result.rows.length > 0) {
        res.status(201).send({ data: result.rows });
      } else {
        res.status(201).send({ data: [] });
      }
    }, (error) => {
      res.status(201).send({ error: error.detail });
    });
});

router.get('/transactions/:accountId/recent', (req, res) => {
  TransactionsDelegate.getRecentTransactions(req.params.accountId)
    .then((result) => {
      if (result && result.rows && result.rows.length > 0) {
        res.status(201).send({ data: result.rows });
      } else {
        res.status(201).send({ data: [] });
      }
    }, (error) => {
      res.status(201).send({ error: error.detail });
    });
});

router.get('/summary', (req, res) => {
  res.status(201).send('Test Route Hit');
});

module.exports = router;
