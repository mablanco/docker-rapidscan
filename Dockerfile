FROM kalilinux/kali-linux-docker
RUN cd /usr/local/bin && \
    wget --no-check-certificate -O rapidscan.py https://raw.githubusercontent.com/skavngr/rapidscan/master/rapidscan.py &&\
    chmod +x rapidscan.py
RUN apt-get update && \
    apt-get -yu dist-upgrade && \
    apt-get -y install \
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
      uniscan && \
    apt-get -y autoremove && \
    apt-get clean && \
    rm -rf /var/lib/{apt,dpkg,cache,log}
ENTRYPOINT ["/usr/local/bin/rapidscan.py"]
