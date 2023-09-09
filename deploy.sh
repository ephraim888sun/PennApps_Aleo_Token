
WALLETADDRESS="aleo1t4hxm7lh9pqc7akvmztw6v2wk8dnve3vq2qp8spa0ce433vj3crs3yk5jt"
PRIVATEKEY="APrivateKey1zkpK3DnZ43diW2mxhV8Fz1w1oQAoboFDVxr3bCU1S5MBBqo"

APPNAME="token_15663"
PATHTOAPP=$(realpath -q $APPNAME)

RECORD="{
  owner: aleo1t4hxm7lh9pqc7akvmztw6v2wk8dnve3vq2qp8spa0ce433vj3crs3yk5jt.private,
  microcredits: 50000000u64.private,
  _nonce: 2086478713189584721524245325893122115492441872484623246945247165906162616151group.public
}"

cd .. && snarkos developer deploy "${APPNAME}.aleo" --private-key "${PRIVATEKEY}" --query "https://vm.aleo.org/api" --path "./${APPNAME}/build/" --broadcast "https://vm.aleo.org/api/testnet3/transaction/broadcast" --fee 1000000 --record "${RECORD}"``