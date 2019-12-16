# coldstaking

Capricoin+ wallet/daemon management utilities - version 0.12

* This script installs, updates, and manages single-user capricoinplus daemons and wallets
* This script provides the ability to create a new wallet and manage staking node (cold staking functionality)

# Install/Usage

To install coldstaking do:

    sudo apt-get install python git unzip pv jq dnsutils
    cd ~ && git clone https://github.com/dasource/coldstaking

To get the current status of capricoinplusd, do:

    coldstaking/coldstaking status

To get the RPC command `getinfo` and `getwalletinfo` from capricoinplusd, do:

    coldstaking/coldstaking getinfo



To perform a new install of capricoinplus, do:

    coldstaking/coldstaking install

To update to the latest version of capricoinplus, do:

    coldstaking/coldstaking update

To overwrite an existing capricoinplus install, do:

    coldstaking/coldstaking reinstall

To restart (or start) capricoinplusd, do:

    coldstaking/coldstaking restart



To create a new wallet on this staking node, do:

    coldstaking/coldstaking stakingnode init

To create a new public key on this staking node, do:

    coldstaking/coldstaking stakingnode new

To get a list of public keys on this staking node, do:

    coldstaking/coldstaking stakingnode

To get staking stats for this staking node, do:

    coldstaking/coldstaking stakingnode stats

To configure the reward address for this staking node, do:

    coldstaking/coldstaking stakingnode rewardaddress

To configure the smsg fee rate target for this staking node, do:

    coldstaking/coldstaking stakingnode smsgfeeratetarget



To install an create firewall/ufw rules to restrict access to only PORTS 22, 8080, 11111 and 12111, do:

    coldstaking/coldstaking firewall

To disable the firewall/ufw and reset the rules, do:

    coldstaking/coldstaking firewall reset



# Commands

## install

"coldstaking install" downloads and initializes a fresh capricoinplus install into ~/.capricoinplus
unless already present

## reinstall

"coldstaking reinstall" downloads and overwrites existing capricoinplus executables, even if
already present

## restart

"coldstaking restart [now]" restarts (or starts) capricoinplusd. Searches for capricoinplus-cli/capricoinplusd
the current directory, ~/.capricoinplus, and $PATH. It will prompt to restart if not
given the optional 'now' argument.

## status

"coldstaking status" interrogates the locally running capricoinplusd and displays its status

# Dependencies

* bash version 4
* nc (netcat)
* curl
* perl
* pv
* python
* unzip
* jq
* capricoinplusd, capricoinplus-cli
* dnsutils
