contract Test {
	// ok: missing-constructor-sanity-checks
	constructor(Configuration memory kek) {
		require(kek.asd > 123, "Should be higher than 123");
	}
}

contract Test2 {
	// ok: missing-constructor-sanity-checks
	constructor(uint256 kek) {
		require(kek > 123, "Should be higher than 123");
	}
}

contract Test3 {
	// ruleid: missing-constructor-sanity-checks
	constructor(string aha, uint256 kek) {
		uint a = 123;
	}
}

contract Test4 {
	// ok: missing-constructor-sanity-checks
	constructor(uint256 kek) {
		uint a = kek;
		require(a > 123, "Should be higher than 123");
	}
}

contract Test5 {
	// ruleid: missing-constructor-sanity-checks
	constructor(Configuration memory kek) {
		uint a = 123;
		require(a > 123, "Should be higher than 123");
	}
}

contract Test6 {
	// ruleid: missing-constructor-sanity-checks
	constructor(bool lol, uint256 kek) {
		require(kek > 123);
	}
}

contract Test7 {
	// ok: missing-constructor-sanity-checks
	constructor(uint256 kek) {
		require(kek > 123);
	}
}

contract Test8 {
	// ruleid: missing-constructor-sanity-checks
	constructor(byte32 lul, Configuration memory kek, string[] pack) {
		uint a = 123;
		require(pack.length > 123, "Should be higher than 123");
	}
}

contract Test9 {
	// ruleid: missing-constructor-sanity-checks
	constructor(uint256 kek, bool lol) {
		require(kek > 123);
	}
}

contract Test10 {
	// ruleid: missing-constructor-sanity-checks
	constructor(uint256 kek, bool lol) {
		require(lol == true);
	}
}

contract Test11 {
	// ok: missing-constructor-sanity-checks
	constructor(bool lol, uint256 kek) {
		require(kek > 123);
		require(lol == false);
	}
}
