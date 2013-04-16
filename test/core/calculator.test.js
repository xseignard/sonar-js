'use strict';
var libpath = process.env.TEST_COV ? 'src-cov' : 'src',
    assert = require('assert'),
	Calculator = require('../../'+ libpath +'/core/calculator');

describe('Calculator', function() {

	describe('#add()', function() {
		it('should make an addition', function() {
			var calculator = new Calculator(),
				result = calculator.add(2,3);
			assert.equal(result, 5);
		});
		it('should make an addition with negative numbers', function() {
			var calculator = new Calculator(),
				result = calculator.add(2,-3);
			assert.equal(result, -1);
		});
	});
});