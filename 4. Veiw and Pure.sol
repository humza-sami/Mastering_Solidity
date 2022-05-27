pragma solidity ^0.7;


// Veiw modifier does not allow user to change state variable values. 
// Veiw function can only be used for veiwing state vairbales data.
// ----------------------------------------------------
// Pure modifier does not allow user to change state variable values. 
// Pure function does not allow user for veiwing state variables data.

contract Veiw_and_Pure{

    uint x = 1;


    function veiw_x() public view returns(uint){
        return x;
    }

    // Use pure when you dont want to use state variables.

    function pure_x() public pure returns(uint){
        uint xx = 5;
        return xx;
    }

}