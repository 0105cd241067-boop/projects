# 🌱 GreenToken

## Project Description
GreenToken is a blockchain-based incentive system that rewards users for performing environmentally friendly actions — such as recycling, using renewable energy, or reducing carbon emissions. Each action earns users $GTN tokens as proof of their contribution to sustainability.

## Project Vision
To empower communities and individuals to take climate action through transparent, decentralized, and rewarding mechanisms. GreenToken envisions a world where positive environmental impact is measured and incentivized using blockchain technology.

## Key Features
- **Eco-Incentive Rewards:** Users receive tokens for verified eco-friendly actions.
- **Transparent Ledger:** All rewards are publicly viewable on the blockchain.
- **Simple Token Transfers:** Users can transfer GreenTokens to others easily.
- **Admin Controls:** Only the contract owner can issue rewards to prevent abuse.

---

### 🛠️ Smart Contract Overview
| Function | Description |
|-----------|--------------|
| `transfer(address _to, uint256 _amount)` | Send tokens to another address |
| `rewardForAction(address _to, uint256 _amount, string calldata _action)` | Mint and distribute tokens for verified actions |
| `balanceOf(address _account)` | View token balance of an address |

---

### 🧱 Tech Stack
- **Language:** Solidity ^0.8.20  
- **Framework:** Hardhat / Foundry / Truffle (optional)  
- **Network:** Ethereum / Polygon / any EVM-compatible chain  

---

### 🚀 Getting Started
```bash
git clone https://github.com/yourusername/GreenToken.git
cd GreenToken
npm install
npx hardhat compile
npx hardhat test
<img width="1479" height="650" alt="{32F1AFBE-3423-48A7-AE20-BC6C448D5752}" src="https://github.com/user-attachments/assets/fd30be10-4151-4a9f-8376-82df2bd565ed" />
