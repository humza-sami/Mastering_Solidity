pragma solidity ^0.7;

// Arrays are used for storing series of data of same datatype
// Arrays have Push,Pop and Length methods.

//  ---- Array initialization ----
// datatype [] array;  dynamic array
//  datatype [size] array; Fix size array

contract Arrays{

    uint[] public dynamic_array;
    uint[5] public fix_size_array;
    uint[2] public initialization_array = [1,2];

    function push(uint n) public {
        dynamic_array.push(n);
    }

    function pop(uint n) public {
        dynamic_array.pop();
    }

    function remove(uint index) public {
        delete dynamic_array[index];
    }
}