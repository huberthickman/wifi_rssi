# wifi_rssi

A simple macOS command-line tool written in Objective-C that prints the current Wi-Fi RSSI (signal strength) in dBm using CoreWLAN.

## Requirements
- macOS
- Xcode Command Line Tools
- Wi-Fi enabled

## Build
```sh
make
```

## Run
```sh
./wifi_rssi
```

Example output:
```text
Interface: en0
SSID: MyNetwork
RSSI: -47 dBm
```

## Notes
- RSSI is reported in **dBm** (closer to 0 means a stronger signal).

## License
MIT
