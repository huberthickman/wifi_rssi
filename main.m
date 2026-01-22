#import <Foundation/Foundation.h>
#import <CoreWLAN/CoreWLAN.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        CWWiFiClient *client = [CWWiFiClient sharedWiFiClient];
        CWInterface *iface = client.interface;

        if (!iface) {
            fprintf(stderr, "Error: No Wi-Fi interface found.\n");
            return 1;
        }

        if (!iface.powerOn) {
            fprintf(stderr, "Error: Wi-Fi is powered off.\n");
            return 2;
        }

        NSInteger rssi = iface.rssiValue;

        // rssiValue is 0 when not associated or permission denied
        if (rssi == 0) {
            fprintf(stderr,
                    "RSSI unavailable (not associated or missing Location Services permission).\n");
            return 3;
        }

        NSString *ssid = iface.ssid ?: @"<hidden or unavailable>";

        printf("Interface: %s\n", iface.interfaceName.UTF8String);
        printf("SSID: %s\n", ssid.UTF8String);
        printf("RSSI: %ld dBm\n", (long)rssi);

        return 0;
    }
}

