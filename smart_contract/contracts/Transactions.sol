// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract Transactions {
    uint256 transactionCount;

    // function to emit or call later on
    // address -type , from -variable name
    event Transfer(address from, address receiver, uint amount, string message, uint256 timestamp, string keyword );

    // structure similar to an object to specify
    // what properties does this have and what types
    struct TransferStruct {
        address sender;
        address receiver;
        uint amount;
        string message;
        uint256 timestamp;
        string keyword;
    }

    // transactions would be an array of
    // transfer structures above
    TransferStruct[] transactions; 

    function addToBlockChain(address payable receiver, uint amount, string memory message, string memory keyword) public {
        transactionCount += 1;
        transactions.push(TransferStruct(msg.sender, receiver, amount, message, block.timestamp, keyword));

        emit Transfer(msg.sender, receiver, amount, message, block.timestamp, keyword);
    }  

    function getAllTransactions() public view returns (TransferStruct[] memory) {
        return transactions;
    }  

    function getTransactionCount() public view returns (uint256) {
        return transactionCount;
    }  
}