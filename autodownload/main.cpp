#include <string>
#include <curl/curl.h>
#include <nlohmann/json.hpp>

#define RELEASE_URL "https://api.github.com/repos/Joshjess/EV3/releases/latest"
#define ACCESS_TOKEN "8530a9f424eb3da8bdf595e88089600f0116ccd3"
#define FILE_TO_DOWNLOAD_TO "robotics" // NEEDS TO BE ADJUSTED TO RIGHT LOCATION

using namespace std;
using namespace nlohmann;

void getDownloadLink(CURL *curl_handle, string *urlToDownload);
void downloadFile(CURL *curl_handle, string downloadLink, FILE* file);
size_t handleStrings(void *ptr, size_t size, size_t nmemb, string* data);
size_t handleFiles(void *ptr, size_t size, size_t nmemb, void *stream);

int main() {

    CURL *curl_handle;
    FILE* file;
    string urlToDownload;

    curl_global_init(CURL_GLOBAL_ALL);
    curl_handle = curl_easy_init();

    // DEBUG
#ifdef DEBUG
    curl_easy_setopt(curl_handle, CURLOPT_VERBOSE, 1L);
#endif

    // FIRST: OBTAIN DOWNLOAD LINK
    getDownloadLink(curl_handle, &urlToDownload);

    // SECOND: DOWNLOAD FILE
    downloadFile(curl_handle, urlToDownload, file);

    // THIRD: EXECUTE THE FILE
    string permCommand = "sudo chmod +x ";
    permCommand.append(FILE_TO_DOWNLOAD_TO);
    string executeScript = "./";
    executeScript.append(FILE_TO_DOWNLOAD_TO);

    system(permCommand.c_str());
    system(executeScript.c_str());

    // CLEAN UP
    curl_easy_cleanup(curl_handle);
    curl_global_cleanup();
    return 0;
}


void getDownloadLink(CURL *curl_handle, string *urlToDownload) {

    string releaseData;
    CURLcode res;

    // SET URL
    curl_easy_setopt(curl_handle, CURLOPT_URL, RELEASE_URL);
    curl_easy_setopt(curl_handle, CURLOPT_NOPROGRESS, 1L);
    // SET AUTHORIZATION
    curl_easy_setopt(curl_handle, CURLOPT_USERAGENT, "robotics");
    curl_easy_setopt(curl_handle, CURLOPT_XOAUTH2_BEARER, ACCESS_TOKEN);
    // Needed due to certification issues..
    curl_easy_setopt(curl_handle, CURLOPT_SSL_VERIFYPEER, false);
    // WRITE DATA
    curl_easy_setopt(curl_handle, CURLOPT_WRITEFUNCTION, handleStrings);
    curl_easy_setopt(curl_handle, CURLOPT_WRITEDATA, &releaseData);
    // EXECUTE
    res = curl_easy_perform(curl_handle);

    if (res == CURLE_OK) {
        if (json::accept(releaseData)) {
            json data = json::parse(releaseData);
            *urlToDownload = data["assets"][0]["browser_download_url"];
        } else {
            printf("invalid data\n");
        }
    } else {
        printf("invalid\n");;
    }
}

void downloadFile(CURL *curl_handle, string downloadLink, FILE* file) {

    CURLcode res;
    // OPEN FILE
    file = fopen(FILE_TO_DOWNLOAD_TO, "w+");
    if (file) {
        // SET URL
        curl_easy_setopt(curl_handle, CURLOPT_URL, downloadLink.c_str());
        curl_easy_setopt(curl_handle, CURLOPT_FOLLOWLOCATION, 1L);
        // WRITE DATA
        curl_easy_setopt(curl_handle, CURLOPT_WRITEFUNCTION, handleFiles);
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

size_t handleStrings(void *ptr, size_t size, size_t nmemb, string* data) {
    data->append((char*) ptr, size * nmemb);
    return size * nmemb;
}
size_t handleFiles(void *ptr, size_t size, size_t nmemb, void *stream) {
    size_t written = fwrite(ptr, size, nmemb, (FILE *)stream);
    return written;
}