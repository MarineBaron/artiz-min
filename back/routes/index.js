const router = require('express').Router();

router.get('/', function(req, res, next) {
  res.status(200).json({data: "BackApi is up"});
});

router.use('/testdb', require('./testdb'));
module.exports = router;
