#include <stdio.h>
#include <fcntl.h>
#include <unistd.h>
#include "libfta.h"

int main(int ac, char ** av)
{
	int ret = 0;
	if (ac == 1) {
		printf("usage: %s [file]\n", av[0]);
	}
	else if (ac == 2) {
		int fd = open(av[1], O_RDONLY);
		if (fd != -1) {
    		ret = ft_cat(fd);
			close(fd);
		} else {
			printf("error\n");
		}
	}
	else {
		printf("usage: %s [file]\n", av[0]);
	}
	return (ret);
}