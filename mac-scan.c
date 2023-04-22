// scan for MAC addresses on 192.168.1.1/24
// requires nmap
// use arp -n after calling this program. to get IP and MAC addresses
// mac-scan executable should be setuid
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
int main(void) {
  char *args[]={"nmap","-T4","-sP","192.168.1.1/24",NULL};
  execvp(args[0],args);
  return 0;
}
