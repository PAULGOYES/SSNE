function varargout = SSNE(varargin)
% SSNE MATLAB code for SSNE.fig
%      SSNE, by itself, creates a new SSNE or raises the existing
%      singleton*.
%
%      H = SSNE returns the handle to a new SSNE or the handle to
%      the existing singleton*.
%
%      SSNE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SSNE.M with the given input arguments.
%
%      SSNE('Property','Value',...) creates a new SSNE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before SSNE_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to SSNE_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help SSNE

% Last Modified by GUIDE v2.5 26-May-2014 09:16:50

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @SSNE_OpeningFcn, ...
                   'gui_OutputFcn',  @SSNE_OutputFcn, ...
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


% --- Executes just before SSNE is made visible.
function SSNE_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to SSNE (see VARARGIN)

% Choose default command line output for SSNE
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes SSNE wait for user response (see UIRESUME)
% uiwait(handles.figure1);
%javaFrame = get(hObject,'JavaFrame');
%javaFrame.setFigureIcon(javax.swing.ImageIcon('RTI_Water_DB_Window_Icon.png'));

axes(handles.axes1)
grid on
ylabel('Abatimiento (s)[metros]')
xlabel('tiempo (t)[minutos]')
set(gca, 'XScale', 'log')
set(gca, 'YScale', 'log')
% --- Outputs from this function are returned to the command line.
function varargout = SSNE_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function datanumber_Callback(hObject, eventdata, handles)
% hObject    handle to datanumber (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of datanumber as text
%        str2double(get(hObject,'String')) returns contents of datanumber as a double


% --- Executes during object creation, after setting all properties.
function datanumber_CreateFcn(hObject, eventdata, handles)
% hObject    handle to datanumber (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)

filas=str2double(get(handles.datanumber,'String'));
columnas=2;

num_elem=cell(filas,columnas);
num_elem(:,:)={''};

set(handles.uitable1,'Data',num_elem)
set(handles.uitable1,'ColumnEditable',true(1,columnas))



function caudal_Callback(hObject, eventdata, handles)
% hObject    handle to caudal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of caudal as text
%        str2double(get(hObject,'String')) returns contents of caudal as a double


% --- Executes during object creation, after setting all properties.
function caudal_CreateFcn(hObject, eventdata, handles)
% hObject    handle to caudal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function T_Callback(hObject, eventdata, handles)
% hObject    handle to T (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of T as text
%        str2double(get(hObject,'String')) returns contents of T as a double


% --- Executes during object creation, after setting all properties.
function T_CreateFcn(hObject, eventdata, handles)
% hObject    handle to T (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function s_Callback(hObject, eventdata, handles)
% hObject    handle to s (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of s as text
%        str2double(get(hObject,'String')) returns contents of s as a double


% --- Executes during object creation, after setting all properties.
function s_CreateFcn(hObject, eventdata, handles)
% hObject    handle to s (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function r_Callback(hObject, eventdata, handles)
% hObject    handle to r (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of r as text
%        str2double(get(hObject,'String')) returns contents of r as a double


% --- Executes during object creation, after setting all properties.
function r_CreateFcn(hObject, eventdata, handles)
% hObject    handle to r (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --------------------------------------------------------------------
function Untitled_2_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

data_import = importdata('-pastespecial'); 
set(handles.uitable1,'Data',data_import)
handles.data_import=data_import;
guidata(hObject, handles);


% --------------------------------------------------------------------
function Pegar_Callback(hObject, eventdata, handles)
% hObject    handle to Pegar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

dataH30=str2double(get(handles.uitable1,'Data'))

value_nan=isnan(dataH30);

if value_nan==0
data_import=dataH30;
else
    data_import=handles.data_import;
end


t=data_import(:,2);
Si=data_import(:,1);

r=str2double(get(handles.r,'String')); 
Q=str2double(get(handles.caudal,'String')); 

yyi=Si; % en metros
t=(t/(24*60));% tiempo en dias

x0=[100;1e-007];
F=@(x) yyi - Q/(4*pi*x(1))*expint((r^2./(4*t))*x(2)/x(1));
x=fsolve(F,x0);
clc
x1=x(1);
x2=x(2);
 % x(1)=        T
  % x(2)=       S
  
T=x1 % transmisividad en m2/dia
ss=x2           % coeficiente de almacenamiento

set(handles.s,'String',num2str(ss))
set(handles.T,'String',num2str(T))



axes(handles.axes1)
plot(t*24*60,Si,'ko',t*24*60,Q/(4*pi*x1)*expint((r^2./(4*t))*x2/x1)) % yesid
grid off
ylabel('Abatimiento (s)[metros]')
xlabel('tiempo (t)[minutos]')
set(gca, 'XScale', 'log')
set(gca, 'YScale', 'log')


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


[filename,pathname,FilterIndex] = uigetfile({'*.xlsx';'*.xls';'*.txt'},'Seleccionar Archivo ');
dir=fullfile(pathname, filename);

if FilterIndex==1
    data_import=xlsread(dir)
elseif FilterIndex==2
    data_import=xlsread(dir)
else
    data_import=load(dir)
end

handles.data_import=data_import;
guidata(hObject, handles);

[m n]=size(data_import);
set(handles.datanumber,'String',num2str(m))


set(handles.uitable1,'Data',(data_import))
