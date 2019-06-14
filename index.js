var oracledb = require('oracledb')
require('dotenv').config({ path: `${process.env.ENV_PATH}/oracle.env` });

var connectionString = process.env.server + '/' + process.env.service
var config = {
    user: process.env.username,
    password: process.env.password,
    connectionString: connectionString
};

console.log('\n\n\n\n Attempting to connect...\n\n')

oracledb.getConnection(config).then(function (connection, err) {
    if (connection && !err) {
        console.log('*** connected ***')
    }
}).catch(function (err) {
    console.error('error initializing connection: ')
    console.error(err)
})


setTimeout(function () {
}, 100000 * 1000)
