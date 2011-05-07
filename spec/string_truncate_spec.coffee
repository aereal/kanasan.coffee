String = require("../lib/string_truncate.js").String

describe('String#truncate', ->
	it "not truncate when string has less than 30 characters", ->
		expect("abcdefghi".truncate()).toEqual("abcdefghi")

	it "truncate when string has more than 30 characters", ->
		expect("abcdefghijklmnopqrstuvwxyz1234567890".truncate()).toEqual("abcdefghijklmnopqrstuvwxyz1...")

	it "truncate when string has more than $n characters", ->
		expect("abcdefghi".truncate(6)).toEqual("abc...")
)

