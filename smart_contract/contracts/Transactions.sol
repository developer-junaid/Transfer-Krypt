// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;


// Contract (Class)
contract Transactions {
    uint256 transactionCount; // Hold number of transactions

    // Event (Event to be emitted) 
    event Transfer(address from, address reciever, uint amount, string message, uint256 timestamp, string keyword);

    // Structure (like object)
    struct TransferStruct {
        address sender;
        address receiver;
        uint amount;
        string message;
        uint256 timestamp;
        string keyword;
    }

    // Array of transactions 
    // Type name
    // Array[] of transactions
    TransferStruct[] transactions;

    // Functions
    function addToBlockchain(address payable reciever, uint amount, string memory message, string memory keyword) public{
    
        transactionCount +=1 ;

        // Pushing transactions in the array (Store transactions)
        transactions.push(TransferStruct(msg.sender, reciever, amount, message, block.timestamp, keyword)); 
    
        // Emit event (transfer amount to reciever)
        emit Transfer(msg.sender, reciever, amount, message, block.timestamp, keyword);

    }

    // function name() visibility view returns (returnType location) {body}
      function getAllTransactions() public view returns (TransferStruct[] memory){
          return transactions;
    }

      function getTransactionCount() public view returns (uint256) {
          return transactionCount;
    }


}