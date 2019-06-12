
pragma solidity ^0.5.1;


contract Account {
    string private name;
    string private lastName;
    uint private age;
    uint private balance;
    
    constructor(string memory newName, string memory newLastName) public {
        name = newName;
        lastName = newLastName;
    }
    
    function setName(string memory newName) public {
        name = newName;
    }
    
    function getName() public view returns (string memory) {
        return name;
    }
    
    function setLastName(string memory newLastName) public {
        lastName = newLastName;
    }
    
    function getLastName() public view returns (string memory) {
        return lastName;
    }
    
    function setAge(uint newAge) public {
        age = newAge;
    }
    
    function getAge() public view returns (uint) {
        return age;
    }
    
    function getBalance() public view returns (uint) {
        return balance;
    }
    
    function deposit(uint amount) public returns (bool) {
        if (amount > 0){
            balance = balance + amount;
        return true;
        }
    }
    
    function withdraw(uint amount) public returns (bool) {
        if (balance > amount){
            balance = balance - amount;
        return true;
        }
    }
}