pragma solidity ^0.4.0;
pragma experimental ABIEncoderV2;
contract Hospital {
    
    string name;
    Receipt[] public receipts;

    

    constructor (string _name) public payable{
        name = _name;
    }
    
    function add(Receipt newReceipt) public {
        receipts.push(newReceipt);
    }
    
    function verify (Receipt verifyingReceipt) public returns (bool) {
        return true;
    }
}

contract Receipt {

    string examination;
    string treatment;
    int cost;
    int id;
    
    address patient;

    constructor(int _cost, string _examination, string _treatment, address _patient) public payable {
        cost = _cost;
        examination = _examination;
        treatment = _treatment;
        id = 1;
        patient = _patient;
    }
}
