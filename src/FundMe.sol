// SPDX-License-Identifier: MIT

pragma solidity 0.8.19;


  contract FundMe {
    
    //payable keyword allows ud to send ehters through function
    function Fund () public payable  {
         
         require(msg.value > 0.5e18, "Not enough fund");  
         // this value of the trancsaction acan be accssed through msg.value
         //This represents the number of 'wei' sent with the message
         //To enforce a minimum threshold of one ether sent via our function,
         // we can utilize the require keyword.

    }
  }