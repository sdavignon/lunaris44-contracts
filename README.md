# Lunaris44 token — deployment draft
Not deployed. No live contract address, sale, liquidity pool, listing or token price exists.

Proposed name: Lunaris44. Proposed symbol: LUN44. Decimals: 18.
Target: Ethereum mainnet (chain ID 1); rehearse on Sepolia (11155111).
Supply is a constructor parameter in WHOLE tokens, not smallest units.
Suggested supply for owner review: 44,000,000. This is not approved.
The entire supply goes to the nonzero initialHolder address supplied at deployment.
There is no owner/admin role, post-deployment minting, blacklist, pause, transfer fee,
upgradeability or built-in vesting. Holder concentration remains a risk.
No token confers land, migration rights, a flight, equity or guaranteed returns.

## Reproduce
Run npm ci in this repository root, then npm test.
Compiler: solc 0.8.28; optimizer enabled, 200 runs; EVM target shanghai.
OpenZeppelin Contracts 5.6.1. Build output includes ABI, bytecode and standard JSON input.

## Live deployment requires
Owner approval of name/symbol, exact whole-token supply, recipient address,
allocation/vesting plan, and gas spending limit. User-controlled wallet signs.
Never provide private keys or seed phrases in chat or place them in this repo.
Rehearse on Sepolia, verify source and constructor arguments on explorer,
then review and sign mainnet deployment. Record chain ID, address and transaction.
Creating the contract does not create a market. Liquidity capital, pricing and
exchange listing are separate decisions. Do not activate website buy buttons
until a verified contract and a real trading venue exist.

## Source ownership
This dedicated repository owns future contract development. The website remains
in https://github.com/sdavignon/lunar-colony-registry. This draft was extracted
from that repository at e087e42e5bda655a6469ebec00281d1da35fa077.
See [LAUNCH.md](LAUNCH.md) for outstanding decisions, capital flow and verification.
No deployment keys or financial execution are configured in CI.

The lockfile marks Ganache's bundled macOS-only fsevents dependency optional
so npm ci works on Windows as well as Linux. In restricted Windows environments,
set TEMP and TMP to a writable workspace scratch directory before running tests.
