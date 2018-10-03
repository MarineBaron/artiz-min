const router = require('express').Router();
const path = require('path');
const Sequelize = require('sequelize');
const basename = path.basename(__filename);
const env = process.env.NODE_ENV || 'development';
const config = require(__dirname + '/../config/config.json')[env];

router.get('/', function(req, res, next) {
  let sequelize;
  if (config.use_env_variable) {
    sequelize = new Sequelize(process.env[config.use_env_variable], config);
  } else {
    sequelize = new Sequelize(config.database, config.username, config.password, config);
  }

  sequelize
    .authenticate()
    .then(() => {
      res.status(200).json({data: "TestDB OK"});
    })
    .catch((err) => {
      res.status(500).json({message: "TestDB KO"});
    });
});

module.exports = router;
