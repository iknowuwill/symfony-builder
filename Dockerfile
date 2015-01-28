FROM euskadi31/gentoo-portage:latest

RUN echo "net-libs/nodejs ~amd64" >> /etc/portage/package.keywords
RUN echo "PHP_INI_VERSION=\"production\"" >> /etc/portage/make.conf
RUN echo "dev-lang/php ~amd64" >> /etc/portage/package.keywords
RUN echo "app-admin/eselect-php" >> /etc/portage/package.use
RUN echo "media-libs/gd jpeg png" >> /etc/portage/package.use
RUN echo "dev-lang/php cli crypt ctype curl fileinfo filter gd hash iconv intl ipv6 json mhash opcache pdo phar posix readline session simplexml sockets ssl tokenizer unicode xml xmlreader xmlwriter zip zlib" >> /etc/portage/package.use
RUN echo "PHP_TARGETS=\"php5-6\"" >> /etc/portage/make.conf
RUN emerge dev-vcs/git net-libs/nodejs dev-lang/php net-misc/curl
RUN npm install -g grunt-cli bower
