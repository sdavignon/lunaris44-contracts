# Launch decisions and evidence

Status: development draft; not independently audited or authorized for deployment.
Website: https://lunaris44.space
Website repository: https://github.com/sdavignon/lunar-colony-registry
Contract extracted from its contracts directory at commit e087e42e5bda655a6469ebec00281d1da35fa077.

## Owner decisions still required

- Fixed whole-token supply (44,000,000 is an unapproved example).
- Initial recipient and custody arrangement. The supplied address has not been confirmed as the recipient.
- Token allocation across fundraising, liquidity, team and reserves; vesting, if any, must be external to this immutable ERC-20.
- Fundraising target, funded activities, issuer/jurisdiction, buyer eligibility and reviewed offering terms.
- Fundraising method: direct sale/auction and subsequent liquidity, or trading with a separately documented treasury disposition policy. No sale contract has been selected or implemented.
- Trading venue/version, quote asset, initial price, liquidity token amount, quote-asset budget, slippage limits, LP ownership and withdrawal/lock policy.
- Gas spending cap and wallet signer.

## Capital flow

Creating a token does not raise funds. Seeding a trading pool commits assets to liquidity; swaps change pool reserves. Pool market capitalization is not cash available to the project. A sale or auction must explicitly define where proceeds go, what buyers receive, limits and any refund conditions. Do not treat LP withdrawals as an undisclosed fundraising mechanism.

For a US-facing offering, have qualified counsel assess the actual offering structure and marketing before soliciting investment. A plain ERC-20 and a no-equity disclaimer do not settle securities treatment. Reference: https://www.sec.gov/resources-small-businesses/capital-raising-building-blocks/transactions-involving-crypto-assets
Pool mechanics: https://developers.uniswap.org/docs/protocols/v2/concepts/pools

## Release sequence

1. Approve parameters and allocation plan, review code and run locked dependency tests. Record commit and compiler output.
2. Rehearse deployment and intended trading/fundraising flow on a suitable test environment; test wallet signing and source verification. Local EVM tests alone do not complete this step.
3. Prepare an unsigned deployment transaction from the reviewed build. Confirm chain ID, recipient, constructor units and gas limit in the user's wallet.
4. After owner signing, record transaction hash, receipt, chain ID, address, deployed code, constructor arguments and verified explorer source. Check metadata, total supply and initial allocation on-chain.
5. Prepare separately reviewed sale/liquidity transactions with exact amounts, spender, venue and price. Owner signs only after reviewing these values.
6. Verify live pool reserves and quotes and a user-authorized small buy/sell. Record transaction evidence; no volume-generation or self-trading automation.
7. Update website status and canonical contract/pool links through the website repository and its native Base44 publishing process. Verify public page and private registration access controls.

## Ownership and recovery

The user-controlled wallet executes chain transactions; GitHub CI tests only. No Codex scheduler or background publisher owns launch.
This contract has no upgrade, pause, admin or recovery mechanism. Deployment cannot be undone. If wrong, do not advertise the address: document the incident and prepare a new deployment for review. LP withdrawal rights depend on the separately chosen pool ownership/lock policy, not this token contract.
Website changes can be reverted through its repository and republished. Never claim that this reverses blockchain transactions.
