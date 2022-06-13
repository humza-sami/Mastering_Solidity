pragma solidity ^0.7;

// 3 types of Logging Errors are used in solidity.
// Assert --> It Checks certain conditions after state update. It is used for internal error checking
// Require  --> It Checks certain conditions before updating the sates. It is used for validating inputs
// Revert --> It revert the changes and stops the execution. It is used with if else

// ------------------------------------------------------------

// Assert Consume All gas fees if it fails or not
// Require Consume gas fees only when it does not fail
// Revert will revert changes and refund unused gas

contract Errors{

    uint a = 10;
    uint b = 20;

    function check_assert() public {
        assert(a>b);
    }

    function check_require() public {
        require(a>b,"A is less than B");
    }

    function check_revert() public {
        if (a<b){
            revert("A is less than B");
        }
    }


}