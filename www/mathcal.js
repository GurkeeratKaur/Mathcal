var exec = require('cordova/exec');

// exports.coolMethod = function (arg0, success, error) {
//     exec(success, error, 'mathcal', 'coolMethod', [arg0]);
// };
exports.add = function (arg0, success, error) {
    exec(success, error, 'mathcal', 'add', [arg0]);
};
exports.subtract = function (arg0, success, error) {
    exec(success, error, 'mathcal', 'subtract', [arg0]);
};
