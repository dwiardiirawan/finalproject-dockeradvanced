# Final Project - Docker Advanced Class

## **Using Docker Compose**

1) Build Image
   * **mysql**  : `docker image build -f mysql.Dockerfile -t dwiardiirawan/mysql-custom .`
   * **pma**    : `docker image build -f pma.Dockerfile -t dwiardiirawan/pma-custom .`
   * **web**    : `docker image build -f web.Dockerfile -t dwiardiirawan/web-custom .`
   * **proxy**  : `docker image build -f proxy.Dockerfile -t dwiardiirawan/proxy-custom .`
2) Push Image to DockerHub
   * **mysql**  : `docker push dwiardiirawan/mysql-custom`
   * **pma**    : `docker push dwiardiirawan/pma-custom` 
   * **web**    : `docker push dwiardiirawan/web-custom` 
   * **proxy**  : `docker push dwiardiirawan/proxy-custom` 
3) Edit `/etc/hosts` in your local machine. Add this line <br />
   `127.0.0.1 www.domainsaya.local` <br />
   `127.0.0.1 pma.domainsaya.local`
4) restart your local machine
5) run this command: `docker-compose up`
6) open this url in your browser
   * http://pma.domainsaya.local/ 
      * Try to register a new user and then use the newly created username/password to login.
   * http://www.domainsaya.local/
      * Login as root. You can see the password in the /secrets/db_root_password.txt.
      * You will see, database with name "dbkuasai" has already created. Open users table. It should contains a newly created user record.
7) do healthcheck, run this command: `docker container ls`

## **Using Docker Stack Deploy**
**Notes:** <br />
If you already done step (1) until (7), please run this command: `docker-compose down`

8) run this command: `docker stack deploy -c docker-compose-stack.yml myweb-app`
   * try again step (6) & (7)
9) check that all services already up using this command: `docker stack services myweb-app`

## **Deploy in Googgle Cloud Platform**

10) run git clone command to download this repository: `git clone https://github.com/dwiardiirawan/finalproject-dockeradvanced.git`
11) create firewal: VPC Network > Firewall Create a firewall rule
    * Protocols and ports > TCP > put value 8080, 9000 (since we are using those port for web and pma)
13) go to Compute Enginer > VM Instance > Open SSH console in Your Docker Master Node and run this command: `docker stack deploy -c docker-compose-stack.yml myweb-app`
14) From the VM Instances list, click the external IP of Your Docker Master Node
    * For open the web application add port 9000, http://<gcp vm instance external ip>:9000
    * For open the PHPMyAdmin application add port 8080, http://<gcp vm instance external ip>:8080
