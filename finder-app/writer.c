#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <syslog.h>

int main(int argc, char *argv[])
{
    if (argc != 3)
    {
        syslog(LOG_ERR, "Invalid arguments.");
        return 1;
    }

    openlog(NULL, 0, LOG_USER);

    char *filename = argv[1];
    char *str = argv[2];

    FILE *file = fopen(filename, "w");
    if (file == NULL)
    {
        syslog(LOG_ERR, "Error opening file.");
        return 1;
    }

    syslog(LOG_DEBUG, "Writing %s to %s", str, filename);
    fputs(str, file);
    fclose(file);

    closelog();
    return 0;
}