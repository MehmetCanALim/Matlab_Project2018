function varargout = lim_int(varargin)
% LIM_INT MATLAB code for lim_int.fig
%      LIM_INT, by itself, creates a new LIM_INT or raises the existing
%      singleton*.
%
%      H = LIM_INT returns the handle to a new LIM_INT or the handle to
%      the existing singleton*.
%
%      LIM_INT('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in LIM_INT.M with the given input arguments.
%
%      LIM_INT('Property','Value',...) creates a new LIM_INT or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before lim_int_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to lim_int_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help lim_int

% Last Modified by GUIDE v2.5 04-May-2018 14:35:46

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @lim_int_OpeningFcn, ...
                   'gui_OutputFcn',  @lim_int_OutputFcn, ...
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


% --- Executes just before lim_int is made visible.
function lim_int_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to lim_int (see VARARGIN)

% Choose default command line output for lim_int
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes lim_int wait for user response (see UIRESUME)
% uiwait(handles.figure1);
set(handles.radiobutton1,'Value',1)
set(handles.radiobutton2,'Value',0)
set(handles.radiobutton3,'Value',0)
set(handles.text4,'string','Lim')
set(handles.edit1,'string','')


% --- Outputs from this function are returned to the command line.
function varargout = lim_int_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



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


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
value1=get(handles.radiobutton1,'Value');
value2=get(handles.radiobutton2,'Value');
value3=get(handles.radiobutton3,'Value');
value4=get(handles.radiobutton4,'Value');

if value1==1
    a = get(handles.edit1,'String');
    b = str2num(get(handles.edit2,'String'));
    if isempty(b) 
     errordlg('Please give one number(upper side)','Fatal Error')
     set(handles.text1, 'String',' ');
    elseif isempty(a)
     errordlg('write equation','Fatal Error') 
     set(handles.text1, 'String', ' ');
    else 
     c = limit(sym(a),sym(b));
     set(handles.text1, 'String', char(c));
    end
elseif value2==1
    a = get(handles.edit1,'String');
    b = str2num(get(handles.edit2,'String'));
    if isempty(a)
     errordlg('write equation','Fatal Error') 
     set(handles.text1, 'String', ' ');
    elseif isempty(b) && value4==1
     errordlg('write value','Fatal Error') 
     set(handles.text1, 'String', ' ');
    else
     if value4==1
      c = subs(diff(sym(a)),b);
     elseif value4==0
    c = diff(sym(a));
     end
    end
    set(handles.text1, 'String', char(c));
elseif value3==1
    a = get(handles.edit1,'String');
    b = str2num(get(handles.edit2,'String'));
    c = str2num(get(handles.edit3,'String'));
    if isempty(a)
     errordlg('write equation','Fatal Error') 
     set(handles.text1, 'String', ' ');
    elseif isempty(c) && value4==1
     errordlg('write value one and two','Fatal Error') 
     set(handles.text1, 'String', ' ');
    elseif isempty(b) && value4==1
     errordlg('write value one or two','Fatal Error') 
     set(handles.text1, 'String', ' ');
    else 
    if value4==1
       d = int(sym(a),c,b);
    elseif value4==0
       d = int(sym(a));
      end
    end
    set(handles.text1, 'String', char(d));
end





% --- Executes on button press in radiobutton1.
function radiobutton1_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.radiobutton1,'Value',1)
set(handles.radiobutton2,'Value',0)
set(handles.radiobutton3,'Value',0)
set(handles.text4,'string','Lim')
% Hint: get(hObject,'Value') returns toggle state of radiobutton1


% --- Executes on button press in radiobutton2.
function radiobutton2_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.radiobutton1,'Value',0)
set(handles.radiobutton2,'Value',1)
set(handles.radiobutton3,'Value',0)
set(handles.text4,'string','diff')
% Hint: get(hObject,'Value') returns toggle state of radiobutton2


% --- Executes on button press in radiobutton3.
function radiobutton3_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.radiobutton1,'Value',0)
set(handles.radiobutton2,'Value',0)
set(handles.radiobutton3,'Value',1)
set(handles.text4,'string','int')
% Hint: get(hObject,'Value') returns toggle state of radiobutton3



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


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
delete(lim_int);
basicCalculator;


% --- Executes on button press in radiobutton4.
function radiobutton4_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton4

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
