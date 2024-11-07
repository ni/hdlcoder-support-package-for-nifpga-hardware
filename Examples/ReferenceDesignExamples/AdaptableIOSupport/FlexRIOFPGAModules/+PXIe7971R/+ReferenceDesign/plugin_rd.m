function hRD = plugin_rd()
    % Reference design definition

    % Construct reference design object
    hRD = NIHDLWorkflow.ReferenceDesignNI('SynthesisTool', 'NI LabVIEW');

    hRD.ReferenceDesignName = 'Default system';
    hRD.BoardName = sprintf('%s', 'PXIe-7971R');

    % Tool information
    % Needs to be changed in future
    hRD.SupportedToolVersion = {'2021', '2023', '2024'};
end