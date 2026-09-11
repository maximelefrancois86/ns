FROM httpd:2.4

RUN sed -i \
    -e 's/^#LoadModule rewrite_module /LoadModule rewrite_module /' \
    -e 's/^#LoadModule headers_module /LoadModule headers_module /' \
    -e 's/^#LoadModule negotiation_module /LoadModule negotiation_module /' \
    /usr/local/apache2/conf/httpd.conf

COPY docker/httpd/ns-test.conf /usr/local/apache2/conf/extra/ns-test.conf

RUN printf '\nInclude conf/extra/ns-test.conf\n' >> /usr/local/apache2/conf/httpd.conf