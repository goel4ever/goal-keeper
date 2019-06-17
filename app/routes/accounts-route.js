const express = require('express');
const AccountDelegate = require('../database/accounts-delegate');

const router = express.Router();

router.get('/accounts', (req, res) => {
  AccountDelegate.getAccountsByOwner(1)
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

router.get('/accounts/:id', (req, res) => {
  const accountId = req.params.id;

  AccountDelegate.getAccountsByOwner(1, accountId)
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

module.exports = router;
