# hardware-adafruit-ignition-adapter

## Description

Adapter board for the [Adafruit FT232H](https://www.adafruit.com/product/2264)
compatible with `iceprog` and the Samtec debug pinout we're using on our
designs.

## Release Information

This board is a small, quick-turn PCB fabricated through Sierra Circuits'
Turnkey Pro fabrication and assembly service. As such, it doesn't use Oxide's
normal release tooling, and we have to map Altium releases to Sierra Circuits
part numbers. Fabrication data follows the `[CPN]_rev[X]_v[Y]` naming
convention, where revision `rev[X]` and version `v[Y]` corresponds to the two
numbers in Altium's release version.

- When we release the board in Altium 365, the Altium release is numbered `[X].[Y]`

- We then name the tapeout files `[CPN]_rev[X]_v[Y]` to maintain the mapping
  between Altium release and the out-of-band tapeout data package.

- However, Sierra Circuits only accepts a single revision number. When we
  fabricate the board through Sierra Circuits, we specify the revision using the
  `[X]` number. This appears in Sierra's order system as `[CPN]_rev[X]`.

Essentially, this means we ignore the `[Y]` value, and we increment the `[X]` in
the Altium release, and ignoring the `[Y]` value. Internally, the `[Y]` value in
the Altium release ends up getting incremented if we have to re-release
something in Altium to correct data export errors before submitting the release
for fabrication (for example, to fix missing drill files in the tapeout data
package). If this sounds confusing, it's because it is.

## Assembly Instructions

To assemble an Ignition programming dongle, you need:

- One (1) 913-0000089 Adafruit FT232H breakout board (Adafruit Product ID [2264](https://www.adafruit.com/product/2264))
- One (1) 913-0000091 Adafruit Ignition Adapter PCBA
- One (1) SFSD-05-28-G-10.00-D-NDX cable assembly, or equivalent cable with a
  different length (for example, we use the SFSD-05-28-G-3.00-D-NDX in Minibar) 
- 1-inch diameter adhesive-lined heat shrink tubing with a 3:1 shrink ratio
- X-Acto knife







- Superglue
- Heat shrink cable labels (Dymo XXXXXXX or equivalent)
- Brother PTouch printer with XXXXXXX width label tape
- 


Solder the Adafruit Ignition adapter board to the Adafruit FT232H breakout
board.

Make sure switch 

Cut a 2-inch length of 1-inch diameter heat shrink tubing and shrink wrap the
entire PCBA, including the connector

Allow the heat shrink to completely cool

Cut the heat shrink away from the Ignition programming connector




Next, we need to assign the dongle a unique serial number. For some reason,
Adafruit programs all their FT232H breakout boards with identical serial
numbers, meaning we can't identify which dongle is which when we have multiple
programming dongles plugged into the same programming station.

Dependencies:

- `python3`
- `ftdi-eeprom`
- `ptouch-print` (manually built following [these instructions](https://github.com/HenrikBengtsson/brother-ptouch-label-printer-on-linux))


Clone the [oxidecomputer/hardware-toolbox
](https://github.com/oxidecomputer/hardware-toolbox)repo and run
`adafruit-fix.py`.

```
$ git clone https://github.com/oxidecomputer/hardware-toolbox
$ cd hardware-toolbox/adafruit-programming
$ python3 adafruit_fix.py
```

See `$ python3 adafruit_fix.py --help` for a list of optional arguments.

Running `adafruit_fix.py` will generate a random serial number, program the
FT232 EEPROM, and print a label with the serial number. Apply the serial number
to the bottom of the dongle as shown in Figure X.







