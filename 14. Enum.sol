pragma solidity ^0.7;

//--  ENUM is used for variables which have predined values   --//

// For Example A varibale name 'STATUS' can have --> Pending , In Progress , Completed Values 

contract Order
{
    enum STATUS {pending,shipped,accepted,cancelled}

    STATUS public my_order_status;

    function start_shipping() public {
        require(my_order_status==STATUS.pending,"You cant ship !");
        my_order_status = STATUS.shipped;
    }
}