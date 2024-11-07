function hB = plugin_board()
    % Board definition

    % Construct board object
    hB = hdlcoder.Board;

    hB.BoardName    = 'PXIe-7971R';

    % FPGA device information
    hB.FPGAVendor   = 'Xilinx';
    hB.FPGAFamily   = 'Kintex7';
    hB.FPGADevice   = 'xc7k325t'; 
    hB.FPGAPackage  = 'ffg900';
    hB.FPGASpeed    = '-2';
    
    hB = NIHDLWorkflow.plugin_board(hB);
	
	for i = 0:1
		BoardIO = char("IO Module\AI " + num2str(i));
		
			hB.addInterface( NIHDLWorkflow.InterfaceBoardIO(...
				'InterfaceDataType', 'U16',...
				'InterfaceID',   BoardIO,...
				'InterfaceType',  'IN'));
		
	end
	for i = 0:1
		BoardIO = char("IO Module\DIO Port " + num2str(i) +  " Rd Data");
		
			hB.addInterface( NIHDLWorkflow.InterfaceBoardIO(...
				'InterfaceDataType', 'U8',...
				'InterfaceID',   BoardIO,...
				'InterfaceType',  'IN'));
		
	end
	for i = 0:1
		BoardIO = char("IO Module\DIO Port " + num2str(i) +  " Wr Data");
		
			hB.addInterface( NIHDLWorkflow.InterfaceBoardIO(...
				'InterfaceDataType', 'U8',...
				'InterfaceID',   BoardIO,...
				'InterfaceType',  'OUT'));
		
	end
	for i = 0:1
		BoardIO = char("IO Module\DIO Port " + num2str(i) +  " WE");
		
			hB.addInterface( NIHDLWorkflow.InterfaceBoardIO(...
				'InterfaceDataType', 'Boolean',...
				'InterfaceID',   BoardIO,...
				'InterfaceType',  'OUT'));
		
	end

	
end