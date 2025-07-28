# HDL Coder Support Package for NI FPGA Hardware

HDL Coder™ Support Package for NI FPGA Hardware enables generating bitfiles for NI FPGA hardware from HDL Coder by providing LabVIEW FPGA integration.

This workflow allows you to perform the following actions:

- Map algorithm I/O to onboard interfaces
- Generate HDL code
- Generate a LabVIEW FPGA project and create a bitfile. Once created, you can upload this file to NI FPGA Hardware.

Note: This support package is functional for R2022b and later releases listed in the table below

## Software Compatibility

- For 32-bit LabVIEW -
    | HDL Coder™ Support Package for NI FPGA Hardware | MathWorks Simulink® | LabVIEW Full or Professional Development Systems(32-bit) | LabVIEW FPGA Module(32-bit) | NI R Series Multifunction RIO with LabVIEW Support(32-bit)** | FlexRIO with Integrated IO(PXIe-7890/7891)*** | IP to FPGA Conversion Utility |
    |:-|:-|:-|:-|:-|:-|:-|
    | 24.5 (2024 Q3) | R2024b*<br>R2024a*<br>R2023b*<br>R2023a*<br> R2022b* | 2021 | 2021 | 2024 Q3 | 2024 Q3 | 2024 Q3 |
    | 24.0 (2024 Q1) | R2023b*<br>R2023a*<br> R2022b* | 2020 and 2021 | 2020 and 2021 | 2023 Q2 | 2023 Q2(Only LabVIEW 2021 supported) | 2024 Q1 |
    | 23.5 (2023 Q3) | R2023a*<br> R2022b* | 2020 and 2021 | 2020 and 2021 | 2023 Q2 | 2023 Q2(Only LabVIEW 2021 supported) | 2023 Q3 |
    | 23.3 (2023 Q2) | R2023a*<br> R2022b* | 2020 and 2021 | 2020 and 2021 | 2023 Q1 | Not Supported | 2023 Q2 |
    | 23.0 (2023 Q1) | R2022b* | 2019, 2020 and 2021 | 2019, 2020 and 2021 | 2022 Q4 | Not Supported | 2023 Q1 |

- For 64-bit LabVIEW -
    | HDL Coder™ Support Package for NI FPGA Hardware | MathWorks Simulink® | LabVIEW Full or Professional Development Systems(64-bit) | LabVIEW FPGA Module(64-bit) | NI R Series Multifunction RIO with LabVIEW Support(64-bit)** | FlexRIO with Integrated IO(PXIe-7890/7891)*** | IP to FPGA Conversion Utility |
    |:-|:-|:-|:-|:-|:-|:-|
    | 25.3 (2025 Q2) | R2025a*<br>R2024b*<br>R2024a*<br>R2023b*<br>R2023a*<br> R2022b* | 2023<br>2024<br>2025 | 2023<br>2024<br>2025 | 2025 Q1 | 2025 Q1 | 2025 Q2 |
    | 24.5 (2024 Q3) | R2024b*<br>R2024a*<br>R2023b*<br>R2023a*<br> R2022b* | 2023 and 2024 | 2023 and 2024 | 2024 Q3 | 2024 Q3 | 2024 Q3 |
    | 24.0 (2024 Q1) | R2023b*<br>R2023a*<br> R2022b* | 2023 | 2023 | 2023 Q2 | 2023 Q2 | 2024 Q1 |
    | 23.5 (2023 Q3) | R2023a*<br> R2022b* | 2023 | 2023 | 2023 Q2 | 2023 Q2 | 2023 Q3 |
    | 23.3 (2023 Q2) | R2023a*<br> R2022b* | 2023 | 2023 | 2023 Q1 | Not Supported | 2023 Q2 |

\* Make sure to look up the [known issues](https://github.com/ni/hdlcoder-support-package-for-nifpga-hardware/releases/tag/v25.3) table and apply any suggested workarounds accordingly before using release 25.3.

\** **Note**: **NI R Series Multifunction RIO with LabVIEW Support** driver is required only for R-series devices.

\*** **Note**: **FlexRIO with Integrated IO** driver is needed only for PXIe-7890/7891 devices.

## Installation Guide for HDL Coder Support Package for NI FPGA Hardware

Before you begin, install the supported versions of MathWorks MATLAB®, Simulink® and HDL Coder™.

Install and activate [LabVIEW Full or Professional Development Systems](https://www.ni.com/en-us/support/downloads/software-products/download.labview.html) , [LabVIEW FPGA Module](https://www.ni.com/en-us/support/downloads/software-products/download.labview-fpga-module.html), [NI R Series Multifunction RIO LabVIEW Support](https://www.ni.com/en-us/support/downloads/drivers/download.ni-r-series-multifunction-rio.html), [FlexRIO](https://www.ni.com/en-in/support/downloads/drivers/download.flexrio.html) and [IP to FPGA Conversion Utility](https://www.ni.com/en-us/support/downloads/software-products/download.ip-to-fpga-conversion-utility.html).

### Install HDL Coder Support Package for NI FPGA Hardware

1. Open the MATLAB Add-On Explorer.
1. Use the search bar to find **HDL Coder Support Package for NI FPGA Hardware**
1. Install the add-on.
1. Restart MATLAB.

### Compile Server Considerations

- Local Compile Server – To install the recommended version of the Xilinx compilation tool, refer to [Compatibility between Xilinx Compilation Tools and NI FPGA Hardware](https://www.ni.com/en-us/support/documentation/compatibility/19/compatibility-between-xilinx-compilation-tools-and-ni-fpga-hardware.html). Install the compilation tool from [LabVIEW FPGA Compilation Tool](https://www.ni.com/en-us/support/downloads/software-products/download.labview-fpga-compilation-tool.html).
- Network Compile Server – To set up a network compile server, refer to [NI LabVIEW FPGA Compilation Options](https://www.ni.com/en-us/innovations/white-papers/10/ni-labview-fpga-compilation-options.html).
- LabVIEW FPGA Compile Cloud Service – To set up an account to use the cloud compile service, refer to [Creating an Account for the NI LabVIEW FPGA Compile Cloud Service](https://knowledge.ni.com/KnowledgeArticleDetails?id=kA03q000000YIRcCAO&amp;l=en-IN). For more details on Compile Cloud Service, refer to [Compile Faster with the LabVIEW FPGA Compile Cloud Service](https://www.ni.com/en-us/support/documentation/supplemental/14/compile-faster-with-the-labview-fpga-compile-cloud-service.html).

### Known Limitations

- Only supports VHDL.
- No support for double precision ports (single precision is supported).
- Only registers CPU-FPGA communication through Read/Write controls.
- No support for purely combinatorial circuits, such as circuits without clocks.
- Cannot connect array and complex ports to board I/O.
- Post code generation ports in VHDL entity that do not have a corresponding model port(e.g., clk_enable) will be mapped to registers.
- Save and Load Restore Point does not work.
- Auto-restore last exited session does not work.
- Only English LabVIEW is supported.
