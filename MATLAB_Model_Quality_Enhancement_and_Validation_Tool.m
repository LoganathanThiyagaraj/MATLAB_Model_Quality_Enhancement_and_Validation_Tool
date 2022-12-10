
function varargout = MATLAB_Model_Quality_Enhancement_and_Validation_Tool(varargin)

% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % 
% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % 
% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % 
%Tool Version  :20200203_Model_Quality_Enchancement_and_validation_tool_v16
%Date          : 05/05/2020
%Author        :Vaibhav Thakre(1603092), Noopur Dosi(1096665)

% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % 
% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % 
% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % 


% MATLAB_Model_Quality_Enhancement_and_Validation_ToolMATLAB code for MATLAB_Model_Quality_Enhancement_and_Validation_Tool_v5.fig
%      ADAS_3_5_AUTOMATION_SCRIPT_V5, by itself, creates a new MATLAB_Model_Quality_Enhancement_and_Validation_Toolor raises the existing
%      singleton*.
%
%      H = MATLAB_Model_Quality_Enhancement_and_Validation_Toolreturns the handle to a new MATLAB_Model_Quality_Enhancement_and_Validation_Toolor the handle to
%      the existing singleton*.
%
%      ADAS_3_5_AUTOMATION_SCRIPT_V5('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in ADAS_3_5_AUTOMATION_SCRIPT_V5.M with the given input arguments.
%
%      ADAS_3_5_AUTOMATION_SCRIPT_V5('Property','Value',...) creates a new MATLAB_Model_Quality_Enhancement_and_Validation_Toolor raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before MATLAB_Model_Quality_Enhancement_and_Validation_Tool_v5_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to MATLAB_Model_Quality_Enhancement_and_Validation_Tool_v5_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help MATLAB_Model_Quality_Enhancement_and_Validation_Tool_v5

% Last Modified by GUIDE v2.5 04-May-2020 22:48:34

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @MATLAB_Model_Quality_Enhancement_and_Validation_Tool_OpeningFcn, ...
                   'gui_OutputFcn',  @MATLAB_Model_Quality_Enhancement_and_Validation_Tool_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end

% End initialization code - DO NOT EDIT

% global FileName 
% FileName= '';
%ROMName= '';
%clear all;
% --- Executes just before MATLAB_Model_Quality_Enhancement_and_Validation_Toolis made visible.
function MATLAB_Model_Quality_Enhancement_and_Validation_Tool_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to MATLAB_Model_Quality_Enhancement_and_Validation_Tool(see VARARGIN)

% Choose default command line output for MATLAB_Model_Quality_Enhancement_and_Validation_Tool_v5

handles.output = hObject;
axes(handles.axes1)

matlabImage = imread('TATA_Logo.png');
 
image(matlabImage)

axis off
axis image

axes(handles.axes2)

matlabImage = imread('Nissan_Logo.png');
image(matlabImage)
axis off
axis image

% Update handles structure
guidata(hObject, handles);


clear all;

% UIWAIT makes MATLAB_Model_Quality_Enhancement_and_Validation_Toolwait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = MATLAB_Model_Quality_Enhancement_and_Validation_Tool_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes during object creation, after setting all properties.
function axes1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes1



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in Load Model button.
function Load_Model_Callback(hObject, eventdata, handles)
% hObject    handle to Load Model button(see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%clear all;
%Select Model%
global FileName PathName
PathName = '';
[FileName,PathName] = uigetfile('*.slx','Select the Model file');
%Select ROM%
%[ROMName,ROMPathName] = uigetfile('*.m','Select the Model ROM file');

%Load File%
if(FileName~=0)
    load_system([PathName FileName]);
else
    msgbox('Please select the model file and run the tool again', 'Error', 'error'); %Throw an error if model selection is invalid%
    return;
end
set(handles.listbox2, 'String', FileName);



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double




% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in Color Formatting Button.
function Color_Formatting_Callback(hObject, eventdata, handles)
% hObject    handle to Color_Formatting pushbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global FileName PathName ROMName
%% Script for Setting Block size and color
%disp(length(FileName))
%% Select model(.mdl file)
 token_color= strtok(FileName,'_');
 if length(FileName)~=0
  if (strfind(ROMName,token_color)& (length(ROMName)~=0))
MODEL_NAME=FileName;
PATH1= PathName;

modelName = MODEL_NAME;
    try
        Mdl_Extn=MODEL_NAME(end-3:end);
        Extn_retval=strcmp(Mdl_Extn,'.slx');
    catch err
        return;
    end
    if Extn_retval==0
        warndlg('Please Select .mdl file','Auto configuration setting','modal');
        return;
    end
    MODEL_NAME= MODEL_NAME(1:end-4);

    if ~iscell(MODEL_NAME)&(MODEL_NAME == 0)
        return;
    end
    if ~iscell(MODEL_NAME)
        try
            load_system(strcat(PATH1,MODEL_NAME));
        catch err
            bdclose all;
            load_system(strcat(PATH1,MODEL_NAME));
        end
        MODEL_NAME ={MODEL_NAME};
    end
    mdl_name=get_param(MODEL_NAME,'Name');

%% For setting "Constant" blocks color

    All_Constant = find_system(MODEL_NAME,'BlockType','Constant');
    for Constant_list_index=1:length(All_Constant)
     set_param(All_Constant{Constant_list_index},'BackgroundColor','White');
	 set_param(All_Constant{Constant_list_index},'ForegroundColor','Black');
    end 
      

   All_Inports = find_system(MODEL_NAME,'BlockType','Inport');
   All_Outports = find_system(MODEL_NAME,'BlockType','Outport');
    
%% Inports  

    for Inport_list_index=1:length(All_Inports)
     set_param(All_Inports{Inport_list_index},'BackgroundColor','Green');
	  set_param(All_Inports{Inport_list_index},'ForegroundColor','Black');
    end
    
%% Outports

    for Outport_list_index=1:length(All_Outports)
      set_param(All_Outports{Outport_list_index},'BackgroundColor','Orange');
	   set_param(All_Outports{Outport_list_index},'ForegroundColor','Black');
     end


%% Goto  

    All_Goto = find_system(MODEL_NAME,'BlockType','Goto');
    for Goto_list_index=1:length(All_Goto)
    set_param(All_Goto{Goto_list_index},'BackgroundColor','Green');
	set_param(All_Goto{Goto_list_index},'ForegroundColor','Black');
    end 

%% From

     All_From = find_system(MODEL_NAME,'BlockType','From');
     for From_list_index=1:length(All_From)
      set_param(All_From{From_list_index},'BackgroundColor','Green');
	  set_param(All_From{From_list_index},'ForegroundColor','Black');
    end
    
%% SWitch

 All_Switch = find_system(MODEL_NAME,'BlockType','Switch');
     for Switch_list_index=1:length(All_Switch)
     set_param(All_Switch{Switch_list_index},'BackgroundColor','White');
	 set_param(All_Switch{Switch_list_index},'ForegroundColor','Black');
     end
     
%% Data_Type_Conversion
 
 All_DataType_Convert = find_system(MODEL_NAME,'BlockType','DataTypeConversion');
     for DataType_Convert_list_index=1:length(All_DataType_Convert)
     set_param(All_DataType_Convert{DataType_Convert_list_index},'BackgroundColor','White');
	 set_param(All_DataType_Convert{DataType_Convert_list_index},'ForegroundColor','Black');
     end 
    
%% Sum_Block
 
  All_Sum = find_system(MODEL_NAME,'BlockType','Sum');
     for Sum_list_index=1:length(All_Sum)
     set_param(All_Sum{Sum_list_index},'BackgroundColor','White');
	 set_param(All_Sum{Sum_list_index},'ForegroundColor','Black');
     end 
    
%% Product_Block
  All_Product = find_system(MODEL_NAME,'BlockType','Product');
     for Product_list_index=1:length(All_Product)
     set_param(All_Product{Product_list_index},'BackgroundColor','White');
	 set_param(All_Product{Product_list_index},'ForegroundColor','Black');
     end    

%% Relational_Operator   
  All_RelationalOperator = find_system(MODEL_NAME,'BlockType','RelationalOperator');
      for RelationalOperator_list_index=1:length(All_RelationalOperator)
      set_param(All_RelationalOperator{RelationalOperator_list_index},'BackgroundColor','White');
	  set_param(All_RelationalOperator{RelationalOperator_list_index},'ForegroundColor','Black');
      end  
    
    
%% Logic_Operator   
  All_Logic_Operator = find_system(MODEL_NAME,'BlockType','Logic');
     for Logic_Operator_list_index=1:length(All_Logic_Operator)
      set_param(All_Logic_Operator{Logic_Operator_list_index},'BackgroundColor','White');
	  set_param(All_Logic_Operator{Logic_Operator_list_index},'ForegroundColor','Black');
     end  
    
%% line
 All_signalLines = find_system(MODEL_NAME,'type','line');
     for Line_list_index = 1:length(All_signalLines)
	   set_param(All_signalLines{Line_list_index},'BackgroundColor','Black');
	   set_param(All_signalLines{Line_list_index},'ForegroundColor','Black');
     end
     
%% Subsystem blocks
 Subsystem_Sub_list=find_system(MODEL_NAME,'BlockType','SubSystem');
    for Subsystem_Sub_index=1:length(Subsystem_Sub_list)
     set_param(Subsystem_Sub_list{Subsystem_Sub_index},'BackgroundColor', 'White');
     set_param(Subsystem_Sub_list{Subsystem_Sub_index},'ForegroundColor', 'Black');
    end
    
%% linked subsystem
 Linked_Sub_list=find_system(MODEL_NAME,'FollowLinks','on','LookUnderMasks','on','BlockType','SubSystem','LinkStatus','resolved');
    for Linked_Sub_index=1:length(Linked_Sub_list)
     set_param(Linked_Sub_list{Linked_Sub_index},'BackgroundColor', 'Yellow');
    end
    
%% terminator blocks
 Terminator_Sub_list=find_system(MODEL_NAME,'BlockType','Terminator');
    for Terminator_Sub_index=1:length(Terminator_Sub_list)
     set_param(Terminator_Sub_list{Terminator_Sub_index},'BackgroundColor', 'White');
     set_param(Terminator_Sub_list{Terminator_Sub_index},'ForegroundColor', 'Black');
    end
    
%% Bus blocks
 Bus_Sub_list=find_system(MODEL_NAME,'BlockType','Bus');
    for Bus_Sub_index=1:length(Bus_Sub_list)
     set_param(Bus_Sub_list{Bus_Sub_index},'BackgroundColor', 'Black');
     set_param(Bus_Sub_list{Bus_Sub_index},'ForegroundColor', 'Black');
    end
    
%% Mux blocks
 Mux_Sub_list=find_system(MODEL_NAME,'BlockType','Mux');
    for Mux_Sub_index=1:length(Mux_Sub_list)
     set_param(Mux_Sub_list{Mux_Sub_index},'BackgroundColor', 'Black');
     set_param(Mux_Sub_list{Mux_Sub_index},'ForegroundColor', 'Black');
    end
    
%% Demux blocks
 Demux_Sub_list=find_system(MODEL_NAME,'BlockType','Demux');
    for Demux_Sub_index=1:length(Demux_Sub_list)
     set_param(Demux_Sub_list{Demux_Sub_index},'BackgroundColor', 'Black');
     set_param(Demux_Sub_list{Demux_Sub_index},'ForegroundColor', 'Black');
    end
    
   

%% Unitdelay blocks
 UnitDelay_Sub_list=find_system(MODEL_NAME,'BlockType','UnitDelay');
    for UnitDelay_Sub_index=1:length(UnitDelay_Sub_list)
     set_param(UnitDelay_Sub_list{UnitDelay_Sub_index},'BackgroundColor', 'White');
     set_param(UnitDelay_Sub_list{UnitDelay_Sub_index},'ForegroundColor', 'Black');
    end 
%% Bus creator blocks
 BusC_Sub_list=find_system(MODEL_NAME,'BlockType','BusCreator');
    for BusC_Sub_index=1:length(BusC_Sub_list)
     set_param(BusC_Sub_list{BusC_Sub_index},'BackgroundColor', 'Black');
     set_param(BusC_Sub_list{BusC_Sub_index},'ForegroundColor', 'Black');
    end
    
%% Bus selector blocks
 BusS_Sub_list=find_system(MODEL_NAME,'BlockType','BusSelector');
    for BusS_Sub_index=1:length(BusS_Sub_list)
     set_param(BusS_Sub_list{BusS_Sub_index},'BackgroundColor', 'Black');
     set_param(BusS_Sub_list{BusS_Sub_index},'ForegroundColor', 'Black');
    end
    %% trigger blocks
 Trigger_Block__list=find_system(MODEL_NAME,'BlockType','TriggerPort');
     for Trigger_index=1:length(Trigger_Block__list)
       set_param(Trigger_Block__list{Trigger_index},'BackgroundColor', 'White');
       set_param(Trigger_Block__list{Trigger_index},'ForegroundColor', 'Black');
     end
     
     
     %% for comment blocks
     Comment_Block__list=find_system(MODEL_NAME,'type','annotation');
     for Comment_index=1:length(Comment_Block__list)
       set_param(Comment_Block__list{Comment_index},'BackgroundColor', 'White');
       set_param(Comment_Block__list{Comment_index},'ForegroundColor', 'Black');
     end
     
     %% Save the system
     save_system(MODEL_NAME);
    open_system(MODEL_NAME);
     display = msgbox('Operation Completed');
  else
      display = msgbox('Please load correct ROM file');
  end

else
    display = msgbox('Please Load the Model');
 end
    

% --- Executes on button press in Port Dimension Check Button.
function Port_Dimension_Check_Callback(hObject, eventdata, handles)
% hObject    handle to Port Dimension Check pushbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%****************************************************************************************************%
%Script : IO Comparison from model with Data dictionary
%Date : 18/11/2019
%Author  :Payal Jaiswal, Noopur Dosi
%****************************************************************************************************%
display1= msgbox('before running port dimension script please run the model and pause it during compilation. Make sure that global subsystem is selected. ');
%Header of file%
waitfor(display1);
h=questdlg('Please press OK if loaded and paused your desired model ','click press OK to go to next step','OK','OK');
switch h
  case 'OK'
     %'OK' code here
     global FileName PathName ROMName ROMPathName
%disp(FileName)
token_port_dim= strtok(FileName,'_');
if length(FileName)~=0
    if (strfind(ROMName,token_port_dim)& (length(ROMName)~=0))
    
% token= strtok(FileName,'^ADAS$');
token = regexp(FileName,'ADAS','split');
s1='Extract_PortDimension.xls';
s2='';
name= strcat(token{1,1},s2,s1);


Header = [cellstr('SignalName'),cellstr('SignalDb Dimension'),cellstr('Model Dimension'),cellstr('Result')];
xlswrite(name,Header,'Sheet1','A5'); 

gcb;
ph = get_param(gcb,'PortHandles');
inputdim = get_param(ph.Inport,'CompiledPortDimensions');
outputdim = get_param(ph.Outport,'CompiledPortDimensions');
InputDimension = cell2mat(inputdim);
OutputDimension = cell2mat(outputdim);
InputNameDim = get_param(ph.Inport,'name');


modelName= strtok(FileName, '.');
%Extract model outputs
Output_list = find_system(modelName,'SearchDepth',1,'BlockType','Outport');
if(length(Output_list)~=0)
    for i= 1:length(Output_list)
    Output(i, 1) = get_param(Output_list(i), 'Name');
    end;


    In_Out=cat(1,InputNameDim,Output);%Concatenation of inputs and outputs%
    In_Out_portdimension=cat(1,InputDimension,OutputDimension); %Concatenation of input and output port Dimensions%

   elseif(length(InputNameDim)~=0) 
    
    In_Out=cat(1,InputNameDim);

    In_Out_portdimension=cat(1,InputDimension);
else
    disp('No input output ports');
end


%Read SignalDB_IO and SignalDB_IO_PortDim from signal DB %

[~,~, SignalDB_IO] = xlsread('Copy of Signal_Database_forC1A.xlsx', 'SignalDB', 'EC2:EC4999'); %Edit range here
[~,~, SignalDB_IO_PortDim] = xlsread('Copy of Signal_Database_forC1A.xlsx', 'SignalDB', 'EI2:EI4999'); %Edit range here


%For loop for extracting names and port Dimension %
signal_port={};

for i=1:length(In_Out)
    
    for j=1:length(SignalDB_IO)
        
       if strcmp(In_Out(i),SignalDB_IO(j))
           
           signal_port(i)=SignalDB_IO_PortDim(j);
           break
           
       end    
   end         

end

c=signal_port';
x=[];
In_Out_portdimension1= In_Out_portdimension(:,2);
% Logic for comparing port Dimension %
for i = 1 : length(c)
    
    if strcmp(int2str(In_Out_portdimension1(i)),int2str(c{i}))
        
        x=[x;cellstr('OK')];
    else
       x=[x;cellstr('NG')];
    end
        
    
end


%Logic for comparing port Dimension %



xlswrite(name,In_Out,'Sheet1','A6');
xlswrite(name,c,'Sheet1','B6');
xlswrite(name,In_Out_portdimension1,'Sheet1','C6');
xlswrite(name,x,'Sheet1','D6');

xlswrite(name,cellstr('ModelName-'),'Sheet1','B1');
xlswrite(name,cellstr(FileName),'Sheet1','C1');

xlswrite(name,cellstr('signal db-'),'Sheet1','B2');
xlswrite(name,cellstr('Copy of Signal_Database_forC1A.xlsx'),'Sheet1','C2');

xlswrite(name,cellstr('Date-'),'Sheet1','B3');
xlswrite(name,cellstr(date),'Sheet1','C3');
clc;
display = msgbox('Operation Completed');
    else 
        display = msgbox('Please Load correct Rom file');
    end
else
display = msgbox('Please load Model');    
end

  case ''
    msgbox('please run the tool again after providing correct data');
  otherwise
end
   

    

% --- Executes on button press in pushbutton DD IO Compare.
function Model_IO_Compare_Callback(hObject, eventdata, handles)
% hObject    handle to DD_IO_Compare pushbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%****************************************************************************************************%
%Script : IO Comparison from model with Data dictionary and SignalDB
%Date : 15/04/2020
%Author  :Abhay Yadav , Noopur Dosi
%****************************************************************************************************%


global FileName ROMName
token_DD_IO= strtok(FileName,'_');
if length(FileName)~=0
    if (strfind(ROMName,token_DD_IO)& (length(ROMName)~=0))
count=0;
Header = [cellstr('SignalName'),cellstr('PortType'),cellstr('Model'),cellstr('DD'),cellstr('In_SigDB'),cellstr('Result')];

token = regexp(FileName,'ADAS','split');
s1=  'Signal_Compare and Validation Report ';
s2= '';
Reportfile= strcat(token{1,1},s2,s1);
OPfileName = strcat(strrep(FileName,'_ADAS_1_0_0_',''),'_');
%Reportfile = strcat(strrep(OPfileName,'.slx',''),'_DD_IO_SigDB_Check.xls');
xlswrite(Reportfile,Header,'Sheet1','A7');
Header2 = [cellstr('DuplicateSignalsInDD')];
xlswrite(Reportfile,Header2,'Sheet1','G7');


%logic for asking signal db from the user%


[file8,PathName8] = uigetfile('*.xlsx','Select the  Signal DB','Please-Select-your-Signal-DB');
if (strfind(file8,'Signal_Database'))
     file9= file8
 else 
     display= msgbox('Please select correct file');
 end
s6=strcat(PathName8,file9);
disp(s6)
Excel = actxserver('Excel.Application');
fullPathToSignalDB = s6% Please modify this to the location of your excel file
ExcelWorkbook2 = Excel.workbooks.Open(fullPathToSignalDB,0,true);





%    Get Model inports and outports name and DataType data.%
inputs = find_system(gcs, 'SearchDepth', 1, 'BlockType', 'Inport');

for i= 1:length(inputs)
Inports(i, 1) = get_param(inputs(i), 'Name');
Inports(i, 2) = get_param(inputs(i), 'BlockType');
end
% Get all outports.%
outputs = find_system(gcs, 'SearchDepth', 1, 'BlockType', 'Outport');

for i = 1 : length(outputs)
Outports(i, 1) = get_param(outputs(i), 'Name');
Outports(i, 2) = get_param(outputs(i), 'BlockType');
end

if(length(outputs)~=0)
    for i= 1:length(outputs)
    
    ModelIO =  cat(1,Inports,Outports); % IO list extracted from Model
    end;
elseif(length(inputs)~=0) 
        ModelIO=cat(1,Inports);
        else
    disp('No input output ports');
end
    
    


xlswrite(Reportfile,ModelIO,'Sheet1','B8');

IN ={'IN'};
OUT ={'OUT'};

for i=1:length(ModelIO)
    if strcmp(ModelIO(i,2),'Inport')
        ModelIO(i,2) = IN;
    else
        ModelIO(i,2)= OUT;
    end
        
end


% Extract Signal Data from SignalDB
%Editing desire input details here :


[~,~,Siglist1]=xlsread(fullPathToSignalDB,'SignalDB'); %Read portname

[num3, raw3, txt3]= xlsread(fullPathToSignalDB,'SignalDB'); 

[row5,col5]=size(Siglist1);



 for i=1:col5
     Sigdata(i,1)=regexprep(raw3(1,i),'\n+','');
 end

 for i=1:col5
     SSigdata(i,1)=regexprep(Sigdata(i,1),' +','');
 end
 
list6 = {'L21BPRC','L21BMEX','P13A','B13B(3.1)','P13AHEV','B13B(3.5)','L21BTWN'};
[indx6,tf6] = listdlg('ListString',list6,'SelectionMode','single','ListSize',[250,120],'Name','Select Your Vehicle');
value6= list6(indx6);


list7 = {'DiagControl','OEM_DIAG','ActivationManagement','BRK_ENG','YAW','HMI','SEN_Setting','VehStatus_in','VehStatus_out','Temp_In'};
[indx7,tf7] = listdlg('ListString',list7,'SelectionMode','single','ListSize',[250,140],'Name','Select Your Swc');
value7= list7(indx7);




veh_col = strcmp(SSigdata(:,1),value6);
colNum_vehicle = find(veh_col==1)

swc_col = strcmp(SSigdata(:,1),value7);
colNum_swc = find(swc_col==1)
 
 
top_level_sig= strcmp(SSigdata(:,1),'PortName(C1A)');
top_level_sig_col= find(top_level_sig==1)
    


 

Sigdb_io_list1={};
j=1;
for i=1:row5
    

    if (((strcmp(Siglist1(i,colNum_swc),'R'))||(strcmp(Siglist1(i,colNum_swc),'T')))&&(strcmp(Siglist1(i,colNum_vehicle),'Y')))
       Sigdb_io_list1(j,1) = Siglist1(i,top_level_sig_col);
       Sigdb_io_list1(j,2) = Siglist1(i,colNum_swc);
       
        j=j+1;
    end
end

Sigdb_IO={};
Sigdb_IO=Sigdb_io_list1



 IN ={'IN'};
OUT ={'OUT'};

for i=1:length(Sigdb_IO)
    if strcmp(Sigdb_IO(i,2),'R')
        Sigdb_IO(i,2) = IN;
    else
        Sigdb_IO(i,2)= OUT;
    end 
end








% ask for data dictionary of specific swc from user
[file,PathName1] = uigetfile('*.xlsx','Select the  data dictionary','Please-Select-your-Data-Dictionary');

 if (strfind(file,'Dictionary')& strfind(file,token_DD_IO) )
     file1= file
 else 
     display= msgbox('Please select correct file');
 end
%disp(file)
%disp(PathName)
s=strcat(PathName1,file1);
disp(s)
Excel = actxserver('Excel.Application');
fullPathToExcelFile = s% Please modify this to the location of your excel file
ExcelWorkbook = Excel.workbooks.Open(fullPathToExcelFile,0,true);
WorkSheets = Excel.sheets;
DataRange = Excel.ActiveSheet.UsedRange;
r = DataRange.Address;





[~, DD_IO] = xlsread(fullPathToExcelFile, 'Data Dictionary', 'J:K'); %Edit DD Name here 

DD_IO_2= [];
DD_IO_2= DD_IO(:,1)
%For detection of duplicate signals in DD%
abc=[];
[ii,jj,kk]=unique(DD_IO_2);
Duplicate_entities=ii(histc(kk,1:numel(ii))>1);
CheckSignals=isempty(Duplicate_entities) ;
 if CheckSignals == 0
    xlswrite(Reportfile,Duplicate_entities,'Sheet1','G8');
 else
     abc=[abc;cellstr('No Duplicacy Found')];
      xlswrite(Reportfile,abc,'Sheet1','G8');
 end 





DD_IO(1,:)=[];  %Delete first row as it contains headings
xlswrite(Reportfile,DD_IO,'Sheet1','C8');



sig = cat(1,ModelIO,DD_IO,Sigdb_IO);
[~,idx]=unique(strcat(sig(:,1),sig(:,2),'rows'));
Signals = sig(idx,:);

%Signals = unique(Signals, 'rows','stable');
xlswrite(Reportfile,Signals,'Sheet1','A8');

% %Inputs_outputs not present in DataDictionary%
Inport_in_dd = [];
Compare_DD=[];
for i = 1 : length(Signals)
    count = 0;
    for j = 1 : length(DD_IO)
        
        if strcmp(DD_IO(j), Signals(i,1))
            count = count + 1;
        end
        
    end
    if count == 0
        Inport_in_dd = [Inport_in_dd; Signals(i,1)];
    end
    if count>0
        Compare_DD=[Compare_DD;cellstr('present')];
    else
        Compare_DD=[Compare_DD;cellstr('NotPresent')];
    end    
  
end
xlswrite(Reportfile,Compare_DD,'Sheet1','D8');
 
% %Inputs_Outputs not present in Model%
 Inport_in_model = [];
 Compare_Model = [];
for i = 1 : length(Signals)
    count = 0;
    for j = 1 : length(ModelIO)
        if strcmp(ModelIO(j), Signals(i,1))
            count = count + 1;
        end
    end
    if count == 0
    end

    if  count>0
        Compare_Model=[Compare_Model;cellstr('present')];
    else
        Compare_Model=[Compare_Model;cellstr('NotPresent')];
    end 
end  
xlswrite(Reportfile,Compare_Model,'Sheet1','C8');


% Inputs outputs not present in signalDB
 Inport_in_Sigdb = [];
 Compare_Sigdb = [];
for i = 1 : length(Signals)
    count = 0;
    for j = 1 : length(Sigdb_IO)
        if strcmp(Sigdb_IO(j), Signals(i,1))
            count = count + 1;
        end
    end
    if count == 0
    end

    if  count>0
        Compare_Sigdb=[Compare_Sigdb;cellstr('present')];
    else
        Compare_Sigdb=[Compare_Sigdb;cellstr('NotPresent')];
    end 
end 
 
xlswrite(Reportfile,Compare_Sigdb,'Sheet1','E8');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% [~, M_PRE] = xlsread('Signals.xls', 'Sheet1', 'B2:B79');
% [~, DD_PRE] = xlsread('Signals.xls', 'Sheet1', 'C2:C79');

 temp = [];
 Compare_PRE = [];
for i = 1 : length(Compare_DD )
    count=0;
    if (strcmp(Compare_DD(i), Compare_Model(i)))&&(strcmp(Compare_Sigdb(i), Compare_Model(i)))
            count = count + 1;
       
    end
    if count == 0
        temp = [temp; Compare_DD(i)];
    end

    if  count>0
        Compare_PRE=[Compare_PRE;cellstr('OK')];
    else
        Compare_PRE=[Compare_PRE;cellstr('NG')];
    end 
end  
xlswrite(Reportfile,Compare_PRE,'Sheet1','F8');

xlswrite(Reportfile,cellstr('ModelName-'),'Sheet1','B1');
xlswrite(Reportfile,cellstr(FileName),'Sheet1','C1');

xlswrite(Reportfile,cellstr('Data_Dictionary-'),'Sheet1','B2');
xlswrite(Reportfile,cellstr(file1),'Sheet1','C2');

xlswrite(Reportfile,cellstr('Date-'),'Sheet1','B3');
xlswrite(Reportfile,cellstr(date),'Sheet1','C3');

xlswrite(Reportfile,cellstr('Selected Vehicle'),'Sheet1','B4');
xlswrite(Reportfile,cellstr(value6),'Sheet1','C4');

xlswrite(Reportfile,cellstr('Selected Signal DB '),'Sheet1','B5');
xlswrite(Reportfile,cellstr(file9),'Sheet1','C5');




clc;
display = msgbox('Operation Completed');
else 
    display= msgbox('Please load the correct ROM file');
end
else 
     display= msgbox('Please load the Model');
end
 














    






  





% --- Developed by vaibhav Thakre(1603092), pankaj Taksande(1708279) 


% --- Executes on button press in pushbutton IO Check for constants
function IO_Check_by_m_Script_Callback(hObject, eventdata, handles)
% hObject    handle to IO_Check_by_m_Script pushbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global FileName PathName ROMName ROMPathName

sys= bdroot;
token_IO_Check= strtok(FileName,'_');
if length(FileName)~=0
    if (strfind(ROMName,token_IO_Check)& (length(ROMName)~=0))
    

                     
%   SignaList.csv developed by Vaibhav Thakre (1603092)

run([ROMPathName ROMName]);
token_file_compile_name= strrep(FileName,'.slx','');

load_system([PathName FileName]);
open_system([PathName FileName]);

name_sig= strcat(strrep(FileName,'.slx',''),'_signalList_by_m_script.csv');

name_SigList= strcat(name_sig);





outputs = find_system(gcs, 'SearchDepth', 1, 'BlockType', 'Outport');
inputs = find_system(gcs, 'SearchDepth', 1, 'BlockType', 'Inport');


OUT ={'Output'};
IN= {'Input'};


if(length(outputs)~=0)
  eval([gcs,'([],[],[],''compile'');']);
    Sum_blks = find_system(gcs,'Searchdepth',1,'BlockType','Outport');
       inputs_3 = find_system(gcs,'Searchdepth',1,'BlockType','Inport');
  

    
    cnt = 1;
    for sum_ctr = 1:length(Sum_blks)
        final_2 = get_param(Sum_blks{sum_ctr},'PortHandles');
        data12 = final_2.Inport;
        for i = 1:length(data12)
           % data{cnt, 1} = get_param(outputs(i), 'Name');
             data(cnt,2)= OUT;
            data{cnt,3} = get_param(data12(i),'CompiledPortDataType');
             %InputDataType{cnt,2} = get_param(outputs(i), 'Name');
            cnt = cnt+1;
        end
    end
    
    counter=1;
    
    for input_ctr = 1:length(inputs_3)
        input_handles_1 = get_param(inputs_3{input_ctr},'PortHandles');
        data_11 = input_handles_1.Outport;
        for j = 1:length(data_11)
           % data{cnt, 1} = get_param(outputs(i), 'Name');
             data_1(counter,2)= IN;
            data_1{counter,3} = get_param(data_11(j),'CompiledPortDataType');
             
            counter= counter+1;
        end
    end
else 
    eval([gcs,'([],[],[],''compile'');']);
    inputs_3 = find_system(gcs,'Searchdepth',1,'BlockType','Inport');
    counter=1;
    
    for input_ctr = 1:length(inputs_3)
        input_handles_1 = get_param(inputs_3{input_ctr},'PortHandles');
        data_11 = input_handles_1.Outport;
        for j = 1:length(data_11)
           % data{cnt, 1} = get_param(outputs(i), 'Name');
             data_1(counter,2)= IN;
            data_1{counter,3} = get_param(data_11(j),'CompiledPortDataType');
             
            counter= counter+1;
        end
    end
    
end

    
    
    
    

set_param(gcs, 'SimulationCommand', 'stop')
eval([gcs,'([],[],[],''term'');']);


if(length(outputs)~=0)
    for i=1:length(outputs)
        
        data(i, 1) = get_param(outputs(i), 'Name');
    end;
    
end;


if(length(inputs)~=0)
    for i=1:length(inputs)
        
        data_1(i, 1) = get_param(inputs(i), 'Name');
    end;
    
end;


if(length(outputs)~=0)
    for i= 1:length(outputs)
    
    ModelIO_Signals =  cat(1,data_1,data); % IO list extracted from Model
    end;
elseif(length(inputs)~=0) 
        ModelIO_Signals=cat(1,data_1);
        else
    disp('No input output ports');
end

a_signalList={};
for i=1:length(ModelIO_Signals)
a_signalList{i,1}= token_file_compile_name
end;

Header_SigList = [cellstr('Model'),cellstr('Port'),cellstr('I/O'),cellstr('Type')];
xlswrite(name_SigList,Header_SigList,'Sheet1','A1');
xlswrite(name_SigList,a_signalList,'Sheet1','A2');
clc;
xlswrite(name_SigList,ModelIO_Signals,'Sheet1','B2');



                 %'lOOK_UP_TABLE BLOCK'%
                      
% reading specific parameters from the look up table block 
LookUp_Table_list= find_system(sys,'regexp','on','BlockType','Lookup_n-D'); 
LookUp_Table_Name= get_param(LookUp_Table_list,'Table');
LookUp_Brkpoint_Name= get_param(LookUp_Table_list,'BreakpointsForDimension1');
LookUp_Path= get_param(LookUp_Table_list,'Parent');
Lookup_Block_type= get_param(LookUp_Table_list,'BlockType');
LookUp_DT= get_param(LookUp_Table_list,'OutDataTypeStr');
Brkpoint_DT= get_param(LookUp_Table_list,'BreakpointsForDimension1DataTypeStr');


% logic for inserting empty values for input data type for look up table
n=length(get_param(LookUp_Table_list,'BlockType'));
input_Lookup=cell(n,1);
for k = 1:length(input_Lookup)
    input_Lookup{k} = '';
end
                  
                      %'CONSTANT BLOCK'%

% reading specific parameters from the constant block
Constant_list= find_system(sys,'regexp','on','BlockType','Constant'); %Edit name here
const_name= get_param(Constant_list,'Name');
const_value= get_param(Constant_list,'Value');
const_path= get_param(Constant_list,'Parent');
const_Block_type= get_param(Constant_list,'BlockType');
const_DT= get_param(Constant_list,'OutDataTypeStr');

% logic for inserting empty values for input data type for constants
n=length(get_param(Constant_list,'BlockType'));
input_const=cell(n,1);
for k = 1:length(input_const)
    input_const{k} = '';
end

                      %'SATURATION BLOCK'%
                      
% reading specific parameters from the Saturation block
Saturate_list= find_system(sys,'regexp','on','BlockType','Saturate');
Sat_name= get_param(Saturate_list,'Name'); 
Sat_Block_type= get_param(Saturate_list,'BlockType');
Sat_path= get_param(Saturate_list,'Parent');
Sat_DT= get_param(Saturate_list,'OutDataTypeStr');
Sat_Upper_Limit_Name = get_param(Saturate_list,'UpperLimit'); 
Sat_Lower_Limit_Name = get_param(Saturate_list,'LowerLimit'); 


% logic for inserting empty values for input data type for saturation block
n=length(get_param(Saturate_list,'BlockType'));
input_sat=cell(n,1);
for k = 1:length(input_sat)
    input_sat{k} = '';
end

                     %'DELAY BLOCK'%

Delay_List=  find_system(sys,'regexp','on','BlockType','UnitDelay');
Delay_Name= get_param(Delay_List,'InitialCondition');
Delay_Block_Type= get_param(Delay_List,'BlockType');
Delay_Path= get_param(Delay_List,'Parent');


% logic for inserting empty values for input data type and output data type  for delay block
n=length(get_param(Delay_List,'BlockType'));
input_Delay=cell(n,1);
for k = 1:length(input_Delay)
    input_Delay{k} = '';
end


l=length(get_param(Delay_List,'BlockType'));
out_Delay=cell(l,1);
for k = 1:length(out_Delay)
    out_Delay{k} = '';
end



Header = [cellstr('parameter'),cellstr('block'),cellstr('block type'),cellstr('in type'),cellstr('out Type')];
All_parameter_data=[Header]; 

%if condition for whether lookup table is present in the model or not
 if length(LookUp_Table_Name)~=0
    % Header={'parameter','Block','BlockType','Out_dataType'};
     lookUp_Table_data=[LookUp_Table_Name LookUp_Path Lookup_Block_type input_Lookup LookUp_DT];
     lookUp_Brkpoint_data=[LookUp_Brkpoint_Name LookUp_Path Lookup_Block_type input_Lookup Brkpoint_DT];
     All_parameter_data=[Header;lookUp_Table_data;lookUp_Brkpoint_data];
 else
     %disp('LUT block is not available');
 end
 


   
 %if condition for whether constants is present in the model or not:   
 if length(const_value)~=0
      const_data= [const_value const_path const_Block_type input_const const_DT];
      All_parameter_data= [All_parameter_data;const_data];
     
 else
      %disp('consatnt block is not available');	
 end
	
  
 
 %if condition for whether saturation block is present in the model or not:
 if length(Sat_name)~=0
     Sat_Upper_Limit_data =[Sat_Upper_Limit_Name Sat_path Sat_Block_type input_sat Sat_DT];
     Sat_Lower_Limit_data =[Sat_Lower_Limit_Name Sat_path Sat_Block_type input_sat Sat_DT];
     All_parameter_data =[All_parameter_data;Sat_Upper_Limit_data;Sat_Lower_Limit_data];
 else
    %disp('saturation block is not available');
 end

 %if condition for whether Delay block is present in the model or not:
 if length(Delay_Name)~=0
     Delay_data =[Delay_Name Delay_Path Delay_Block_Type input_Delay out_Delay];
     All_parameter_data =[All_parameter_data;Delay_data];
 else
    %disp('Unit Delay block is not available');
 end
 
 
 
for ip = length(All_parameter_data):-1:1
   
  if (~isempty(regexpi(char(All_parameter_data{ip,1}),'^\d','match')))|(~isempty(regexpi(char(All_parameter_data{ip,1}),'^false','match')))|(~isempty(regexpi(char(All_parameter_data{ip,1}),'^true','match')))||(~isempty(regexpi(char(All_parameter_data{ip,1}),'^-\d','match')))|(~isempty(regexpi(char(All_parameter_data{ip,1}),'[','match')))
         All_parameter_data(ip,:)=[];
  
     end
end
All_parameter_data(strcmp(All_parameter_data(:, 1), 'ON'), :) = [];
All_parameter_data(strcmp(All_parameter_data(:, 1), 'OFF'), :) = [];
All_parameter_data(strcmp(All_parameter_data(:, 1), 'pi'), :) = [];

name1= strcat(strrep(FileName,'.slx',''),'_constantList_by_m_script.csv');
%name2 = 'Updated_';
%name= strcat(name2,name1);
name= strcat(name1);

 
%xlswrite(name,cellstr('ModelName-'),'Sheet1','B1');
%xlswrite(name,cellstr(FileName),'Sheet1','C1');

%xlswrite(name,cellstr('Date-'),'Sheet1','B2');
%xlswrite(name,cellstr(date),'Sheet1','C2');


xlswrite(name,All_parameter_data,'Sheet1','A1');
 
clc;






display =  msgbox('Operation Completed');

else 
 display =  msgbox('please select correct ROM file');
end
else 
     display =  msgbox('please load the model');
end




% --- Executes during object creation, after setting all properties.
function axes2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes2


% --- Executes on button press in Signal_Propagation button.
function Signal_Propagation_Callback(hObject, eventdata, handles)
% hObject    handle to Signal_Propagation pushbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global FileName PathName ROMName
token_signal_propagation= strtok(FileName,'_');
model =FileName;
path =PathName;
if length(FileName)~=0 
    if (strfind(ROMName,token_signal_propagation)& (length(ROMName)~=0))
model = model(1 : end - 4);
load_system(model)      

% [model, path] = uigetfile('*.slx','Select the Model.'); 
% model = model(1 : end - 4);
% load_system(model)      
% delete to all levels
model = gcs;
inports = find_system(gcs, 'BlockType', 'Inport');
inport_handle = get_param(inports, 'PortHandles');

%Remove Labels
for i = 1 : length(inport_handle)
line = get_param(inport_handle{i, 1}.Outport, 'Line');
c= char(get_param(inports(i), 'name'));
set_param(line, 'name','');
end
%Off signal propagation
NsignalLines = find_system(model,'Findall','on','type','line');
for i = 1:length(NsignalLines)

      set(NsignalLines(i),'signalPropagation','off');
end

% write at level 1 only
inports2 = find_system(gcs,'searchDepth',1, 'BlockType', 'Inport');
inport_handle2 = get_param(inports2, 'PortHandles');

for i = 1 : length(inport_handle2)
line = get_param(inport_handle2{i, 1}.Outport, 'Line');
set_param(line, 'name', char(get_param(inports2(i), 'name')));
end


%On Signal propgation
signalLines = find_system(model,'Findall','on','type','line');
for i = 1:length(signalLines)
      set(signalLines(i),'signalPropagation','on');
end

% delete the empty labels for LIB BLOCK output line handle only
for i=1:length(signalLines)
    source = get_param(signalLines(i),'SrcBlockHandle');
    j=(get_param(source,'Tag'));
    if strcmp(j,'[LIB]')==1
        set(signalLines(i),'signalPropagation','off');
    end
end

%find terminators

terminate = find_system(gcs, 'BlockType', 'Terminator');
terminate_handle = get_param(terminate, 'PortHandles');

%Remove Labels
for i = 1 : length(terminate_handle)
lines = get_param(terminate_handle{i, 1}.Inport, 'Line');
c= char(get_param(terminate(i), 'name'));
set_param(lines, 'name','');
end

open_system(model)
display = msgbox('Operation Completed');
clc;
else 
   display = msgbox('please load ROM file'); 
    end
else
    display= msgbox('please load model');
    
end

% --- Executes on button press in Load ROM pushbutton.
function Load_ROM_Callback(hObject, eventdata, handles)
% hObject    handle to Load ROM pushbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global FileName PathName ROMName ROMPathName
%[FileName,PathName] = uigetfile('*.slx','Select the Model file');
%Select ROM%
[ROMName,ROMPathName] = uigetfile('*.m','Select the Model ROM file');

%Load File%
if(FileName~=0 )
    load_system([PathName FileName]);
else
    msgbox('Please select the ROM file and run the tool again', 'Error', 'error'); %Throw an error if model selection is invalid%
    return;
end
set(handles.listbox1, 'String', ROMName);


function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called



function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit5 as text
%        str2double(get(hObject,'String')) returns contents of edit5 as a double


% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function edit6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function edit7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes on selection change in pushbutton19.
function pushbutton19_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns pushbutton19 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from pushbutton19


% --- Executes during object creation, after setting all properties.
function text3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
global FileName %PathName
set(handles.text3, 'String', FileName);


% --- Executes on selection change in listbox3.
function listbox3_Callback(hObject, eventdata, handles)
% hObject    handle to listbox3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns listbox3 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox3

      


% --- Executes on selection change in listbox4.
function listbox4_Callback(hObject, eventdata, handles)
% hObject    handle to listbox4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns listbox4 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox4


% --- Executes on selection change in listbox1.
function listbox1_Callback(hObject, eventdata, handles)
% hObject    handle to listbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns listbox1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox1


% --- Executes during object creation, after setting all properties.
function listbox1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function text1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes on button press in IO check by P Script.
function IO_Check_by_P_Script_Callback(hObject, eventdata, handles)
% hObject    handle to IO_Check_by_P_Script_Callbackpushbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global FileName PathName ROMName ROMPathName
if length(FileName)~=0
    %if (strfind(ROMName,token_signal)& (length(ROMName)~=0))
name2file= strcat(strrep(FileName,'.slx',''),'_constantList.csv');
run([ROMPathName ROMName]);

token_p= strrep(FileName,'.slx','');
% disp(token_p)
token_DD_IO_p= strtok(FileName,'_');
%disp(token_DD_IO_p)
[file_DD,PathName] = uigetfile('*.xlsx','Select the  data dictionary','please-select-data-dictionary');
token_take_DD= strrep(file_DD,'.xlsx','');

 if (strfind(file_DD,'Dictionary')& strfind(file_DD,token_DD_IO_p) )
     file2= file_DD
     Script(token_p,token_take_DD)
     %
     
    % file2delete= strcat(token_p,'_constantList.csv');
     
     display =msgbox('Operation Completed');
     clc;
 else 
     display= msgbox('Please select correct file');
 end
    
else

    display= msgbox('Please select the model');
end







% --- Executes on button press in Model_DD_Const_Cmp.
function Model_Const_Cmp_Callback(hObject, eventdata, handles)
% hObject    handle to Model_DD_Const_Cmp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global FileName ROMName PathName ROMPathName
%clc;
%clear all;


token_DD_IO= strtok(FileName,'_');
if length(FileName)~=0
    if (strfind(ROMName,token_DD_IO)& (length(ROMName)~=0))

        run([ROMPathName ROMName]);
% save (strtok(ROMName,'.'));
% load (strcat(strtok(ROMName,'.'),'.mat'));
% 
% (strtok(ROMName,'.'));
ROMParameter = whos;
token = regexp(FileName,'ADAS','split');
s1=  'Constant_Compare and Validation Report ';
s2= '';
name= strcat(token{1,1},s2,s1);
%xlswrite(name,{ROMParameter.name}','Sheet1','A5');
%[~,~,data_const]=xlsread(name,{ROMParameter.name},'Sheet1','A6');

Header = [cellstr('ParameterName'),cellstr('Model'),cellstr('Data_Dictionary'),cellstr('Constant_DB'),cellstr('Result')];






count=0;

[file5,PathName5] = uigetfile('*.xlsx','Select the  Constant DB','Please-Select-your-Constant-DB');
if (strfind(file5,'Constant_Database'))
     file6= file5
 else 
     display= msgbox('Please select correct file');
 end
s5=strcat(PathName5,file6);
disp(s5)
Excel = actxserver('Excel.Application');
fullPathToConstantDB = s5% Please modify this to the location of your excel file
ExcelWorkbook1 = Excel.workbooks.Open(fullPathToConstantDB,0,true);

 



 


    

% extract data from ROM sheet
[~,~,Constlist]=xlsread(fullPathToConstantDB,'ROM'); 


[num, raw, txt]= xlsread(fullPathToConstantDB,'ROM'); 

[l,m]=size(Constlist);





 for i=1:m
     c(i,1)=regexprep(raw(8,i),'\n+','') 
 end
 
for i=1:m
    
 cconst(i,1)=regexprep(c(i,1),' +','') 
end


list2= {'B13BSeHEV','L21BPRC','L21B_MEX(VC)','P13A(VC)','L21B_MEX(PT)','P13A(PT)','P13AHEV','P13A(PT2)(FVC)','L21BMEX(PT2)(21MY)','L21BTWN','L21BCY21(Conv/ePower)'};
[indx2,tf2] = listdlg('ListString',list2,'SelectionMode','single','ListSize',[300,150],'Name','Select your vehicle');
value2= list2(indx2);



list1 = {'DiagControl','OEM_DIAG','ActivationManagement','BRK_ENG','YAW','HMI','SEN_Setting','VehStatus_in','VehStatus_out'};
[indx1,tf1] = listdlg('ListString',list1,'SelectionMode','single','ListSize',[350,150],'Name','Select your SWC from ROM Sheet');
value1= list1(indx1);


p = strcmpi(cconst(:,1),value1);
colNum = find(p==1)


d= strcmpi(cconst(:,1),value2);
colNum2= find(d==1)
    
e= strcmpi(cconst(:,1),'ConstantName');
colNum3= find(e==1)
    
    
rom_values={};
j=1;
 
for i=1:l
     
    if ((strcmp(Constlist(i,colNum2),'Y'))&&(strcmp(Constlist(i,colNum),'Y')))
       
      rom_values(j,1) = Constlist(i,colNum3);
       j=j+1;
        
    end
end
temp1= [];
temp1= [temp1;rom_values];




 
%extract data from Fixed_ROM sheet
[~,~,Constlist2]=xlsread(fullPathToConstantDB,'Fixed_ROM'); 
[num2, raw2, txt2]= xlsread(fullPathToConstantDB,'Fixed_ROM'); 


[row,col]=size(Constlist2);


for i=1:col
     f(i,1)=regexprep(raw2(2,i),'\n+','');
end

for i=1:col
     fconst(i,1)=regexprep(f(i,1),' +','');
end


list4= {'B13BSeHEV','B13B(3.1)','L21BPRC','L21B_MEX(VC)','P13A(VC)','L21B_MEX(PT)','P13A(PT)','P13AHEV','P13A(PT2)(FVC)','L21BMEX(PT2)(21MY)','L21BTWN','L21BCY21(Conv/ePower)'};
[indx4,tf4] = listdlg('ListString',list4,'SelectionMode','single','ListSize',[300,200],'Name','Select your vehicle');

value4= list4(indx4);


list3 = {'DiagControl','OEM_DIAG','ActivationManagement','BRK_ENG','YAW','HMI','SEN_Setting','VehStatus_in','VehStatus_out'};
[indx3,tf3] = listdlg('ListString',list3,'SelectionMode','single','ListSize',[350,150],'Name','Select your SWC from Fixed_ROM Sheet');
value3= list3(indx3);

 



q = strcmpi(fconst(:,1),value3);
colNum4 = find(q==1)



r= strcmpi(fconst(:,1),value4);
colNum5= find(r==1)
    
s= strcmpi(fconst(:,1),'ConstantName');
colNum6= find(s==1)
    

        
fixed_rom_values={};
k=1;
 
for i=1:row
     
    if ((strcmp(Constlist2(i,colNum4),'Y'))&&(strcmp(Constlist2(i,colNum5),'Y')))
       
      fixed_rom_values(k,1) = Constlist2(i,colNum6);
       k=k+1;
        
    end
end

 temp2=[];
 temp2= [temp2;fixed_rom_values];
 temp3=[];
 temp3=[temp1;temp2];



%xlswrite('extract_from_rom_v1',temp3); 




 



        


    




 
xlswrite(name,Header,'Sheet1','A8');


%extracting and reading the calibration sheet%
[file2,PathName2] = uigetfile('*.xlsx','Select the  data dictionary','Please-Select-your-Data-Dictionary');

 if (strfind(file2,'Dictionary')& strfind(file2,token_DD_IO) )
     file3= file2
 else 
     display= msgbox('Please select correct file');
 end
%disp(file)
%disp(PathName)
s=strcat(PathName2,file3);
disp(s)
Excel = actxserver('Excel.Application');
fullPathToExcelFile = s% Please modify this to the location of your excel file
ExcelWorkbook = Excel.workbooks.Open(fullPathToExcelFile,0,true);
WorkSheets = Excel.sheets;
DataRange = Excel.ActiveSheet.UsedRange;
r = DataRange.Address;



%Load DD%

[~,data_A_col]=xlsread(fullPathToExcelFile,'Calibration','A:A');
L=length(data_A_col)
L=L+3
%disp(L)
start_cell = 'A5';
% r1 = regexp(r, ':', 'split');
% end_cell = regexprep(r1{2}, '\$', '');
end_cell = strcat('A',num2str(L));
range = [start_cell ':' end_cell];
%disp(range)

[~,Model_DD_Const] = xlsread(fullPathToExcelFile,'Calibration',range);


ModelParam = struct2cell(ROMParameter);
ModelParamName = ModelParam';
ModelParameterName = ModelParamName(:,1);

Parameter = cat(1,ModelParameterName,Model_DD_Const,temp3);
Parameter = unique(Parameter, 'rows', 'stable');
Parameter(strcmp(Parameter(:, 1), 'FileName'), :) = [];
Parameter(strcmp(Parameter(:, 1), 'PathName'), :) = [];
Parameter(strcmp(Parameter(:, 1), 'ROMName'), :) = [];
Parameter(strcmp(Parameter(:, 1), 'ROMPathName'), :) = [];
Parameter(strcmp(Parameter(:, 1), 'eventdata'), :) = [];
Parameter(strcmp(Parameter(:, 1), 'hObject'), :) = [];
Parameter(strcmp(Parameter(:, 1), 'handles'), :) = [];
Parameter(strcmp(Parameter(:, 1), 'token_DD_IO'), :) = [];
Parameter(strcmp(Parameter(:, 1), 'Total size'), :) = [];
Parameter(strcmp(Parameter(:, 1), ' '), :) = [];




    
%Parameters not present in DataDictionary%
Param_in_model = [];
Compare_model=[];
for i = 1 : length(Parameter)
    count = 0;
    for j = 1 : length(Model_DD_Const)
        
        if strcmp(Model_DD_Const(j), Parameter(i))
            count = count + 1;
        end
        
    end
    if count == 0
        Param_in_model = [Param_in_model; Parameter(i)];
    end
    if count>0
        Compare_model=[Compare_model;cellstr('Present')];
    else
        Compare_model=[Compare_model;cellstr('NotPresent')];
    end    
  
end
xlswrite(name,Compare_model,'Sheet1','C9');
 
% %Parameter not present in Model%
Param_in_model = [];
Compare_DD=[];
for i = 1 : length(Parameter)
    count = 0;
    for j = 1 : length(ModelParameterName)
        
        if strcmp(ModelParameterName(j), Parameter(i))
            count = count + 1;
        end
        
    end
    if count == 0
        Param_in_model = [Param_in_model; Parameter(i)];
    end
    if count>0
        Compare_DD=[Compare_DD;cellstr('Present')];
    else
        Compare_DD=[Compare_DD;cellstr('NotPresent')];
    end    
  
end
xlswrite(name,Compare_DD,'Sheet1','B9');

%Parameters not present in constant db%
Param_in_model = [];
Compare_const_dd=[];
for i = 1 : length(Parameter)
    count = 0;
    for j = 1 : length(temp3)
        
        if strcmp(temp3(j), Parameter(i))
            count = count + 1;
        end
        
    end
    if count == 0
        Param_in_model = [Param_in_model; Parameter(i)];
    end
    if count>0
        Compare_const_dd=[Compare_const_dd;cellstr('Present')];
    else
        Compare_const_dd=[Compare_const_dd;cellstr('NotPresent')];
    end    
  
end
xlswrite(name,Compare_const_dd,'Sheet1','D9');







temp = [];
Compare_PRE = [];
for i = 1 : length(Compare_DD )
    count=0;
    if (strcmp(Compare_DD(i), Compare_model(i)))
        if(strcmp(Compare_DD(i),Compare_const_dd(i)))
            if (strcmp(Compare_model(i),Compare_const_dd(i)))
            count = count + 1;
       
            end
        end
    end
    
    if count == 0
        temp = [temp; Compare_DD(i)];
    end

    if  count>0
        Compare_PRE=[Compare_PRE;cellstr('OK')];
    else
        Compare_PRE=[Compare_PRE;cellstr('NG')];
    end 
end  
xlswrite(name,cellstr('ModelName-'),'Sheet1','B1');
xlswrite(name,cellstr(FileName),'Sheet1','C1');

xlswrite(name,cellstr('Data_Dictionary-'),'Sheet1','B2');
xlswrite(name,cellstr(file2),'Sheet1','C2');

xlswrite(name,cellstr('Date-'),'Sheet1','B3');
xlswrite(name,cellstr(date),'Sheet1','C3');

xlswrite(name,Parameter,'Sheet1','A9');
xlswrite(name,Compare_PRE,'Sheet1','E9');

xlswrite(name,cellstr('Selected ROM Part number'),'Sheet1','B4');
xlswrite(name,cellstr(value2),'Sheet1','C4');

xlswrite(name,cellstr('Selected Fixed ROM Part number'),'Sheet1','B5');
xlswrite(name,cellstr(value4),'Sheet1','C5');

xlswrite(name,cellstr('Selected Constant DB '),'Sheet1','B6');
xlswrite(name,cellstr(file6),'Sheet1','C6');







display =msgbox('Operation Completed');
clc;
 else 
     display= msgbox('Please select correct ROM file');
 end
    
else

    display= msgbox('Please select the model');
end




    

     

% --- Executes on button press in pushbutton25.
function Font_Style_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton25 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global FileName

if length(FileName)~=0
[MODEL_NAME, PATH2] = uigetfile('*.slx', 'Select the Model file');
modelName= MODEL_NAME(1:end-4);
load_system(MODEL_NAME);

All_obj = find_system(modelName,'FindAll','on','Type','Block');

for ii = 1:length(All_obj)
    set_param(All_obj(ii),'FontName','Arial');
    set_param(All_obj(ii),'FontSize','10');
end

All_obj = find_system(modelName,'FindAll','on','Type','Line');

for ii = 1:length(All_obj)
    set_param(All_obj(ii),'FontName','Arial');
    set_param(All_obj(ii),'FontSize','10');
end
    
save_system(MODEL_NAME);
open_system(MODEL_NAME);

display = msgbox('Operation Completed');
else
   display = msgbox('Please load Model'); 
end


% --- Executes on button press in Signal Check button
function IO_Signal_Check_Callback(hObject, eventdata, handles)
% hObject    handle to IO_Signal_Check (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
call1= IO_SignalCheckTool();





% --- Executes on button press in Constant Check button
function IO_Constant_Check_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton31 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Constant_comp_tool_call= IO_ConstantCheckTool();


% --- Executes on button press in pushbutton32.
function pushbutton32_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton32 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
call= IO_SignalCheckTool();


% --- Executes on selection change in listbox2.
function listbox2_Callback(hObject, eventdata, handles)
% hObject    handle to listbox2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns listbox2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox2


% --- Executes during object creation, after setting all properties.
function listbox2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
