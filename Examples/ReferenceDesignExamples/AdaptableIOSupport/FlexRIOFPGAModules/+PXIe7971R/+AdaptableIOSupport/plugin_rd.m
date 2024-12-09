function hRD = plugin_rd()
    % Reference design definition

    % Construct reference design object
    hRD = NIHDLWorkflow.ReferenceDesignNI('SynthesisTool', 'NI LabVIEW');

    hRD.ReferenceDesignName = 'Adaptable IO Support';
    hRD.BoardName = sprintf('%s', 'PXIe-7971R');
    hRD.addCustomLabviewDesign('LabviewProject','PXIe7971R.lvproj');

    % Tool information
    % Needs to be changed in future
    hRD.SupportedToolVersion = {'2021', '2023', '2024'};
end