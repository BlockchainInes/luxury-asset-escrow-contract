🚀 Luxury Asset Escrow - Technical Documentation
Below is a visual walkthrough of the deployment and execution phases of the LuxuryAssetPayment smart contract.

1. Contract Deployment & Verification
The contract was developed using the Remix IDE and successfully deployed to the Ethereum Sepolia Testnet. The terminal confirms successful verification on Blockscout and Routescan.

2. Escrow Initiation (Deposit)
To start a transaction for a luxury asset (e.g., "Yacht_01"), the buyer calls the depositPayment function. This step registers the seller's address and the asset identifier within the immutable ledger.

3. Web3 Wallet Interaction
All transactions require secure authorization. This image shows the MetaMask interface confirming the interaction with the smart contract, ensuring transparency and security for the user.

4. Finalized Transaction State
Once the payment is released, the contract state updates. The decoded output below confirms:

isCompleted: true: The funds have been successfully transferred to the seller.

isDisputed: false: The transaction was finalized without any legal discrepancies.

assetIdentifier: Correctly mapped to "Yacht_01".

This project features a Smart Contract designed for high-value asset transactions (e.g., luxury yachts or real estate). It ensures trust between buyers and sellers by holding funds in escrow until the delivery is confirmed.

## 🛠 Technical Stack
- **Language:** Solidity
- **Environment:** Remix IDE
- **Network:** Ethereum Sepolia Testnet
- **Wallet:** MetaMask

## 🔗 Blockchain Proof (Live Demo)
The contract and its lifecycle can be verified on Etherscan:

1. **Smart Contract Address:** [0x47FcC1aE8De00ab6500dfBD299C355b8B0c84cd1](https://sepolia.etherscan.io/address/0x47fcc1ae8de00ab6500dfbd299c355b8b0c84cd1)

2. **Contract Deployment:** [View Successful Deployment](https://sepolia.etherscan.io/tx/0xf2f0f4a211847e761623916962f928a306c599903932e67df1441a50a1230d59)

3. **Secure Deposit (Escrow Locked):** [View Deposit for "Yacht_01"](https://sepolia.etherscan.io/tx/0x6fb35134242111193132e0388997991041169548492d594586d1f76f7f32d4bc) 
   *(Note: This transaction confirms the asset registration in the escrow system.)*

4. **Successful Release (Final Payout):** [View Final Payment](https://sepolia.etherscan.io/tx/0x78591e2ddb0dc2ea3a46c2397dab68261f5a004e1722576085f56e2ffbe7b625)
   *(Note: This confirms the final state change and successful contract execution.)*

📸 Technical Implementation & Proof
Below is the step-by-step verification of the contract's functionality.

1. Contract Deployment
Description: This shows the successful deployment of the LuxuryAssetPayment contract using the Remix IDE. The terminal confirms that the contract source code has been verified on Blockscout and Routescan, ensuring full transparency.

2. Initiating the Escrow (Deposit)
Description: In this step, the depositPayment function is called. We register a new transaction by providing the seller's address and the asset reference "Yacht_01". This demonstrated the contract's ability to map real-world assets to blockchain transactions.

3. Web3 Authorization
Description: To ensure security, every transaction must be signed via a Web3 wallet. This screenshot captures the MetaMask confirmation request, showing the interaction with our deployed contract on the Sepolia network.

4. Final Transaction State
Description: After the payment release, we verify the internal state of the contract. The decoded output confirms that the transaction is completed (isCompleted: true) and that no disputes were raised (isDisputed: false), successfully finalizing the deal for "Yacht_01".
