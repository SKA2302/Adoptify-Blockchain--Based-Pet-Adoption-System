pragma solidity ^0.5.0;

contract Adoption {
    // Array to store the addresses of adopters
    address[16] public adopters;

    // Adopt a pet
    function adopt(uint petId) public returns (uint) {
        require(petId >= 0 && petId <= 15, "Invalid pet ID");

        // Store the address of the person who adopts the pet
        adopters[petId] = msg.sender;

        // Return the pet ID
        return petId;
    }

    // Retrieve the adopters
    function getAdopters() public view returns (address[16] memory) {
        return adopters;
    }
}
