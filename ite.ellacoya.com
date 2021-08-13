$TTL		1D
@		IN	SOA	seaturtle.ite.ellacoya.com.	root.seaturtle.ite.ellacoya.com. (
			2006031418 ; serial id needs to be incremented each time a change is made
			8H ; refresh
			2H ; retry
			4W; expire
			1D; default_ttl
			)
;
			NS	seaturtle
			MX	10 mail.ellacoya.com
;
localhost		A	127.0.0.1
seaturtle		IN	A	10.1.245.251
rogue			IN	A	10.1.10.202
;;
;; A cluster for Lee
cluster			IN	A	10.1.150.136
cluster			IN	A	10.1.254.32
;;
;;
;; Gospel clients
;;
sentinel		IN	A	10.1.75.2
baboon			IN	A	10.1.75.3
neo			IN	A	10.1.75.4
apoc			IN	A	10.1.75.5
cube			IN	A	10.1.75.10
testhost		IN	A	10.1.75.232
testhost1		IN	A	10.1.75.169
multiIPs		IN	A	10.1.75.220
multiIPs		IN	A	10.1.75.221
multiIPs1		IN	A	10.1.75.222
;;
;;
;;  Apps Automation Test Net
;;
murph			IN	A	10.1.43.10
smithers		IN	A	10.1.43.11
apps-switch1		IN	A	10.1.43.12
;;
;; Anne's clients
;;
tank			IN	A	10.1.76.50
dozer			IN	A	10.1.76.51
cypher			IN	A	10.1.76.52
mouse			IN	A	10.1.76.53
agent-smith		IN	A	10.1.76.54
gambit			IN	A	10.1.76.100
wolverine		IN	A	10.1.76.104
storm			IN	A	10.1.76.105
bibo			IN	A	10.1.76.200
;;
;; RnR test machines
;;
caesar			IN	A	10.1.150.1
dr-zauis		IN	A	10.1.150.4
autoswitch2		IN	A	10.1.150.43
machop			IN	A	10.1.150.66
;;reserved for app team 10.1.150.100-126
lawndart		IN	A	10.1.150.100
orangutang		IN	A	10.1.150.101
silverback		IN	A	10.1.150.102
bthomas2k		IN	A	10.1.150.103
ibmt20			IN	A	10.1.150.104
red-howler		IN	A	10.1.150.105
havok			IN	A	10.1.150.106
aol-sls			IN	A	10.1.150.107
bpilipovic		IN	A	10.1.150.110
forge			IN	A	10.1.150.126
;;
ghideron		IN	A	10.1.150.127
kenny			IN	A	10.1.150.129
timmy			IN	A	10.1.150.130
mrmackey		IN	A	10.1.150.131
cartman			IN	A	10.1.150.132
stan			IN	A	10.1.150.133
kyle			IN	A	10.1.150.134
virgil			IN	A	10.1.150.135
virgil2			IN	A	10.1.150.135
blackbird		IN	A	10.1.150.137
lancer			IN	A	10.1.150.138
warthog			IN	A	10.1.150.139
hornet			IN	A	10.1.150.140
tomcat			IN	A	10.1.150.141
dragon			IN	A	10.1.150.142
;;
;;reserved for nat testing  	10.1.150.144-10.1.150.154
;;
natclient		IN	A	10.1.150.144
harley			IN	A	10.1.150.150
;;
stonecold		IN	A	10.1.150.225
undertaker		IN	A	10.1.150.226
kane			IN	A	10.1.150.227
xp-test			IN	A	10.1.150.228
;;
;; Gospel servers
;;
gibbon			IN	A	10.1.200.3
spider-monkey		IN	A	10.1.200.4
ape			IN	A	10.1.200.5
rhesus			IN	A	10.1.200.11
cottontop		IN	A	10.1.200.12
squirrel-monkey		IN	A	10.1.200.20
colobus			IN	A	10.1.200.23
db			IN	A	10.1.200.30
chimpanzee		IN	A	10.1.200.31
lemur			IN	A	10.1.200.51
mightyjoe		IN	A	10.1.200.52
langoor			IN	A	10.1.200.53
cyclops			IN	A	10.1.200.252
curious-george		IN	A	10.1.200.251
wildfire		IN	A	10.1.200.253
;;
;; Test gear
;;
qarobot			IN	A	10.1.240.11
3640			IN	A	10.1.240.12
barney			IN	A	10.1.240.213
gsr-1-net1		IN	A	10.1.240.250
2948gl3-net2		IN	A	10.1.240.252
kmart-rtr1		IN	A	10.1.240.253
kmart-rtr		IN	A	10.1.240.254
;;
;; Core servers
;;
seawhale		IN	A	10.1.245.252
colossus		IN	A	10.1.245.253
web-cache		IN	A	10.1.245.254
;;
;; Mini-System area router
;;
minicisco		IN	A	10.1.250.111
;;
;; 10.1.251.0 to 10.1.252.254 reserved for dhcp
;;	(Mar/06: no dhcp server in this addr range???)
;;
;; Switches, Servers, etc.
;;
itenet-eldorado		IN	A	10.1.253.1
polveyer		IN	A	10.1.253.2
silkfire		IN	A	10.1.253.9
db-auto			IN	A	10.1.253.10
silkdorado1		IN	A	10.1.253.11
silkdorado2		IN	A	10.1.253.12
switch			IN	A	10.1.253.13
conveyer		IN	A	10.1.253.14
lodorado		IN	A	10.1.253.15
testfire		IN	A	10.1.253.16
toast			IN	A	10.1.253.17
leeswitch		IN	A	10.1.253.18
snowfire		IN	A	10.1.253.19
leespolaris		IN	A	10.1.253.20
silkdorado3		IN	A	10.1.253.21
ranitns2		IN	A	10.1.253.22
ns2-04			IN	A	10.1.253.23
ns2-06			IN	A	10.1.253.24
vdat			IN	A	10.1.253.30
sgs44fcp1-net2		IN	A	10.1.253.31
sgs44lcp1-net2		IN	A	10.1.253.32
sgs44lcp2-net2		IN	A	10.1.253.33
neeraja6020		IN	A	10.1.253.34
gk0			IN	A	10.1.253.40
gk1			IN	A	10.1.253.41
bobnorthstar		IN	A	10.1.253.42
conformance		IN	A	10.1.253.43
oakie			IN	A	10.1.253.44
gk5			IN	A	10.1.253.45
gk6			IN	A	10.1.253.46
gk7			IN	A	10.1.253.47
jeannieccp		IN	A	10.1.253.48
handsoff2		IN	A	10.1.253.50
handsoff		IN	A	10.1.253.51
josie			IN	A	10.1.253.52
ccp			IN	A	10.1.253.53
fcp			IN	A	10.1.253.54
lcp1			IN	A	10.1.253.55
lcp2			IN	A	10.1.253.56
lcp3			IN	A	10.1.253.57
seabass-ccp		IN	A	10.1.253.60
seabass-fcp		IN	A	10.1.253.61
seabass-lcp1		IN	A	10.1.253.62
seabass-ns2		IN	A	10.1.253.63
seatrout-ns2		IN	A	10.1.253.64
jetsam-ixia		IN	A	10.1.253.68
crater			IN	A	10.1.253.69
kraken-ccp		IN	A	10.1.253.70
kraken-fcp		IN	A	10.1.253.71
kraken-lcp1		IN	A	10.1.253.72
kraken-lcp2		IN	A	10.1.253.73
bob-ixia		IN	A	10.1.253.74
scmbag			IN	A	10.1.253.75
chassis1ccp		IN	A	10.1.253.77
nkachrani		IN	A	10.1.253.80
slefire			IN	A	10.1.253.90
scmfire			IN	A	10.1.253.91
chris4k			IN	A	10.1.253.92
terminal2		IN	A	10.1.253.100
dat			IN	A	10.1.253.101
;;
;; Bob B. : 120-129
;;
bobo-120		IN	A	10.1.253.120
bobo-121		IN	A	10.1.253.121
bobo-122		IN	A	10.1.253.122
bobo-123		IN	A	10.1.253.123
bobo-124		IN	A	10.1.253.124
bobo-125		IN	A	10.1.253.125
bobo-126		IN	A	10.1.253.126
bobo-127		IN	A	10.1.253.127
bobo-128		IN	A	10.1.253.128
bobo-129		IN	A	10.1.253.129
;;
;; Chris McC : 130-139
;;
chris-130		IN	A	10.1.253.130
chris-131		IN	A	10.1.253.131
chris-132		IN	A	10.1.253.132
chris-133		IN	A	10.1.253.133
chris-134		IN	A	10.1.253.134
chris-135		IN	A	10.1.253.135
chris-136		IN	A	10.1.253.136
chris-137		IN	A	10.1.253.137
chris-138		IN	A	10.1.253.138
chris-139		IN	A	10.1.253.139
;;
;; Dave Putney : 140-149
;;
leeccp			IN	A	10.1.253.140
davep-141		IN	A	10.1.253.141
davep-142		IN	A	10.1.253.142
davep-143		IN	A	10.1.253.143
davep-144		IN	A	10.1.253.144
davep-145		IN	A	10.1.253.145
davep-146		IN	A	10.1.253.146
davep-147		IN	A	10.1.253.147
davep-148		IN	A	10.1.253.148
davep-149		IN	A	10.1.253.149
;;
;; Ed Coyne : 150-159
;;
ed-150			IN	A	10.1.253.150
ed-151			IN	A	10.1.253.151
bigcountry		IN	A	10.1.253.152
ed-153			IN	A	10.1.253.153
scaler-sle		IN	A	10.1.253.154
scaler-db		IN	A	10.1.253.155
scaler-slemgmt		IN	A	10.1.253.156
ed-157			IN	A	10.1.253.157
ed-158			IN	A	10.1.253.158
ed-159			IN	A	10.1.253.159
;;
;; Bill N : 160-169
;;
wan210sun		IN	A	10.1.253.160
wan240sun		IN	A	10.1.253.161
wan-162			IN	A	10.1.253.162
wan-163			IN	A	10.1.253.163
wan-164			IN	A	10.1.253.164
wan8-10.1.253.165	IN	A	10.1.253.165
wan-166			IN	A	10.1.253.166
wan-167			IN	A	10.1.253.167
wan-168			IN	A	10.1.253.168
wan-169			IN	A	10.1.253.169
;;
;; Ranit : 170-179
;;
ranit-170		IN	A	10.1.253.170
ranit-171		IN	A	10.1.253.171
ranit-172		IN	A	10.1.253.172
ranit-173		IN	A	10.1.253.173
ranit-174		IN	A	10.1.253.174
capuchin		IN	A	10.1.253.175
pfire			IN	A	10.1.253.176
ranit-177		IN	A	10.1.253.177
ranit-178		IN	A	10.1.253.178
twinkle			IN	A	10.1.253.179
;;
;; Ravi : 180-189
;;
ravi-180		IN	A	10.1.253.180
ravi-181		IN	A	10.1.253.181
dallison-linux		IN	A	10.1.253.182
ravi-183		IN	A	10.1.253.183
ravi-184		IN	A	10.1.253.184
ravi-185		IN	A	10.1.253.185
ravi-186		IN	A	10.1.253.186
ravi-187		IN	A	10.1.253.187
ravi-188		IN	A	10.1.253.188
ravi-189		IN	A	10.1.253.189
;;
;; Rob : 190-199
;;
mc2			IN	A	10.1.253.190
ns2			IN	A	10.1.253.191
rob-192			IN	A	10.1.253.192
rob-193			IN	A	10.1.253.193
rob-194			IN	A	10.1.253.194
rob-195			IN	A	10.1.253.195
rob-196			IN	A	10.1.253.196
rob-197			IN	A	10.1.253.197
rob-198			IN	A	10.1.253.198
rob-199			IN	A	10.1.253.199
;;
;; Bill N : 200-209 (later stolen by McCormack)
;;
wan-200			IN	A	10.1.253.200
coltrane		IN	A	10.1.253.201
davis			IN	A	10.1.253.202
wan-203			IN	A	10.1.253.203
flecktone		IN	A	10.1.253.204
appliance		IN	A	10.1.253.205
appliance2		IN	A	10.1.253.206
;;this entry is for appliance2's oracle instance appliance2	IN	A	10.1.253.207
;;this entry is for appliance's oracle instance appliance	IN	A	10.1.253.208
wan-207			IN	A	10.1.253.207
wan-208			IN	A	10.1.253.208
wan7-10.1.253.209	IN	A	10.1.253.209
;;
;; NIM : 210-219
;;
nim-210			IN	A	10.1.253.210
nim-211			IN	A	10.1.253.211
nim-212			IN	A	10.1.253.212
nim-213			IN	A	10.1.253.213
nim-214			IN	A	10.1.253.214
nim-215			IN	A	10.1.253.215
nim-216			IN	A	10.1.253.216
nim-217			IN	A	10.1.253.217
nim-218			IN	A	10.1.253.218
nim-219			IN	A	10.1.253.219
;;
;; Dave Allison : 230-239
;;
dallison-230		IN	A	10.1.253.230
dallison-231		IN	A	10.1.253.231
dallison-232		IN	A	10.1.253.232
dallison-233		IN	A	10.1.253.233
dallison-234		IN	A	10.1.253.234
dallison-235		IN	A	10.1.253.235
dallison-236		IN	A	10.1.253.236
dallison-237		IN	A	10.1.253.237
dallison-238		IN	A	10.1.253.238
dallison-239		IN	A	10.1.253.239
;;
;; Vicky W : 240-249
;;
vlw-db			IN	A	10.1.253.240
vlw-241			IN	A	10.1.253.241
vlw-242			IN	A	10.1.253.242
vlw-243			IN	A	10.1.253.243
vlw-244			IN	A	10.1.253.244
vlw-245			IN	A	10.1.253.245
vlw-246			IN	A	10.1.253.246
vlw-247			IN	A	10.1.253.247
vlw-248			IN	A	10.1.253.248
vlw-249			IN	A	10.1.253.249
;;
toms-switch		IN	A	10.1.253.220
zapper			IN	A	10.1.253.221
terminalserver		IN	A	10.1.253.250
systemannex		IN	A	10.1.253.251
terminalserver2		IN	A	10.1.253.252
netgear-junk		IN	A	10.1.253.253
;;
;; Personal PC/Workstations/SLEs ;;
temp			IN	A	10.1.254.1
greygoose		IN	A	10.1.254.2
limbo			IN	A	10.1.254.3
postsle			IN	A	10.1.254.4
silk44k-lcp1		IN	A	10.1.254.5
silk44k-lcp2		IN	A	10.1.254.6
mustang			IN	A	10.1.254.7
florida			IN	A	10.1.254.8
jura			IN	A	10.1.254.9
ursus			IN	A	10.1.254.10
cornelius		IN	A	10.1.254.11
cornholio		IN	A	10.1.254.11
regression		IN	A	10.1.254.12
ddeschenes2		IN	A	10.1.254.13
mrs-anderson		IN	A	10.1.254.14
ixia-flotsam		IN	A	10.1.254.15
dr-zira			IN	A	10.1.254.16
silkperformer1		IN	A	10.1.254.17
ruckus			IN	A	10.1.254.18
grapeape		IN	A	10.1.254.19
mystique		IN	A	10.1.254.20
slim			IN	A	10.1.254.21
dante			IN	A	10.1.254.22
silkperformer3		IN	A	10.1.254.23
ddeschenes		IN	A	10.1.254.24
mstillson		IN	A	10.1.254.25
archangel		IN	A	10.1.254.26
phoenix			IN	A	10.1.254.27
dragonbreath		IN	A	10.1.254.28
rkuriakose2k		IN	A	10.1.254.30
hqvss01			IN	A	10.1.254.31
quicksilver		IN	A	10.1.254.32
kingkong		IN	A	10.1.254.33
yazbird			IN	A	10.1.254.35
ite-airport		IN	A	10.1.254.36
tidus			IN	A	10.1.254.37
gamera			IN	A	10.1.254.38
wakka			IN	A	10.1.254.39
magilla			IN	A	10.1.254.40
gorilla			IN	A	10.1.254.41
rikku			IN	A	10.1.254.42
yuna			IN	A	10.1.254.43
dweezil			IN	A	10.1.254.44
mandm			IN	A	10.1.254.45
seabass			IN	A	10.1.254.48
traffic			IN	A	10.1.254.50
marmoset		IN	A	10.1.254.55
he-man			IN	A	10.1.254.66
titan			IN	A	10.1.254.80
smartbits89		IN	A	10.1.254.89
adtech			IN	A	10.1.254.90
advisor			IN	A	10.1.254.91
habdi			IN	A	10.1.254.99
bigsky			IN	A	10.1.254.100
sabertooth		IN	A	10.1.254.101
beast			IN	A	10.1.254.102
bass			IN	A	10.1.254.112
nightcrawler		IN	A	10.1.254.114
eel			IN	A	10.1.254.115
walrus			IN	A	10.1.254.116
w2k-qa-jp		IN	A	10.1.254.117
controller		IN	A	10.1.254.130
silverbird		IN	A	10.1.254.136
carp			IN	A	10.1.254.139
godzilla		IN	A	10.1.254.140
mothra			IN	A	10.1.254.141
theoracle		IN	A	10.1.254.144
morpheus		IN	A	10.1.254.145
cisco-7505		IN	A	10.1.254.147
weissa			IN	A	10.1.254.148
mankind			IN	A	10.1.254.149
therock			IN	A	10.1.254.150
wingnut			IN	A	10.1.254.151
mr-anderson		IN	A	10.1.254.152
hairbear		IN	A	10.1.254.153
lancelotlink		IN	A	10.1.254.155
wintrout		IN	A	10.1.254.163
squid-dhcp		IN	A	10.1.254.164
;;
;; SQA DHCP Addresses from DHCP server colobus
;;
sqa-dhcp-170		IN	A	10.1.254.170
sqa-dhcp-171		IN	A	10.1.254.171
sqa-dhcp-172		IN	A	10.1.254.172
sqa-dhcp-173		IN	A	10.1.254.173
sqa-dhcp-174		IN	A	10.1.254.174
sqa-dhcp-175		IN	A	10.1.254.175
sqa-dhcp-176		IN	A	10.1.254.176
sqa-dhcp-177		IN	A	10.1.254.177
sqa-dhcp-178		IN	A	10.1.254.178
sqa-dhcp-179		IN	A	10.1.254.179
sqa-dhcp-180		IN	A	10.1.254.180
sqa-dhcp-181		IN	A	10.1.254.181
sqa-dhcp-182		IN	A	10.1.254.182
sqa-dhcp-183		IN	A	10.1.254.183
sqa-dhcp-184		IN	A	10.1.254.184
sqa-dhcp-185		IN	A	10.1.254.185
sqa-dhcp-186		IN	A	10.1.254.186
sqa-dhcp-187		IN	A	10.1.254.187
sqa-dhcp-188		IN	A	10.1.254.188
sqa-dhcp-189		IN	A	10.1.254.189
sqa-dhcp-190		IN	A	10.1.254.190
sqa-dhcp-191		IN	A	10.1.254.191
sqa-dhcp-192		IN	A	10.1.254.192
sqa-dhcp-193		IN	A	10.1.254.193
sqa-dhcp-194		IN	A	10.1.254.194
sqa-dhcp-195		IN	A	10.1.254.195
sqa-dhcp-196		IN	A	10.1.254.196
sqa-dhcp-197		IN	A	10.1.254.197
sqa-dhcp-198		IN	A	10.1.254.198
sqa-dhcp-199		IN	A	10.1.254.199
;;
skye			IN	A	10.1.254.208
shaman			IN	A	10.1.254.213
mattahorn		IN	A	10.1.254.216
mattahorn-dock		IN	A	10.1.254.217
temporary		IN	A	10.1.254.222
voodoo			IN	A	10.1.254.244
defaultrtr		IN	A	10.1.254.254
;;
;; Silkperformer
;;
agent28			IN	A	10.2.1.28
controller		IN	A	10.2.1.100
grapeape		IN	A	10.2.1.200
ddeschenes3		IN	A	10.2.2.1
galen			IN	A	10.2.2.2
;;
;; MiniNet
;;
zion			IN	A	10.3.250.124
gorilla			IN	A	10.1.254.41
fatty			IN	A	10.3.1.10
postdb			IN	A	10.3.1.14
web2			IN	A	10.3.100.5
pop1			IN	A	10.3.100.3
miniturtle		IN	A	10.5.245.251
;;
;; PerformanceNet
;;
sls			IN	A	10.3.1.2
sls			IN	A	10.3.1.250
debrazza		IN	A	10.3.1.2
lapmagilla		IN	A	10.3.1.3
turtlewax		IN	A	10.3.245.251
wildfire1		IN	A	10.3.1.20
isc			IN	A	10.3.1.22
;;
;; 10.4 Assignments
;;
debrazza01		IN	A	10.4.1.111
dualdhcp01-oth		IN	A	10.4.2.10
trinity			IN	A	10.4.2.114
tarheel			IN	A	10.4.130.1
linux30-2		IN	A	10.4.130.14
linux40-4		IN	A	10.4.130.16
fender			IN	A	10.4.130.15
trout			IN	A	10.4.140.162
dualdhcp01		IN	A	10.4.140.10
thade			IN	A	10.4.210.253
