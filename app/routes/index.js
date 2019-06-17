const swaggerUi = require('swagger-ui-express');
// TODO: Swagger.json is from web as a sample. Will need to edit it.
const swaggerDocument = require('../docs/swagger.json');

const AccountsRoute = require('./accounts-route');
const TransactionsRoute = require('./transactions-route');
const TestRoute = require('./test-route');

module.exports = (app) => {
  app.use(
    process.env.API_VERSION,
    AccountsRoute,
    TransactionsRoute,
    TestRoute,
  );

  app.use(
    '/docs',
    swaggerUi.serve,
    swaggerUi.setup(swaggerDocument, { customCss: '.swagger-ui .topbar { display: none }', explorer: true })
  );
};
