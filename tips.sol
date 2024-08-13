// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract tips {

    address owner;
    Waitress[] waitress;
    

    constructor(){
        owner = msg.sender;

    }

    //1.ใส่เงินเข้าไปในกระปุก

    function addtips() payable public {

    }

    //2.ดูจำนวนเงินในกระปุก

    function viewtips() public view returns(uint){
        return address(this).balance;
    }

    //3.1 สร้างโครงสร้างของพนักงาน

    struct Waitress{
        address payable walletAddress;
        string name;
    }

    //3.2 เพิ่มพนักงาน

    function addwaitress(address payable walletAddress,string memory name) public {
        bool waitressExist = false;

        if(waitress.length >=1){
        for(uint i=0; i<waitress.length; i++){
           if(waitress[i].walletAddress == walletAddress){
            waitressExist = true;
           }
        }
    }

    if(waitressExist==false){
        waitress.push(Waitress(walletAddress,name));
        
        }
    }

    //4.ลบพนักงานที่จะได้รับทิป
    
    //5.ดูพนักงานที่จะได้รับทิป

    function viewWaitress() public view returns(Waitress[] memory) {
        return waitress;
    }

    //6.จ่ายเงิน

}