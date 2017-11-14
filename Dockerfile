FROM 172.30.137.221:5000/test2/httpd:2.4
RUN yum update -y && yum install -y php-5.4.16 php-mysql-5.4.16

# Simple startup script to avoid some issues observed with container restart
ADD run-httpd.sh /run-httpd.sh
RUN chmod -v +x /run-httpd.sh

CMD ["/run-httpd.sh"]
