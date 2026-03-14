# Luxury Asset Escrow Payment System
A Solidity-based smart contract for secure luxury asset transactions using an automated escrow system on Ethereum.

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

## 🚀 Features
- **Escrow Mechanism:** Funds are held by the contract and only released by the buyer.
- **Transaction Tracking:** Every payment is assigned a unique ID for transparency.
- **Public Verifiability:** All records are stored immutably on the Ethereum blockchain.
