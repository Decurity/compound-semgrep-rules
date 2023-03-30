pragma solidity 0.8.15;

abstract contract Test {

    /** Events **/
    // ruleid: lack-of-indexed-parameter
    event Check1(address arg1, address indexed arg2);

    // ruleid: lack-of-indexed-parameter
    event Check2(address indexed arg1, address arg2);

    // ok: lack-of-indexed-parameter
    event Check3(address indexed arg1, address indexed arg2);

    // ruleid: lack-of-indexed-parameter
    event Check4(address indexed arg1, address arg2, address indexed arg3);

    // ruleid: lack-of-indexed-parameter
    event Check5(address indexed arg1, address indexed arg2, address indexed arg3, address arg4);

    // ruleid: lack-of-indexed-parameter
    event Initialized(address govTimelock, address localTimelock);

    // ruleid: lack-of-indexed-parameter
    event ProposalCreated(address rootMessageSender, uint id, address[] targets, uint[] values, string[] signatures, bytes[] calldatas, uint eta);

    // ok: lack-of-indexed-parameter
    event ProposalExecuted(uint id);


    // ok: lack-of-indexed-parameter
    function foo(address arg1) public returns(address){
        return arg1;
    }

    // ok: lack-of-indexed-parameter
    function approve(address spender, uint256 amount) virtual external returns (bool);
    
    // ok: lack-of-indexed-parameter
    function allowance(address owner, address spender) virtual public view returns (uint256);
}