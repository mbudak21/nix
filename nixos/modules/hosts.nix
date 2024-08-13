{ config, pkgs, ... }:

{
  networking.extraHosts = ''
    127.0.0.1   localhost localhost.localdomain localhost4 localhost4.localdomain4
    ::1         localhost localhost.localdomain localhost6 localhost6.localdomain6

    # Login Nodes
    172.20.238.1 login01 pfsense pfsense01
    172.20.240.2 login02 login02.kuacc.ku.edu.tr
    172.20.240.3 login03 login03.kuacc.ku.edu.tr

    # Login Nodes - Infiniband
    10.2.238.1 login01-ib pfsense-ib
    10.2.238.2 login02-ib
    10.2.238.3 login03-ib

    # Service Nodes
    172.20.240.101 srv01
    172.20.240.102 srv02

    # GlusterFS Nodes - Ethernet
    172.20.239.1 beegfsn01
    172.20.239.2 beegfsn02
    172.20.239.3 beegfsn03

    # GlusterFS Nodes - Infiniband
    10.2.239.1 beegfsn01-ib
    10.2.239.2 beegfsn02-ib
    10.2.239.3 beegfsn03-ib

    # BeeGFS Nodes
    172.20.239.101 beegfs101
    172.20.239.102 beegfs102
    172.20.239.103 beegfs103
    172.20.239.104 beegfs104
    172.20.239.105 beegfs105
    172.20.239.106 beegfs106
    172.20.239.107 beegfs107
    172.20.239.108 beegfs108
    172.20.239.109 beegfs109
    172.20.239.110 beegfs110
    172.20.239.111 beegfs111
    172.20.239.112 beegfs112

    # BeeGFS Nodes - Infiniband
    10.2.239.101 beegfs101-ib
    10.2.239.102 beegfs102-ib
    10.2.239.103 beegfs103-ib
    10.2.239.104 beegfs104-ib
    10.2.239.105 beegfs105-ib
    10.2.239.106 beegfs106-ib
    10.2.239.107 beegfs107-ib
    10.2.239.108 beegfs108-ib
    10.2.239.109 beegfs109-ib
    10.2.239.110 beegfs110-ib
    10.2.239.111 beegfs111-ib
    10.2.239.112 beegfs112-ib

    # BeeGFS Nodes - Management
    172.20.247.101 beegfs101-mnt
    172.20.247.102 beegfs102-mnt
    172.20.247.103 beegfs103-mnt
    172.20.247.104 beegfs104-mnt
    172.20.247.105 beegfs105-mnt
    172.20.247.106 beegfs106-mnt
    172.20.247.107 beegfs107-mnt
    172.20.247.108 beegfs108-mnt
    172.20.247.109 beegfs109-mnt
    172.20.247.110 beegfs110-mnt
    172.20.247.111 beegfs111-mnt
    172.20.247.112 beegfs112-mnt

    # Compute Nodes
    172.20.242.201 ag01 ag01.kuacc.ku.edu.tr
    172.20.242.202 ag04 ag04.kuacc.ku.edu.tr

    172.20.242.31 ke01 ke01.kuacc.ku.edu.tr
    172.20.242.32 ke02 ke02.kuacc.ku.edu.tr
    172.20.242.33 ke03 ke03.kuacc.ku.edu.tr
    172.20.242.34 ke04 ke04.kuacc.ku.edu.tr
    172.20.242.35 ke05 ke05.kuacc.ku.edu.tr
    172.20.242.36 ke06 ke06.kuacc.ku.edu.tr
    172.20.242.37 ke07 ke07.kuacc.ku.edu.tr
    172.20.242.38 ke08 ke08.kuacc.ku.edu.tr

    172.20.242.101 be01 be01.kuacc.ku.edu.tr
    172.20.242.102 be02 be02.kuacc.ku.edu.tr
    172.20.242.103 be03 be03.kuacc.ku.edu.tr
    172.20.242.104 be04 be04.kuacc.ku.edu.tr
    172.20.242.105 be05 be05.kuacc.ku.edu.tr
    172.20.242.106 be06 be06.kuacc.ku.edu.tr
    172.20.242.107 be07 be07.kuacc.ku.edu.tr
    172.20.242.108 be08 be08.kuacc.ku.edu.tr
    172.20.242.109 be09 be09.kuacc.ku.edu.tr
    172.20.242.110 be10 be10.kuacc.ku.edu.tr
    172.20.242.111 be11 be11.kuacc.ku.edu.tr
    172.20.242.112 be12 be12.kuacc.ku.edu.tr
    172.20.242.113 be13 be13.kuacc.ku.edu.tr
    172.20.242.114 be14 be14.kuacc.ku.edu.tr

    172.20.242.162 dy02 dy02.kuacc.ku.edu.tr
    172.20.242.163 dy03 dy03.kuacc.ku.edu.tr
    172.20.242.208 ai01 ai01.kuacc.ku.edu.tr
    172.20.242.209 ai02 ai02.kuacc.ku.edu.tr
    172.20.242.210 ai03 ai03.kuacc.ku.edu.tr
    172.20.242.211 ai04 ai04.kuacc.ku.edu.tr
    172.20.242.212 ai05 ai05.kuacc.ku.edu.tr
    172.20.242.213 ai06 ai06.kuacc.ku.edu.tr
    172.20.242.214 ai07 ai07.kuacc.ku.edu.tr
    172.20.242.215 ai08 ai08.kuacc.ku.edu.tr
    172.20.242.216 ai09 ai09.kuacc.ku.edu.tr
    172.20.242.217 ai10 ai10.kuacc.ku.edu.tr
    172.20.242.218 ai11 ai11.kuacc.ku.edu.tr
    172.20.242.219 ai12 ai12.kuacc.ku.edu.tr
    172.20.242.220 ai13 ai13.kuacc.ku.edu.tr
    172.20.242.221 ai14 ai14.kuacc.ku.edu.tr
    172.20.242.222 ai15 ai15.kuacc.ku.edu.tr
    172.20.242.223 ai16 ai16.kuacc.ku.edu.tr
    172.20.242.224 ai17 ai17.kuacc.ku.edu.tr
    172.20.242.225 ai18 ai18.kuacc.ku.edu.tr
    172.20.242.226 ai19 ai19.kuacc.ku.edu.tr
    172.20.242.227 ai20 ai20.kuacc.ku.edu.tr
    172.20.242.228 ai21 ai21.kuacc.ku.edu.tr
    172.20.242.229 ai22 ai22.kuacc.ku.edu.tr
    172.20.242.230 ai23 ai23.kuacc.ku.edu.tr
    172.20.242.231 ai24 ai24.kuacc.ku.edu.tr
    172.20.242.232 ai25 ai25.kuacc.ku.edu.tr
    172.20.242.233 ai26 ai26.kuacc.ku.edu.tr

    172.20.242.171 da01 da01.kuacc.ku.edu.tr
    172.20.242.172 da02 da02.kuacc.ku.edu.tr
    172.20.242.173 da03 da03.kuacc.ku.edu.tr
    172.20.242.174 da04 da04.kuacc.ku.edu.tr

    172.20.242.176 sm01 sm01.kuacc.ku.edu.tr

    172.20.242.177 rk01 rk01.kuacc.ku.edu.tr
    172.20.242.178 rk02 rk02.kuacc.ku.edu.tr

    # IT GPU Nodes
    172.20.242.204 it01 it01.kuacc.ku.edu.tr
    172.20.242.205 it02 it02.kuacc.ku.edu.tr
    172.20.242.206 it03 it03.kuacc.ku.edu.tr
    172.20.242.207 it04 it04.kuacc.ku.edu.tr

    172.20.242.175 mm01 mm01.kuacc.ku.edu.tr

    # Compute Nodes - Infiniband
    10.2.242.201 ag01-ib
    10.2.242.202 ag04-ib

    10.2.242.31 ke01-ib
    10.2.242.32 ke02-ib
    10.2.242.33 ke03-ib
    10.2.242.34 ke04-ib
    10.2.242.35 ke05-ib
    10.2.242.36 ke06-ib
    10.2.242.37 ke07-ib
    10.2.242.38 ke08-ib

    10.2.242.101 be01-ib
    10.2.242.102 be02-ib
    10.2.242.103 be03-ib
    10.2.242.104 be04-ib
    10.2.242.105 be05-ib
    10.2.242.106 be06-ib
    10.2.242.107 be07-ib
    10.2.242.108 be08-ib
    10.2.242.109 be09-ib
    10.2.242.110 be10-ib
    10.2.242.111 be11-ib
    10.2.242.112 be12-ib
    10.2.242.113 be13-ib
    10.2.242.114 be14-ib

    10.2.242.162 dy02-ib
    10.2.242.163 dy03-ib
    10.2.242.208 ai01-ib
    10.2.242.209 ai02-ib
    10.2.242.210 ai03-ib
    10.2.242.211 ai04-ib
    10.2.242.212 ai05-ib
    10.2.242.213 ai06-ib
    10.2.242.214 ai07-ib
    10.2.242.215 ai08-ib
    10.2.242.216 ai09-ib
    10.2.242.217 ai10-ib
    10.2.242.218 ai11-ib
    10.2.242.219 ai12-ib
    10.2.242.220 ai13-ib
    10.2.242.221 ai14-ib
    10.2.242.222 ai15-ib
    10.2.242.223 ai16-ib
    10.2.242.224 ai17-ib
    10.2.242.225 ai18-ib
    10.2.242.226 ai19-ib
    10.2.242.227 ai20-ib
    10.2.242.228 ai21-ib
    10.2.242.229 ai22-ib
    10.2.242.230 ai23-ib
    10.2.242.231 ai24-ib
    10.2.242.232 ai25-ib
    10.2.242.233 ai26-ib

    10.2.242.171 da01-ib
    10.2.242.172 da02-ib
    10.2.242.173 da03-ib
    10.2.242.174 da04-ib

    10.2.242.176 sm01-ib

    10.2.242.177 rk01-ib
    10.2.242.178 rk02-ib

    10.2.242.175 mm01-ib

    # IT GPU Nodes
    10.2.242.204 it01-ib
    10.2.242.205 it02-ib
    10.2.242.206 it03-ib
    10.2.242.207 it04-ib

    # Compute Nodes - Management
    172.20.244.201 ag01-mnt
    172.20.244.202 ag02-mnt
    172.20.244.203 ag03-mnt

    172.20.244.31 ke01-mnt
    172.20.244.32 ke02-mnt
    172.20.244.33 ke03-mnt
    172.20.244.34 ke04-mnt
    172.20.244.35 ke05-mnt
    172.20.244.36 ke06-mnt
    172.20.244.37 ke07-mnt
    172.20.244.38 ke08-mnt
    172.20.244.39 ke09-mnt
    172.20.244.40 ke10-mnt
    172.20.244.41 ke11-mnt
    172.20.244.42 ke12-mnt

    172.20.244.101 be01-mnt
    172.20.244.102 be02-mnt
    172.20.244.103 be03-mnt
    172.20.244.104 be04-mnt
    172.20.244.105 be05-mnt
    172.20.244.106 be06-mnt
    172.20.244.107 be07-mnt
    172.20.244.108 be08-mnt
    172.20.244.109 be09-mnt
    172.20.244.110 be10-mnt
    172.20.244.111 be11-mnt
    172.20.244.112 be12-mnt
    172.20.244.113 be13-mnt
    172.20.244.114 be14-mnt

    172.20.244.160 dy01-mnt
    172.20.244.162 dy02-mnt
    172.20.244.163 dy03-mnt

    172.20.244.171 da01-mnt
    172.20.244.172 da02-mnt
    172.20.244.173 da03-mnt
    172.20.244.174 da04-mnt

    172.20.244.175 du01-mnt

    172.20.244.176 sm01-mnt

    172.20.244.177 rk01-mnt

    172.20.244.121 ms01-mnt
    172.20.244.122 ms02-mnt
    172.20.244.123 ms03-mnt
    172.20.244.124 ms04-mnt
    172.20.244.125 ms05-mnt

    172.20.244.181 me01-mnt
    172.20.244.182 me02-mnt

    172.20.254.220 ey01-mnt
    172.20.254.221 ey02-mnt

    172.20.244.204 it01-mnt
    172.20.244.205 it02-mnt
    172.20.244.206 it03-mnt
    172.20.244.207 it04-mnt

    172.20.244.151 zz01-mnt
    172.20.244.152 zz02-mnt
    172.20.244.153 zz03-mnt

    # Virtual Machines
    172.20.240.106 headnode01 headnode01.kuacc.ku.edu.tr hn
    172.20.240.110 ldap
    172.20.240.111 ntp01
    172.20.240.112 ntp02
    172.20.240.113 ansible ansible.kuacc.ku.edu.tr
    172.20.240.114 spacewalk spacewalk.kuacc.ku.edu.tr
    172.20.240.185 mariadb01 mariadb01.kuacc.ku.edu.tr maria
    172.20.240.116 licserv licserv.kuacc.ku.edu.tr
    172.20.240.151 cobbler
    172.20.240.155 admin
    172.20.240.161 kuaccmonitoring kuaccmonitoring.ku.edu.tr
    172.20.240.165 hpcmonitoring hpcmonitoring.kuacc.ku.edu.tr hpcmon
    172.20.240.170 centrallogger cl
    172.20.240.200 xclarity

    # MATLAB License Server
    88.255.96.15 KU-LISANS01.ku.edu.tr
    172.18.3.196 LT-4YQ75M2
    195.87.244.70 ARCAY516V
  '';
}
