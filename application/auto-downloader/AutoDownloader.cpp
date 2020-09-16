//
// Created by mohamedelh on 16-9-2020.
//

#include "AutoDownloader.h"
#include <nlohmann/json.hpp>

using namespace std;
using namespace nlohmann;

void AutoDownloader::performDownload() {
    curl_global_init(CURL_GLOBAL_ALL);
    this->curl_handle = curl_easy_init();
    if (debug) {
        curl_easy_setopt(curl_handle, CURLOPT_VERBOSE, 1L);
    }
    this->getDownloadLink();
    this->downloadFile();
    this->clean();
}

void AutoDownloader::downloadFile() {

    CURLcode res;
    // OPEN FILE
    FILE* file = fopen(this->fileName.c_str(), "w+");
    if (file) {
        // SET URL
        curl_easy_setopt(curl_handle, CURLOPT_URL, releaseUrl.c_str());
        curl_easy_setopt(curl_handle, CURLOPT_FOLLOWLOCATION, 1L);
        // WRITE DATA
        curl_easy_setopt(curl_handle, CURLOPT_WRITEFUNCTION, handleFile);
        curl_easy_setopt(curl_handle, CURLOPT_WRITEDATA, file);
        // EXECUTE
        res = curl_easy_perform(curl_handle);

        if (res == CURLE_OK) {
            printf("Downloaded file.\n");
        } else {
            printf("Could not download file..\n");
        }
        fclose(file);

    } else {
        printf("Error\n");
    }
}

void AutoDownloader::getDownloadLink() {
    string releaseData;
    CURLcode res;

    // SET URL
    curl_easy_setopt(curl_handle, CURLOPT_URL, releaseUrl.c_str());
    curl_easy_setopt(curl_handle, CURLOPT_NOPROGRESS, 1L);
    // SET AUTHORIZATION
    curl_easy_setopt(curl_handle, CURLOPT_USERAGENT, fileName.c_str());
    curl_easy_setopt(curl_handle, CURLOPT_XOAUTH2_BEARER, accessToken.c_str());
    // Needed due to certification issues..
    curl_easy_setopt(curl_handle, CURLOPT_SSL_VERIFYPEER, false);
    // WRITE DATA
    curl_easy_setopt(curl_handle, CURLOPT_WRITEFUNCTION, handleUrl);
    curl_easy_setopt(curl_handle, CURLOPT_WRITEDATA, &releaseData);
    // EXECUTE
    res = curl_easy_perform(curl_handle);

    if (res == CURLE_OK) {
        if (json::accept(releaseData)) {
            json data = json::parse(releaseData);
            releaseUrl = data["assets"][0]["browser_download_url"];
        } else {
            printf("invalid data\n");
        }
    } else {
        printf("invalid\n");;
    }
}

void AutoDownloader::clean() {
    curl_easy_cleanup(curl_handle);
    curl_global_cleanup();
}

size_t AutoDownloader::handleFile(void *ptr, size_t size, size_t nmemb, void *stream) {
    size_t written = fwrite(ptr, size, nmemb, (FILE *)stream);
    return written;
}

size_t AutoDownloader::handleUrl(void *ptr, size_t size, size_t nmemb, string *data) {
    data->append((char*) ptr, size * nmemb);
    return size * nmemb;
}

AutoDownloader::AutoDownloader(char *releaseUrl, char *accessToken, char *fileName, bool debug) {
    this->releaseUrl = releaseUrl;
    this->accessToken = accessToken;
    this->fileName = fileName;
    this->debug = debug;
}


