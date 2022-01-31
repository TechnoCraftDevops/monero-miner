# CPU MINER for xmr

## 1- Create an account
https://minergate.com

## 2- Build Container
```
sudo docker built -t 'miner-xmr' .
```
## 3- Run container
```
sudo docker docker run --rm -ti miner-xmr bash
```
## 4- Run CPU miner (inside container)
```
cpuminer -a cryptonight -o stratum+tcp://xmr.pool.minergate com:45700 -u EMAIL_CREDENTIALS
```
-a cryptonight : algorithme for xmr crypto

-o stratum+tcp://xmr.pool.minergate.com:45700 : url to pool

-u EMAIL_CREDENTIALS : used for sign in 'setp 1'

## 5- Check Results 

1- go to https://minergate.com

2- on Dashboard see "Monero" card it will be active

3- your work is under `Good shares` and `Bad shares`



### refrences

https://gamer-aesthetic.com/blogs/gamer-aesthetic-blog/miner-crypto-avec-raspberry-pi

https://github.com/tpruvot/cpuminer-multi

https://minergate.com
