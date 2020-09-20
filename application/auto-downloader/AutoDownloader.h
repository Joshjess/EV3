//
// Created by mohamedelh on 16-9-2020.
//


#ifndef EV3_AUTODOWNLOADER_H
#define EV3_AUTODOWNLOADER_H

#include <curl/curl.h>
#include <string>

using namespace std;

class AutoDownloader {
public:
    AutoDownloader(char* releaseUrl, char* accessToken, char* fileName, bool debug=false);
    void performDownload();

private:
    string releaseUrl;
    string accessToken;
    CURL *curl_handle;
    string fileName;
    string urlToDownload;
    bool debug;
    void getDownloadLink();
    void downloadFile();
    void clean();
    static size_t handleUrl(void *ptr, size_t size, size_t nmemb, string* data);
    static size_t handleFile(void *ptr, size_t size, size_t nmemb, void *stream);

};


#endif //EV3_AUTODOWNLOADER_H
