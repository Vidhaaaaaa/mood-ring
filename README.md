# 🌙 Mood Ring NFT

A blockchain-based **Mood Ring NFT** that visually changes its "mood" based on wallet activity or time but reverse. it'll be happy if you're idle and will be sad when you're showing activity
Built with **Sui Move** (smart contracts) + **React (Vite + TypeScript)** frontend.

---

## ✨ Features

* 🎨 Mint a **Mood Ring NFT**
* ⏳ NFT **mood degrades or brightens** over time / activity
* 🔗 **Sui blockchain** smart contract in Move
* 💻 **React + Vite** frontend with wallet connection
* 🔐 Supports **MetaMask / Sui Wallet** integration

---

## 📂 Project Structure

```
mood-ring/
├── move/                     # Sui Move smart contract
│   └── mood_contract/
│       ├── sources/
│       │   └── mood_contract.move
│       └── Move.toml
│
├── frontend/                 # React + Vite + TS frontend
│   ├── src/
│   │   ├── hooks/            # Wallet + Contract logic
│   │   │   ├── useWallet.ts
│   │   │   └── useContracts.ts
│   │   ├── components/       # UI Components
│   │   │   └── WalletConnect.tsx
│   │   └── App.tsx
│   ├── package.json
│   └── tsconfig.json
│
└── README.md
```

---

## ⚡ Prerequisites

* **Node.js** >= 18
* **npm** or **yarn**
* **Sui CLI** → [Install Guide](https://docs.sui.io/build/install)
* **WSL/Linux/macOS** terminal for Move development

---

## 🚀 Setup

### 1️⃣ Clone Repo

```bash
git clone <your-repo-url>
cd mood-ring
```

---

### 2️⃣ Setup Smart Contract (Move)

```bash
cd move/mood_contract
sui client publish --gas-budget 10000
```

* Make sure your wallet has **enough SUI tokens for gas**.
* Copy the **Package ID** printed after publish → you’ll need this in frontend config.

---

### 3️⃣ Setup Frontend

```bash
cd ../../frontend
npm install
```

Install Sui SDK:

```bash
npm install @mysten/sui.js
```

---

### 4️⃣ Configure Contract

Create/edit `src/config/index.ts`:

```ts
export const config = {
  CHAIN_NAME: "Sui Testnet",
  PACKAGE_ID: "<your_sui_package_id>", // 👈 paste from step 2
};
```

---

### 5️⃣ Run Frontend

```bash
npm run dev
```

👉 Open [http://localhost:5173](http://localhost:5173)

* Connect your wallet
* Mint a Mood Ring NFT
* Watch its **mood change** 🎭

---

## 🛠️ Usage

* **Mint** → `mint_mood_ring` creates your NFT
* **Update** → `update_mood` changes its state
* **Get Mood** → `get_mood` returns mood level (0–100)

---

## 🔗 References

* 📘 [Sui Move Docs](https://docs.sui.io/build/move)
* 🛠 [Sui JavaScript SDK](https://github.com/MystenLabs/sui/tree/main/sdk/javascript)
* ⚡ [Vite Docs](https://vitejs.dev/guide/)

---

💜 Built by Vidha
