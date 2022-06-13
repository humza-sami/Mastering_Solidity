pragma solidity ^0.7;

//  For loops are used for iterating over arrays .
//  It can be used if we want to search or edit something in arrays

contract for_loops{

    uint public value = 0; 

    function check_loop(uint n) public {
        for(uint i=0; i < n; i++){
            value = value+1;
        }
    }
}