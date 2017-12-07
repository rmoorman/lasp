FROM lasplang/erlang:19.3

MAINTAINER Christopher Meiklejohn <christopher.meiklejohn@gmail.com>

RUN cd /tmp && \
    apt-get update && \
    apt-get -y install wget build-essential make gcc ruby-dev git expect gnuplot

CMD cd /opt && \
    (git clone https://github.com/lasp-lang/lasp.git -b $LASP_BRANCH && cd lasp && make exp-stage); \
    cd lasp && /opt/lasp/_build/exp/rel/lasp/bin/env