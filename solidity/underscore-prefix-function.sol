contract Test {
	// ok: underscore-prefix-function
	function _smth() internal {
		//
	}

	// ruleid: underscore-prefix-function
	function _not_Internal() public {
		uint256 a = 1;
	}

	// ok: underscore-prefix-function
	function _smth() private {
		uint256 a = 1;
	}

}