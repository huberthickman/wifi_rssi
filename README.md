# wifi_rssi

A simple macOS command-line tool written in Objective-C that prints the current Wi-Fi RSSI (signal strength) in dBm using CoreWLAN.

This is meant to be a replacement for the long-deprecated and now missing aiport command on macos for use with HamClock.

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
agrCtlRSSI: -40
```

## Notes
- RSSI is reported in **dBm** (closer to 0 means a stronger signal).

## License
MIT
