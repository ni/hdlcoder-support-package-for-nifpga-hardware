# HDL Coder Support Package for NI FPGA Hardware

HDL Coder™ Support Package for NI FPGA Hardware enables generating bitfiles for NI FPGA hardware from HDL Coder by providing LabVIEW FPGA integration.

This workflow allows you to perform the following actions:

- Map algorithm I/O to onboard interfaces
- Generate HDL code
- Generate a LabVIEW FPGA project and create a bitfile. Once created, you can upload this file to NI FPGA Hardware.

Note: This support package is functional for R2022b and beyond.

## Software Compatibility

| HDL Coder™ Support Package for NI FPGA Hardware | MathWorks Simulink® | LabVIEW Full or Professional Development Systems (32-bit) | LabVIEW FPGA Module (32-bit) | NI R Series Multifunction RIO with LabVIEW Support (32-bit) | IP to FPGA Conversion Utility |
|:-|:-|:-|:-|:-|:-|
| 22.8 (2022 Q4) | R2022b* | 2019, 2020 and 2021 | 2019, 2020 and 2021 | 2022 Q4 | 2022 Q4 |
| 23.0 (2023 Q1) | R2022b* | 2019, 2020 and 2021 | 2019, 2020 and 2021 | 2022 Q4 | 2023 Q1 |

\* make sure to look up the [known issues](https://github.com/ni/hdlcoder-support-package-for-nifpga-hardware/releases/tag/v23.0) table and apply any suggested workarounds accordingly before using release 23.0.

## Installation Guide for HDL Coder Support Package for NI FPGA Hardware

Before you begin, install the supported versions of MathWorks MATLAB®, Simulink® and HDL Coder™.

Install and activate [LabVIEW Full or Professional Development Systems (32-bit)](https://www.ni.com/en-us/support/downloads/software-products/download.labview.html) , [LabVIEW FPGA Module (32-bit)](https://www.ni.com/en-us/support/downloads/software-products/download.labview-fpga-module.html), [NI R Series Multifunction RIO LabVIEW Support (32-bit)](https://www.ni.com/en-us/support/downloads/drivers/download.ni-r-series-multifunction-rio.html), and [IP to FPGA Conversion Utility](https://www.ni.com/en-us/support/downloads/software-products/download.ip-to-fpga-conversion-utility.html).


### Install HDL Coder Support Package for NI FPGA Hardware

1. Open the MATLAB Add-On Explorer.
1. Use the search bar to find **HDL Coder Support Package for NI FPGA Hardware**
1. Install the add-on.
1. Restart MATLAB.

### Compile Server Considerations

- Local Compile Server – To install the recommended version of the Xilinx compilation tool, refer to [Compatibility between Xilinx Compilation Tools and NI FPGA Hardware](https://www.ni.com/en-us/support/documentation/compatibility/19/compatibility-between-xilinx-compilation-tools-and-ni-fpga-hardware.html). Install the compilation tool from [LabVIEW FPGA Compilation Tool](https://www.ni.com/en-us/support/downloads/software-products/download.labview-fpga-compilation-tool.html).
- Network Compile Server – To set up a network compile server, refer to [NI LabVIEW FPGA Compilation Options](https://www.ni.com/en-us/innovations/white-papers/10/ni-labview-fpga-compilation-options.html).
- LabVIEW FPGA Compile Cloud Service – To set up an account to use the cloud compile service, refer to [Creating an Account for the NI LabVIEW FPGA Compile Cloud Service](https://knowledge.ni.com/KnowledgeArticleDetails?id=kA03q000000YIRcCAO&amp;l=en-IN). For more details on Compile Cloud Service, refer to [Compile Faster with the LabVIEW FPGA Compile Cloud Service](https://www.ni.com/en-us/support/documentation/supplemental/14/compile-faster-with-the-labview-fpga-compile-cloud-service.html).
