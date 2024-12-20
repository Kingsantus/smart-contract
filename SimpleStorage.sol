// SPDX-License-Identifier: MIT
pragma solidity  0.8.24;

contract SimpleStorage {
    // Favorite Number Initialized to zero if no value is given.
    uint256 myFavoriteNumber; // 0

    // structure by giving everyone identity
    struct Person {
        uint256 favoriteNumber;
        string name;
    }

    // dynamic array
    // if [3] will result to static array
    Person[] public  listOfPeople; // []

    // dictionary
    mapping (string => uint256) public  nameToFavoriteNumber;

    function store(uint256 _favoriteNumber) public virtual {
        myFavoriteNumber = _favoriteNumber;
        myFavoriteNumber = myFavoriteNumber + 1;
    }
    
    function retrieve() public  view returns (uint256) {
        return myFavoriteNumber;
    }

    // calldata, memory, storage
    function addPerson(string memory _name, uint256 _favoriteNumber) public  {
        listOfPeople.push( Person(_favoriteNumber, _name) );
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}
