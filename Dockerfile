FROM kalilinux/kali-rolling
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && \
    apt-get -yqu dist-upgrade && \
    apt-get -yq install \
      python3 \
      host \
      whois \
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
      amass \
      wget && \
    apt-get -yq autoremove && \
    apt-get clean && \
    rm -rf /var/lib/{apt,dpkg,cache,log} && \
    wget --no-check-certificate -q -O /usr/local/bin/rapidscan https://raw.githubusercontent.com/skavngr/rapidscan/master/rapidscan.py && \
    chmod +x /usr/local/bin/rapidscan
ENTRYPOINT ["/usr/local/bin/rapidscan"]
