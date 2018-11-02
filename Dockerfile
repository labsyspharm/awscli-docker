FROM alpine:3.5

RUN apk -Uuv add groff less python py-pip \
	&& pip install awscli==1.16.46 \
	&& apk --purge -v del py-pip \
	&& rm /var/cache/apk/* \
	&& mkdir /tmp/aws

WORKDIR /tmp/aws

ENTRYPOINT ["aws"]
