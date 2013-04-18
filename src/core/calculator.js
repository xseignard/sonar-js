'use strict';
var Calculator = function() {

	/**
	 * Add two numbers
	 * @param {Number} a - first number to add
	 * @param {Number} b - second number to add
	 * @return {Number} the result of the addition
	 */
	var _add = function(a, b) {
		return a + b;
	};

	return {
		add : _add
	};
};

// module exports
module.exports = Calculator;
