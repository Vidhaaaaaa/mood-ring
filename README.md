```markdown
# Mood Ring NFT

A blockchain-based “Mood Ring” NFT that changes its mood based on user activity but reverse, if you're active, it'll be sad, and if you're idle, it'll become happy.  
Built with **Sui Move** (smart contracts) and a **React + Vite + TypeScript** frontend.

---

## Features

- Mint a Mood Ring NFT.
- Mood decays based on wallet activity.
- Query current mood of your NFT.
- Frontend wallet connection via **MetaMask** (or any Sui-compatible wallet).

---

## Folder Structure

```

mood-ring/
├─ move/                     # Sui Move smart contract
│  ├─ mood\_contract/
│  │  ├─ Sources/
│  │  │  └─ mood\_contract.move
│  │  └─ Move.toml
├─ frontend/                  # React + Vite frontend
│  ├─ src/
│  │  ├─ hooks/
│  │  │  ├─ useWallet.ts
│  │  │  └─ useContracts.ts
│  │  ├─ components/
│  │  │  └─ WalletConnect.tsx
│  │  └─ App.tsx
│  ├─ package.json
│  └─ tsconfig.json
└─ README.md

````

---

## Requirements

- Node.js >= 18
- npm or yarn
- Sui CLI: [Install guide](https://docs.sui.io/build/install)
- WSL1/2 or Linux/macOS terminal for Move development

---

## Setup

### 1. Clone repo

```bash
git clone <your-repo-url>
cd mood-ring
````

### 2. Setup Sui Move contract

```bash
cd move/mood_contract
sui client publish --gas-budget 10000
```

* Make sure your wallet has enough SUI tokens for gas.
* Note the **package ID** after publish; you’ll need it in the frontend.

### 3. Setup frontend

```bash
cd ../../frontend
npm install
```

* Ensure `@mysten/sui.js` is installed:

```bash
npm install @mysten/sui.js
```

### 4. Configure frontend

Edit `src/config/index.ts` (or wherever your config is):

```ts
export const config = {
  CHAIN_NAME: "Sui Testnet",
  PACKAGE_ID: "<your_sui_package_id>",
};
```

### 5. Run frontend

```bash
npm run dev
```

* Open the browser at `http://localhost:5173`.
* Connect your wallet and interact with Mood Ring NFTs.

---

## Usage

* Mint a new Mood Ring NFT using `mint_mood_ring`.
* The NFT's mood changes automatically based on activity.
* Query your NFT mood with `get_mood`.
* Update the mood using `update_mood` periodically or on user events.

---

## Notes

* Keep **Move contracts** and **frontend** in separate terminals (WSL vs Windows) if using different OSes.
* Always check gas balance for Sui transactions.
* `useWallet` and `useContracts` hooks manage wallet connection and contract interactions.

---

## References

* [Sui Move Documentation](https://docs.sui.io/build/move)
* [Sui JavaScript SDK](https://github.com/MystenLabs/sui/tree/main/sdk/javascript)
* [Vite + React + TypeScript Setup](https://vitejs.dev/guide/)
