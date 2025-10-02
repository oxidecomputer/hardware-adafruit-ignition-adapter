# hardware-adafruit-ignition-adapter

## Description

Adapter board for the [Adafruit FT232H](https://www.adafruit.com/product/2264)
compatible with `iceprog` and the Samtec debug pinout we're using on our
designs.

## Ordering Information

Each release contains a file called `[CPN]_release_notes.txt` with ordering
instructions. Order PCBs through Sierra Circuits' [Turnkey
PRO](https://www.protoexpress.com/products/turnkey-pro/) fabrication and
assembly service.

## Release Information

Fabrication data follows the `[CPN]_rev[X]_v[Y]` naming convention, where
revision `rev[X]` and version `v[Y]` corresponds to the two numbers in Altium's
release version. Here's why:

- When we release the board in Altium 365, Altium tags the release with the
  suffix `[X].[Y]`

- However, Sierra Circuits only accepts a single revision number, which appears
  in their ordering system as `_rev[X]`.
  
- When we assemble the tapeout data package together for Sierra Circuits, we
  name the tapeout files `[CPN]_rev[X]_v[Y]` to maintain the mapping between
  Altium release and the out-of-band tapeout data package.

- When we order PCBs through Sierra Circuits, we specify the revision using the
  `[X]` number. This appears in Sierra's order system as `[CPN]_rev[X]`.

Essentially, we ignore the `[Y]` value and we increment the `[X]` in the Altium
release. In practice, however, the `[Y]` value in the Altium release ends up
getting incremented if we have to re-release something in Altium to correct data
export errors before submitting the release for fabrication (for example, to fix
missing drill files in the tapeout data package). If this sounds confusing, it's
because it is.

## Assembly

Assembly instructions for the complete Ignition programming dongle are located
[here](https://github.com/oxidecomputer/hardware-adafruit-ignition-adapter/tree/main/assembly).