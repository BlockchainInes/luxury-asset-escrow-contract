// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/access/Ownable.sol";

/**
 * @title LuxuryAssetPaymentFramework
 * @author [Your Name/GitHub Handle]
 * @notice This contract facilitates secure escrow payments for high-value assets 
 * such as Real Estate and Yachting in the Principality of Monaco.
 * @dev Implements OpenZeppelin's Ownable for secure administrative release of funds.
 */
contract LuxuryAssetPayment is Ownable {
    
    struct Transaction {
        address buyer;
        address seller;
        uint256 amount;
        bool isCompleted;
        bool isDisputed;
        string assetIdentifier; // e.g., "Yacht-Ref-2026-MC"
    }

    mapping(uint256 => Transaction) public transactions;
    uint256 public transactionCounter;

    // Events for off-chain monitoring (essential for Frontend/Stripe integration)
    event PaymentDeposited(uint256 indexed txId, address indexed buyer, uint256 amount);
    event PaymentReleased(uint256 indexed txId, address indexed seller);
    event TransactionDisputed(uint256 indexed txId, string reason);

    constructor() Ownable(msg.sender) {}

    /**
     * @notice Securely deposit funds into the escrow contract.
     * @param _seller The address of the asset seller.
     * @param _assetRef A unique identifier for the luxury asset.
     */
    function depositPayment(address _seller, string memory _assetRef) external payable {
        require(msg.value > 0, "Deposit amount must be greater than zero.");
        
        transactionCounter++;
        transactions[transactionCounter] = Transaction({
            buyer: msg.sender,
            seller: _seller,
            amount: msg.value,
            isCompleted: false,
            isDisputed: false,
            assetIdentifier: _assetRef
        });

        emit PaymentDeposited(transactionCounter, msg.sender, msg.value);
    }

    /**
     * @notice Releases the funds to the seller after verification.
     * @dev Restricted to the contract owner (strategic advisor/escrow agent).
     * @param _txId The unique ID of the transaction.
     */
    function releasePayment(uint256 _txId) external onlyOwner {
        Transaction storage txn = transactions[_txId];
        
        require(!txn.isCompleted, "Funds have already been released.");
        require(!txn.isDisputed, "Cannot release funds while transaction is in dispute.");
        require(address(this).balance >= txn.amount, "Insufficient contract balance.");

        txn.isCompleted = true;
        
        (bool success, ) = payable(txn.seller).call{value: txn.amount}("");
        require(success, "Transfer to seller failed.");

        emit PaymentReleased(_txId, txn.seller);
    }

    /**
     * @notice Flag a transaction in case of legal or logistical discrepancies.
     */
    function triggerDispute(uint256 _txId, string memory _reason) external onlyOwner {
        transactions[_txId].isDisputed = true;
        emit TransactionDisputed(_txId, _reason);
    }
}
