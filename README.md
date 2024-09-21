# HTTPFTPSSH_Killer

Introducing HFSK – your sophisticated brute-forcing tool tailored for HTTP, SSH and FTP services. Unlike conventional brute-forcing, HFSK emulates the "password spraying" approach by attempting three passwords per user. Once it exhausts the user list, it resumes by cycling through the next set of three passwords. This reduces the chance of lockouts and lost connections. 

Key Features:

1. Target Selection: The tool grants users the flexibility to pick between FTP and SSH services and choose port number for their attack. 

2. Password Options: Opt between using a predetermined wordlist or generating random passwords on-the-fly. If randomness entices you, FSK can concoct passwords ranging between 8 to 16 characters.

3. Anonymization: Cover your tracks. With FSK, you can route your traffic through Tor or select from a personalized list of proxies.

4. Detailed Reporting: Stay informed. Post-attack, FSK provides a concise report detailing the duration of the attack and the number of attempts made.



## Disclaimer

**Brute-forcing against any system without explicit permission is illegal and unethical. Always have proper authorization before conducting any testing. Use this tool responsibly and ethically.**

## Installation

1. Clone this repository:

`git clone https://github.com/usethisname1419/HTTPFTPSSH_Killer.git`

`cd HTTPFTPSSH_Killer`


3. Install the required libraries:

`pip install -r requirements.txt`


## Usage

`python HFSK.py --service [ftp/ssh/http][Port} -w [path_to_wordlist] -u [path_to_user_list] --ip [target_ip_address]`

`http-post [pass=^PASS&users=^USERS^] failure-content-length/success-content-length [int] success/failure-pattern [str]`


Example:
`python FSK.py --service ssh 24 -w /usr/share/wordlists/rockyou.txt -u users.txt --ip 172.16.1.83 --tor`

To use random passwords use the flag `-r` or `--rand`

You can load proxies from a list using the `--proxies` flag. 

You can also use the `--tor` flag to route your requests through Tor.

### FSKv2

Uses the flag `-i` or `--iter` for number of tries per user name.
V2 also retires once more if a connection is failed before moving on to next attempt


## Support

If you found this tool useful, consider supporting its development!

**Ethereum (ETH)**: `0xB139a7f6A2398fd4F50BbaC9970da8BE57E6F539`

**Bitcoin (BTC)**: `bc1qtezfajhysn6dut07m60vtg0s33jy8tqcvjqqzk`

---

Designed and maintained by Derek Johnston.


