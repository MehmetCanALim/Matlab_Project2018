function varargout = scientificCalculator(varargin)
% SCIENTIFICCALCULATOR MATLAB code for scientificCalculator.fig
%      SCIENTIFICCALCULATOR, by itself, creates a new SCIENTIFICCALCULATOR or raises the existing
%      singleton*.
%
%      H = SCIENTIFICCALCULATOR returns the handle to a new SCIENTIFICCALCULATOR or the handle to
%      the existing singleton*.
%
%      SCIENTIFICCALCULATOR('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SCIENTIFICCALCULATOR.M with the given input arguments.
%
%      SCIENTIFICCALCULATOR('Property','Value',...) creates a new SCIENTIFICCALCULATOR or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before scientificCalculator_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to scientificCalculator_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help scientificCalculator

% Last Modified by GUIDE v2.5 12-May-2018 20:17:22

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @scientificCalculator_OpeningFcn, ...
                   'gui_OutputFcn',  @scientificCalculator_OutputFcn, ...
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


% --- Executes just before scientificCalculator is made visible.
function scientificCalculator_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to scientificCalculator (see VARARGIN)

% Choose default command line output for scientificCalculator
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes scientificCalculator wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = scientificCalculator_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=get(handles.edit1,'string');
set(handles.edit1,'string',strcat(a,'1'));

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=get(handles.edit1,'string');
set(handles.edit1,'string',strcat(a,'8'));

% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=get(handles.edit1,'string');
set(handles.edit1,'string',strcat(a,'7'));

% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=get(handles.edit1,'string');
set(handles.edit1,'string',strcat(a,'6'));

% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=get(handles.edit1,'string');
set(handles.edit1,'string',strcat(a,'5'));

% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=get(handles.edit1,'string');
set(handles.edit1,'string',strcat(a,'4'));

% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=get(handles.edit1,'string');
set(handles.edit1,'string',strcat(a,'3'));

% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=get(handles.edit1,'string');
set(handles.edit1,'string',strcat(a,'2'));

% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textString = get(handles.edit1,'String');
textLenght = length(textString);
if textLenght >= 1
   if textString(textLenght) == '.'
    elseif  textString(textLenght) == '1' || textString(textLenght) == '2' || ...
            textString(textLenght) == '3' || textString(textLenght) == '4' || ...
            textString(textLenght) == '5' || textString(textLenght) == '6' || ...
            textString(textLenght) == '7' || textString(textLenght) == '8' || ...
            textString(textLenght) == '9' || textString(textLenght) == '0' 
        textString = strcat(textString,'*asin(');
    else
        textString = strcat(textString,'asin(');
    end
else
    textString = strcat(textString,'asin(');
end
set(handles.edit1,'String',textString)

% --- Executes on button press in pushbutton10.
function pushbutton10_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textString = get(handles.edit1,'String');
textLenght = length(textString);
if textLenght >= 1
   if textString(textLenght) == '.'
    elseif  textString(textLenght) == '1' || textString(textLenght) == '2' || ...
            textString(textLenght) == '3' || textString(textLenght) == '4' || ...
            textString(textLenght) == '5' || textString(textLenght) == '6' || ...
            textString(textLenght) == '7' || textString(textLenght) == '8' || ...
            textString(textLenght) == '9' || textString(textLenght) == '0' 
        textString = strcat(textString,'*acot(');
    else
        textString = strcat(textString,'acot(');
    end
else
    textString = strcat(textString,'acot(');
end
set(handles.edit1,'String',textString)

% --- Executes on button press in pushbutton13.
function pushbutton13_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textString = get(handles.edit1,'String');
textLenght = length(textString);
if textLenght >= 1
   if textString(textLenght) == '.'
    elseif  textString(textLenght) == '1' || textString(textLenght) == '2' || ...
            textString(textLenght) == '3' || textString(textLenght) == '4' || ...
            textString(textLenght) == '5' || textString(textLenght) == '6' || ...
            textString(textLenght) == '7' || textString(textLenght) == '8' || ...
            textString(textLenght) == '9' || textString(textLenght) == '0' 
        textString = strcat(textString,'*ln(');
    else
        textString = strcat(textString,'ln(');
    end
else
    textString = strcat(textString,'ln(');
end
set(handles.edit1,'String',textString)


% --- Executes on button press in pushbutton14.
function pushbutton14_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textString = get(handles.edit1,'String');
textLenght = length(textString);
if textLenght >= 1
   if textString(textLenght) == '.'
    elseif  textString(textLenght) == '1' || textString(textLenght) == '2' || ...
            textString(textLenght) == '3' || textString(textLenght) == '4' || ...
            textString(textLenght) == '5' || textString(textLenght) == '6' || ...
            textString(textLenght) == '7' || textString(textLenght) == '8' || ...
            textString(textLenght) == '9' || textString(textLenght) == '0' 
        textString = strcat(textString,'*sqrt(');
    else
        textString = strcat(textString,'sqrt(');      
    end
else
    textString = strcat(textString,'sqrt(');
end
set(handles.edit1,'String',textString)



% --- Executes on button press in pushbutton15.
function pushbutton15_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textString = get(handles.edit1,'String');
textLenght = length(textString);
if textLenght >= 1
   if textString(textLenght) == '.'
    elseif  textString(textLenght) == '1' || textString(textLenght) == '2' || ...
            textString(textLenght) == '3' || textString(textLenght) == '4' || ...
            textString(textLenght) == '5' || textString(textLenght) == '6' || ...
            textString(textLenght) == '7' || textString(textLenght) == '8' || ...
            textString(textLenght) == '9' || textString(textLenght) == '0' 
        textString = strcat(textString,'*atan(');
    else
        textString = strcat(textString,'atan(');
    end
else
    textString = strcat(textString,'atan(');
end
set(handles.edit1,'String',textString)


% --- Executes on button press in pushbutton16.
function pushbutton16_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textString = get(handles.edit1,'String');
textLenght = length(textString);
if textLenght >= 1
   if textString(textLenght) == '.'
    elseif  textString(textLenght) == '1' || textString(textLenght) == '2' || ...
            textString(textLenght) == '3' || textString(textLenght) == '4' || ...
            textString(textLenght) == '5' || textString(textLenght) == '6' || ...
            textString(textLenght) == '7' || textString(textLenght) == '8' || ...
            textString(textLenght) == '9' || textString(textLenght) == '0' 
        textString = strcat(textString,'*cot(');
    else
        textString = strcat(textString,'cot(');
    end
else
    textString = strcat(textString,'cot(');
end
set(handles.edit1,'String',textString)

% --- Executes on button press in pushbutton17.
function pushbutton17_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textString = get(handles.edit1,'String');
textLenght = length(textString);
if textLenght >= 1
   if textString(textLenght) == '.'
    elseif  textString(textLenght) == '1' || textString(textLenght) == '2' || ...
            textString(textLenght) == '3' || textString(textLenght) == '4' || ...
            textString(textLenght) == '5' || textString(textLenght) == '6' || ...
            textString(textLenght) == '7' || textString(textLenght) == '8' || ...
            textString(textLenght) == '9' || textString(textLenght) == '0' 
        textString = strcat(textString,'*e^(');
    else
        textString = strcat(textString,'e^(');
    end
else
    textString = strcat(textString,'e^(');
end
set(handles.edit1,'String',textString)

% --- Executes on button press in pushbutton18.
function pushbutton18_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textString = get(handles.edit1,'String');
textLenght = length(textString);
if textLenght >= 1
   if textString(textLenght) == '.'
    elseif  textString(textLenght) == '1' || textString(textLenght) == '2' || ...
            textString(textLenght) == '3' || textString(textLenght) == '4' || ...
            textString(textLenght) == '5' || textString(textLenght) == '6' || ...
            textString(textLenght) == '7' || textString(textLenght) == '8' || ...
            textString(textLenght) == '9' || textString(textLenght) == '0' 
        textString = strcat(textString,'*log(');
    else
        textString = strcat(textString,'log(');
    end
else
    textString = strcat(textString,'log(');
end
set(handles.edit1,'String',textString)

% --- Executes on button press in pushbutton19.
function pushbutton19_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textString = get(handles.edit1,'String');
textLenght = length(textString);
if textLenght >= 1
   if textString(textLenght) == '.'
    elseif  textString(textLenght) == '1' || textString(textLenght) == '2' || ...
            textString(textLenght) == '3' || textString(textLenght) == '4' || ...
            textString(textLenght) == '5' || textString(textLenght) == '6' || ...
            textString(textLenght) == '7' || textString(textLenght) == '8' || ...
            textString(textLenght) == '9' || textString(textLenght) == '0' 
        textString = strcat(textString,'*tan(');
    else
        textString = strcat(textString,'tan(');  
   end
else
    textString = strcat(textString,'tan(');
end
set(handles.edit1,'String',textString)


% --- Executes on button press in pushbutton20.
function pushbutton20_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=get(handles.edit1,'string');
set(handles.edit1,'string',strcat(a,')'));

% --- Executes on button press in pushbutton21.
function pushbutton21_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=get(handles.edit1,'string');
set(handles.edit1,'string',strcat(a,'('));

% --- Executes on button press in pushbutton22.
function pushbutton22_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.edit1,'String','');
set(handles.text2,'String','');

% --- Executes on button press in pushbutton23.
function pushbutton23_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textString = get(handles.edit1,'String');
textLenght = length(textString);
if textLenght >= 1
    if textString(textLenght) == '+' || textString(textLenght) == '-' || ...
       textString(textLenght) == '*' || textString(textLenght) == '/' || ...
       textString(textLenght) == '.' || textString(textLenght) == '^'
   errordlg('Mats Error(Mathematical signs can not be used consecutively)','Error') 
    else
       textString = strcat(textString,'*');
       set(handles.edit1,'String',textString)
    end
else
    errordlg('Mats Error','Error') 
end

% --- Executes on button press in pushbutton24.
function pushbutton24_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton24 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textString = get(handles.edit1,'String');
textLenght = length(textString);
if textLenght >= 1
    if textString(textLenght) == '+' || textString(textLenght) == '-' || ...
        textString(textLenght) == '*' || textString(textLenght) == '/' || ...
        textString(textLenght) == '.' || textString(textLenght) == '^'
     errordlg('Mats Error(Mathematical signs can not be used consecutively)','Error') 
    else
        textString = strcat(textString,'.');
        set(handles.edit1,'String',textString)    
    end
else
    errordlg('Mats Error','Error') 
end

% --- Executes on button press in pushbutton25.
function pushbutton25_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton25 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=get(handles.edit1,'string');
set(handles.edit1,'string',strcat(a,'0'));


% --- Executes on button press in pushbutton26.
function pushbutton26_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton26 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textString = get(handles.edit1,'String');
textLenght = length(textString);
if textLenght >= 1
   if textString(textLenght) == '.'
    elseif  textString(textLenght) == '1' || textString(textLenght) == '2' || ...
            textString(textLenght) == '3' || textString(textLenght) == '4' || ...
            textString(textLenght) == '5' || textString(textLenght) == '6' || ...
            textString(textLenght) == '7' || textString(textLenght) == '8' || ...
            textString(textLenght) == '9' || textString(textLenght) == '0' 
        textString = strcat(textString,'*cos(');
    else
        textString = strcat(textString,'cos(');
    end
else
    textString = strcat(textString,'cos(');
end
set(handles.edit1,'String',textString)

% --- Executes on button press in pushbutton27.
function pushbutton27_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton27 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textString = get(handles.edit1,'String');
textLenght = length(textString);
if textLenght >= 1
   if textString(textLenght) == '.'
    elseif  textString(textLenght) == '1' || textString(textLenght) == '2' || ...
            textString(textLenght) == '3' || textString(textLenght) == '4' || ...
            textString(textLenght) == '5' || textString(textLenght) == '6' || ...
            textString(textLenght) == '7' || textString(textLenght) == '8' || ...
            textString(textLenght) == '9' || textString(textLenght) == '0' 
        textString = strcat(textString,'*sin(');
    else
        textString = strcat(textString,'sin(');
    end
else
    textString = strcat(textString,'sin(');
end
set(handles.edit1,'String',textString)

% --- Executes on button press in pushbutton28.
function pushbutton28_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton28 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.edit1,'String','');

% --- Executes on button press in pushbutton29.
function pushbutton29_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton29 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=get(handles.edit1,'string');
a=a(:,1:length(a)-1);
set(handles.edit1,'string',a);

% --- Executes on button press in pushbutton30.
function pushbutton30_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton30 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=get(handles.edit1,'string');
Ans=get(handles.text2,'string');
set(handles.edit1,'string',strcat(a,Ans));


% --- Executes on button press in pushbutton31.
function pushbutton31_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton31 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=get(handles.edit1,'string');
set(handles.edit1,'string',strcat(a,'9'));


% --- Executes on button press in pushbutton50.
function pushbutton50_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton50 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textString = get(handles.edit1,'String');
textLenght = length(textString);
if textLenght >= 1
   if textString(textLenght) == '.'
    elseif  textString(textLenght) == '1' || textString(textLenght) == '2' || ...
            textString(textLenght) == '3' || textString(textLenght) == '4' || ...
            textString(textLenght) == '5' || textString(textLenght) == '6' || ...
            textString(textLenght) == '7' || textString(textLenght) == '8' || ...
            textString(textLenght) == '9' || textString(textLenght) == '0' 
        textString = strcat(textString,'*1/');
    else
        textString = strcat(textString,'1/');
    end
else
    textString = strcat(textString,'1/');
end
set(handles.edit1,'String',textString)

% --- Executes on button press in pushbutton51.
function pushbutton51_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton51 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textString = get(handles.edit1,'String');
textLenght = length(textString);
if textLenght >= 1
   if textString(textLenght) == '.'
    elseif  textString(textLenght) == '1' || textString(textLenght) == '2' || ...
            textString(textLenght) == '3' || textString(textLenght) == '4' || ...
            textString(textLenght) == '5' || textString(textLenght) == '6' || ...
            textString(textLenght) == '7' || textString(textLenght) == '8' || ...
            textString(textLenght) == '9' || textString(textLenght) == '0' 
        textString = strcat(textString,'^');
    else
        textString = strcat(textString,'^');
    end
else
   errordlg('Mats Error','Error') 
end
set(handles.edit1,'String',textString)

% --- Executes on button press in pushbutton52.
function pushbutton52_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton52 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textString = get(handles.edit1,'String');
textLenght = length(textString);
if textLenght >= 1
   if textString(textLenght) == '.'
    elseif  textString(textLenght) == '1' || textString(textLenght) == '2' || ...
            textString(textLenght) == '3' || textString(textLenght) == '4' || ...
            textString(textLenght) == '5' || textString(textLenght) == '6' || ...
            textString(textLenght) == '7' || textString(textLenght) == '8' || ...
            textString(textLenght) == '9' || textString(textLenght) == '0' 
        textString = strcat(textString,'*pi');
    else
        textString = strcat(textString,'pi');
    end
else
    textString = strcat(textString,'pi');
end
set(handles.edit1,'String',textString)

% --- Executes on button press in pushbutton53.
function pushbutton53_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton53 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textString = get(handles.edit1,'String');
textLenght = length(textString);
if textLenght >= 1
   if textString(textLenght) == '.'
    elseif  textString(textLenght) == '1' || textString(textLenght) == '2' || ...
            textString(textLenght) == '3' || textString(textLenght) == '4' || ...
            textString(textLenght) == '5' || textString(textLenght) == '6' || ...
            textString(textLenght) == '7' || textString(textLenght) == '8' || ...
            textString(textLenght) == '9' || textString(textLenght) == '0' 
        textString = strcat(textString,'*csc(');
    else
        textString = strcat(textString,'csc(');
    end
else
    textString = strcat(textString,'csc(');
end
set(handles.edit1,'String',textString)

% --- Executes on button press in pushbutton54.
function pushbutton54_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton54 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textString = get(handles.edit1,'String');
textLenght = length(textString);
if textLenght >= 1
   if textString(textLenght) == '.'
    elseif  textString(textLenght) == '1' || textString(textLenght) == '2' || ...
            textString(textLenght) == '3' || textString(textLenght) == '4' || ...
            textString(textLenght) == '5' || textString(textLenght) == '6' || ...
            textString(textLenght) == '7' || textString(textLenght) == '8' || ...
            textString(textLenght) == '9' || textString(textLenght) == '0' 
        textString = strcat(textString,'*acos(');
    else
        textString = strcat(textString,'acos(');
    end
else
    textString = strcat(textString,'acos(');
end
set(handles.edit1,'String',textString)

% --- Executes on button press in pushbutton55.
function pushbutton55_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton55 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textString = get(handles.edit1,'String');
textLenght = length(textString);
if textLenght >= 1
   if textString(textLenght) == '.'
    elseif  textString(textLenght) == '1' || textString(textLenght) == '2' || ...
            textString(textLenght) == '3' || textString(textLenght) == '4' || ...
            textString(textLenght) == '5' || textString(textLenght) == '6' || ...
            textString(textLenght) == '7' || textString(textLenght) == '8' || ...
            textString(textLenght) == '9' || textString(textLenght) == '0' 
        textString = strcat(textString,'*sec(');
    else
        textString = strcat(textString,'sec(');
    end
else
    textString = strcat(textString,'sec(');
end
set(handles.edit1,'String',textString)

% --- Executes on button press in pushbutton56.
function pushbutton56_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton56 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textString = get(handles.edit1,'String');
textLenght = length(textString);
if textLenght >= 1
   if textString(textLenght) == '.'
    elseif  textString(textLenght) == '1' || textString(textLenght) == '2' || ...
            textString(textLenght) == '3' || textString(textLenght) == '4' || ...
            textString(textLenght) == '5' || textString(textLenght) == '6' || ...
            textString(textLenght) == '7' || textString(textLenght) == '8' || ...
            textString(textLenght) == '9' || textString(textLenght) == '0' 
        textString = strcat(textString,'*abs(');
    else
        textString = strcat(textString,'abs(');
    end
else
    textString = strcat(textString,'abs(');
end
set(handles.edit1,'String',textString)


% --- Executes on button press in pushbutton57.
function pushbutton57_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton57 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textString = get(handles.edit1,'String');
textString = strrep(textString,'sin(','sind(');
textString = strrep(textString,'cos(','cosd(');
textString = strrep(textString,'tan(','tand(');
textString = strrep(textString,'asin(','asind(');
textString = strrep(textString,'acos(','acosd(');
textString = strrep(textString,'atan(','atand(');
textString = strrep(textString,'csc(','cscd(');
textString = strrep(textString,'sec(','secd(');
textString = strrep(textString,'cot(','cotd(');
textString = strrep(textString,'arcsec(','asecd(');
textString = strrep(textString,'arccsc(','acscd(');
textString = strrep(textString,'log(','log10(');
textString = strrep(textString,'cot(','acotd(');
textString = strrep(textString,'ln(','log(');
textString = strrep(textString,'e^(','exp(');

str=eval(textString);
set(handles.text2,'String',str);
set(handles.edit1,'String','');

% --- Executes on button press in pushbutton58.
function pushbutton58_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton58 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textString = get(handles.edit1,'String');
textLenght = length(textString);
if textLenght >= 1
    if textString(textLenght) == '+' || textString(textLenght) == '-' || ...
        textString(textLenght) == '*' || textString(textLenght) == '/' || ...
        textString(textLenght) == '.' || textString(textLenght) == '^'
    errordlg('Mats Error(Mathematical signs can not be used consecutively)','Error') 
    else
        textString = strcat(textString,'/');
        set(handles.edit1,'String',textString)
    end
else
    errordlg('Mats Error','Error') 
end

% --- Executes on button press in pushbutton59.
function pushbutton59_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton59 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textString = get(handles.edit1,'String');
textLenght = length(textString);
if textLenght >= 1
    if textString(textLenght) == '+' || textString(textLenght) == '-' || ...
        textString(textLenght) == '*' || textString(textLenght) == '/' || ...
        textString(textLenght) == '.' || textString(textLenght) == '^'
    errordlg('Mats Error(Mathematical signs can not be used consecutively)','Error') 
    else
        textString = strcat(textString,'+');
        set(handles.edit1,'String',textString)
    end
else
    errordlg('Mats Error','Error') 
end

% --- Executes on button press in pushbutton60.
function pushbutton60_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton60 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textString = get(handles.edit1,'String');
textLenght = length(textString);
if textLenght >= 1
    if textString(textLenght) == '+' || textString(textLenght) == '-' || ...
        textString(textLenght) == '*' || textString(textLenght) == '/' || ...
        textString(textLenght) == '.' || textString(textLenght) == '^'
    errordlg('Mats Error(Mathematical signs can not be used consecutively)','Error') 
    else
        textString = strcat(textString,'-');
        set(handles.edit1,'String',textString) 
    end
else
    errordlg('Mats Error','Error') 
end

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

% --------------------------------------------------------------------
function Untitled_7_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
delete(scientificCalculator );
equ;


% --------------------------------------------------------------------
function Untitled_8_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
delete(scientificCalculator );
lim_int;


% --------------------------------------------------------------------
function Untitled_6_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
delete(scientificCalculator );
m;


% --------------------------------------------------------------------
function Untitled_4_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
delete(scientificCalculator);
basicCalculator;

% --------------------------------------------------------------------
function Untitled_5_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close;


% --------------------------------------------------------------------
function Untitled_1_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_2_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_3_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
