FROM kalilinux/kali-rolling
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && \
    apt-get -yqu dist-upgrade && \
    apt-get -yq install \
      python \
      host \
      whois \
      golismero \
      sslyze \
      wapiti \
      nmap \
      dmitry \
      dnsenum \
      dnsmap \
      dnsrecon \
      dnswalk \
      dirb \
      wafw00f \
      whatweb \
      nikto \
      lbd \
      xsser \
      fierce \
      theharvester \
      davtest \
      uniscan \
      wget && \
    apt-get -yq autoremove && \
    apt-get clean && \
    rm -rf /var/lib/{apt,dpkg,cache,log}
RUN cd /usr/local/bin && \
    wget --no-check-certificate -q -O rapidscan.py https://raw.githubusercontent.com/skavngr/rapidscan/master/rapidscan.py &&\
    chmod +x rapidscan.py
WORKDIR /app
ENTRYPOINT ["/usr/local/bin/rapidscan.py"]
