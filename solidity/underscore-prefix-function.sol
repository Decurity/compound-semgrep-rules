contract Test {
	// ok: underscore-prefix-function
	function _smth() internal {
		//
	}

	// ruleid: underscore-prefix-function
	function _not_Internal(bytes opa) public {
		uint256 a = 1;
	}

	// ok: underscore-prefix-function
	function _smth(string lulz) private {
		uint256 a = 1;
	}

}