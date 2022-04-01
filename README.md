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
   * http://www.domainsaya.local/

## **Using Docker Stack Deploy**

