// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
//ZUNIEGA , Kane Nathaniel O.
// FEU Institute of Technology
contract Librarian {
    address public owner;
    uint256 public counter;

    constructor() {
        owner = msg.sender;
        counter = 0;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Only the owner can perform this action");
        _;
    }


    function addBook(uint256 _book) public onlyOwner {
        require(_book > 0, "Amount must be greater than 0");
        counter += _book;


        assert(counter >= _book); 
    }


    function removeBook(uint256 _book) public onlyOwner {
        require(_book > 0, "Amount must be greater than 0");
        require(counter >= _book, "Counter value is too low");

        counter -= _book;


        assert(counter <= counter + _book);  
    }

   
    function getCounter() public view returns (uint256) {
        return counter;
    }

 
    function BorrowBooks(uint256 _BookValue) public onlyOwner {
        if (_BookValue > 100) {
            revert("Reached limit of borrowed books today.");  
        }


        counter += _BookValue;
    }
}
