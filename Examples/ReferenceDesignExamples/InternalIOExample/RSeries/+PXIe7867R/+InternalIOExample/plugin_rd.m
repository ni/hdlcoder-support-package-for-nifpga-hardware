function hRD = plugin_rd()
    % Reference design definition

    % Construct reference design object
    hRD = NIHDLWorkflow.ReferenceDesignNI('SynthesisTool', 'NI LabVIEW');

    hRD.ReferenceDesignName = 'Internal IO Example';
    hRD.BoardName = sprintf('%s', 'PXIe-7867R');

    % Tool information
    % Needs to be changed in future
    hRD.SupportedToolVersion = {'2021','2023','2024'};
    % Reference design path used below is the relative path
    hRD.addCustomLabviewDesign('LabviewProject','PXIe-7867R.lvproj');
    hRD.addParameter('ParameterID'    ,  'SELECTED_IP', ...
                     'DisplayName'    ,  'SELECTED_IP', ...
                     'DefaultValue'   ,  '3IN_3OUT',...
                     'ParameterType'  ,   hdlcoder.ParameterType.Dropdown, ...
                     'Choice'         ,   {'3IN_3OUT','2IN_2OUT'});
end