pragma solidity 0.7;

contract functions{


    // Function with Single Return

    function fun_1() public returns(int){
        return 5;
    }


    // Function with Array Return

    function fun_2() public returns(uint [] memory){
        uint[] memory A = new uint[](5);
        A[3]=69;
        return A;
    }

    // Function with Multiples return

    function fun_3() public returns(bool,int,string memory){
        return(false,55,"Humza");
    }

}