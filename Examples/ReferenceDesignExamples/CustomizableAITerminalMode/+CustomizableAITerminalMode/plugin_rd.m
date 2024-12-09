function hRD = plugin_rd()
    % Reference design definition

    % Construct reference design object
    hRD = NIHDLWorkflow.ReferenceDesignNI('SynthesisTool', 'NI LabVIEW');

    hRD.ReferenceDesignName = 'CustomizableAITerminalMode';
    hRD.BoardName = sprintf('%s', 'PXIe-7868R');

    % Tool information
    % Needs to be changed in future
    hRD.SupportedToolVersion = {'2021', '2023', '2024'};
    % Reference design path used below is the relative path
    hRD.addCustomLabviewDesign('LabviewProject','PXIe7868R.lvproj');
    hRD.addParameter('ParameterID'    ,  'AI_Terminal_Mode', ...
                     'DisplayName'    ,  'AI_Terminal_Mode', ...
                     'DefaultValue'   ,  'DIFF',...
                     'ParameterType'  ,   hdlcoder.ParameterType.Dropdown, ...
                     'Choice'         ,   {'DIFF','NRSE','RSE'});
end