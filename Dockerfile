FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.5.5

RUN gem install grempe-amazon-ec2 --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["ec2-gem-example.rb"]
CMD ["--help"]
