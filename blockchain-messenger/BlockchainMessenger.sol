// SPDX-License-Identifier: MIT
pragma solidity >= 0.8.15;

contract BlockchainMessenger {
    uint private updatesCounter;
    address private owner;
    string public message;

    constructor() {
        owner = msg.sender;
    }

    function updateMessage(string memory _message) public {
        require(msg.sender == owner);
        message = _message;
        updatesCounter++;
    }

    function getNumOfUpdates() public view returns(uint){
        return updatesCounter;
    }
}