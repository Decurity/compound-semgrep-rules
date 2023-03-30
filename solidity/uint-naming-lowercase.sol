contract Test {
	// ok: uint-naming-lowercase
	function toUInt8() {}
	// ruleid: uint-naming-lowercase
	uint256 constant MaxUint8 = 255;

    // ruleid: uint-naming-lowercase
	function toUint8() {}
}
