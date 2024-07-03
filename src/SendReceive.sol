// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

contract SendReceiveEther{


    // we can Send ethers via 3 methods 
    // transfer, send and call.- most widely used now is call 
    //

    receive() external payable { }// if the msg.sender.dat has no value
    fallback() external payable { } // if it has some - any value

    function getBalance() public view returns (uint){
        return address (this).balance;
    }

}

contract SendEther{
     function sendViaSend(address payable _to) public payable {
         _to.transfer(msg.value);
     }
     
     function sendviaCall (address payable _to ) public payable {
        (bool sent, bytes memory data) = _to.call{value: msg.value} ("");
        require (sent, "Failed to send ehter");
     }
} 