pragma solidity ^0.7;

// Struct are custom datatypes. In Structs you can define different vairables of difrrent datastypes

contract Store
{
    struct item
    {
        string name;
        uint qty;
        bool buy;
    }

    item[] public cart;

    function add_to_cart(string memory _name,uint _qty,bool _buy) public 
    {
        cart.push(item(_name,_qty,_buy));

    }

    function get_cart_item(uint index) public view returns(string memory,uint qty)
    {
        item memory dummy = cart[index];

        return (dummy.name,dummy.qty);

    }

}
