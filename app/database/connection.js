const { Pool } = require('pg');
// const { Client } = require('pg');

// const client = new Client();
// client.connect();

const pool = new Pool({
  host: process.env.PGHOST,
  database: process.env.PGDATABASE,
  // user: process.env.PGUSER,
  // password: process.env.PGPASSWORD,
  port: process.env.PGPORT,
  max: 20,
});

// pool.query('SELECT * from  users', (err, res) => {
//   console.log(err ? err.stack : res.rows);
// });

pool.connect((err, client, release) => {
  pool._connected = !err;
});

module.exports = pool;
