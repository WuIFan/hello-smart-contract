// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract Hello {
    struct Person {
        string name;
        uint256 age;
    }

    // Array to store all persons
    Person[] public persons;

    // Function to add a person
    function addPerson(string memory _name, uint256 _age) public {
        // Add a new person to the array
        persons.push(Person(_name, _age));
    }

    // Function to get the total number of persons
    function getPersonCount() public view returns (uint256) {
        return persons.length;
    }

    // Function to retrieve a person's details by index
    function getPerson(
        uint256 _index
    ) public view returns (string memory, uint256) {
        require(_index < persons.length, "Invalid index");
        Person memory person = persons[_index];
        return (person.name, person.age);
    }
}
