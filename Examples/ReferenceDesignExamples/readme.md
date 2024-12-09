# Reference Design Examples

`HDL Coder Support Package for NI FPGAs` support custom reference designs starting from version 24.5

A reference design can specify a LabVIEW FPGA project template that contains other IP blocks and parameters to be used by the workflow.
Registering this reference design with the NI FPGA Bitfile Generation Workflow enables you to adjust the parameters of the project in task 1.2 `Set Reference Design` and connect model ports to IP ports on the LabVIEW FPGA project template in Task 1.3 `Set Target Interfaces`.

Refer [Creating a reference design](https://www.ni.com/docs/en-US/bundle/ip-to-fpga-conversion-utility/page/creating-reference-designs.html) to create your own LabVIEW FPGA projects as reference designs for the workflow.

This folder includes the following examples to guide you through the process of registering a custom reference design, parameterize the reference design and connect to IP ports on the reference design.

1. AdaptableIOSupport

   This example illustrates how to utilize the Adaptable module on a FlexRIO FPGA Target with the reference design. It uses the PXIe-7891R target and the NI 5732 adaptable module.

2. CustomizableAITerminalMode

   This example illustrates how to use conditional disable symbols and structures to support various configurations. It uses the PXIe-7868R target and configures different AI terminal modes using conditional disable symbols.

3. Internal IO

   This example demonstrates how to create a bitfile with additional customizable IP alongside a Simulink model using a LabVIEW project as a Reference Design in the NI Bitfile Generation Workflow, including IP customization via the Parameters table and port connections in Set Target Interfaces.