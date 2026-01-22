APP     := wifi_rssi
SRC     := main.m
CC      := clang
CFLAGS  := -Wall -Wextra -O2
LDFLAGS := -framework Foundation -framework CoreWLAN

all: $(APP)

$(APP): $(SRC)
	$(CC) $(CFLAGS) -o $@ $(SRC) $(LDFLAGS)

clean:
	rm -f $(APP)

.PHONY: all clean

