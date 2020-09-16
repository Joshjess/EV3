#include <string>
#include <curl/curl.h>
#include <nlohmann/json.hpp>
#include "AutoDownloader.h"

#define RELEASE_URL "https://api.github.com/repos/Joshjess/EV3/releases/latest"
#define ACCESS_TOKEN "8530a9f424eb3da8bdf595e88089600f0116ccd3"
#define FILE_TO_DOWNLOAD_TO "robotics"

using namespace std;
using namespace nlohmann;

int main() {
    AutoDownloader autoDownloader(RELEASE_URL, ACCESS_TOKEN, FILE_TO_DOWNLOAD_TO);
    autoDownloader.performDownload();

    return 0;
}

