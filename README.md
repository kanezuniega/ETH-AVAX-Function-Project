# ETH+AVAX FUNCTION PROJECT

This Solidity program is a simple "Librarian" program that demonstrates the basic syntax and functionality of the Solidity programming language. The purpose of this program is to serve as a starting point for those who are new to Solidity and want to get a feel for how it works.

## Description

This program is a simple contract written in Solidity, a programming language used for developing smart contracts on the Ethereum blockchain. The contract has functions that uses "revert()", "assert()" and, "require()" to demonstrate a real-life library. 

## Getting Started

### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., Assessment.sol). Copy and paste the following code into the file:

```javascript
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


```

To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.4" (or another compatible version), and then click on the "Compile Assessment.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "Librarian" contract from the dropdown menu, and then click on the "Deploy" button.

Once the contract is deployed, you can interact with it's different functions by adding values. Click on the "Librarian" contract in the left-hand sidebar, and then choose 3 functions: addBook, removeBook, and BorrowBooks. Finally, after adding values, click on the "transact" button to execute the function and retrieve see how the program will perform.

## Authors

ZUNIEGA, Kane Nathaniel O.
## FEU Institute Of Technology


## --- License -------

This project is licensed under the MIT License - see the LICENSE.md file for details
