String::truncate = (delim=30) ->
	if delim >= @length then @ else @slice(0, delim - 3).concat("...")

exports = {} unless exports
exports.String = String

