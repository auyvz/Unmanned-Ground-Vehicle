function varargout = arayuz(varargin)
% ARAYUZ MATLAB code for arayuz.fig
%      ARAYUZ, by itself, creates a new ARAYUZ or raises the existing
%      singleton*.
%
%      H = ARAYUZ returns the handle to a new ARAYUZ or the handle to
%      the existing singleton*.
%
%      ARAYUZ('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in ARAYUZ.M with the given input arguments.
%
%      ARAYUZ('Property','Value',...) creates a new ARAYUZ or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before arayuz_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to arayuz_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help arayuz

% Last Modified by GUIDE v2.5 19-Jun-2015 15:44:13

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @arayuz_OpeningFcn, ...
                   'gui_OutputFcn',  @arayuz_OutputFcn, ...
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


% --- Executes just before arayuz is made visible.
function arayuz_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to arayuz (see VARARGIN)

% Choose default command line output for arayuz
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes arayuz wait for user response (see UIRESUME)
% uiwait(handles.figure1);
%Create Serial Port Object

global s;
s = serial('COM6','BaudRate',9600);
set(s,'DataBits',8);
set(s,'StopBits',1);
set(s,'Parity','none');
fopen(s);

% --- Outputs from this function are returned to the command line.
function varargout = arayuz_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

% --- Executes on button press in W.
function W_Callback(hObject, eventdata, handles)
% hObject    handle to W (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% s = serial('COM6','BaudRate',9600)
% set(s,'DataBits',8);
% set(s,'StopBits',1);
% set(s,'Parity','none');
% fopen(s)
global s;
s1 = s;

fwrite(s1,'w','uchar');
% fclose(s)
% delete(s)
% % 
% if get(handles.W,'Value') == 1
%     while 1
%  disp('key is held')
%  disp('blah')
%  if get(handles.W,'Value') == 0
%      break
%  end
%     end
% else
%     disp('key is re')
% end



% --- Executes on button press in S.
function S_Callback(hObject, eventdata, handles)
% hObject    handle to S (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% s = serial('COM6','BaudRate',9600)
% set(s,'DataBits',8);
% set(s,'StopBits',1);
% set(s,'Parity','none');
% fopen(s)

global s;
s1 = s;
fwrite(s1,'s','uchar');
% fclose(s)
% delete(s)

% --- Executes on button press in D.
function A_Callback(hObject, eventdata, handles)
% hObject    handle to D (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% s = serial('COM6','BaudRate',9600)
% set(s,'DataBits',8);
% set(s,'StopBits',1);
% set(s,'Parity','none');
% fopen(s)
global s;
s1 = s;
fwrite(s1,'d','uchar');
% fclose(s)
% delete(s)

% --- Executes on button press in A.
function D_Callback(hObject, eventdata, handles)
% hObject    handle to A (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% s = serial('COM6','BaudRate',9600)
% set(s,'DataBits',8);
% set(s,'StopBits',1);
% set(s,'Parity','none');
% fopen(s)
global s;
s1 = s;
fwrite(s1,'a','uchar');
% fclose(s)
% delete(s)


% --- Executes on button press in stop.
function stop_Callback(hObject, eventdata, handles)
% hObject    handle to stop (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% s = serial('COM6','BaudRate',9600)
% set(s,'DataBits',8);
% set(s,'StopBits',1);
% set(s,'Parity','none');
% fopen(s)
global s;
s1 = s;
fwrite(s1,'x','uchar');
% fclose(s)
% delete(s)




% --- Executes on button press in Z.
function E_Callback(hObject, eventdata, handles)
% hObject    handle to Z (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% s = serial('COM6','BaudRate',9600)
% set(s,'DataBits',8);
% set(s,'StopBits',1);
% set(s,'Parity','none');
% fopen(s)
global s;
s1 = s;
fwrite(s1,'e','uchar');
% fclose(s)
% delete(s)


% --- Executes on button press in Q.
function Q_Callback(hObject, eventdata, handles)
% hObject    handle to Q (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% s = serial('COM6','BaudRate',9600)
% set(s,'DataBits',8);
% set(s,'StopBits',1);
% set(s,'Parity','none');
% fopen(s)
global s;
s1 = s;
fwrite(s1,'q','uchar');
% fclose(s)
% delete(s)

% --- Executes on button press in Z.
function Z_Callback(hObject, eventdata, handles)
% hObject    handle to Z (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% s = serial('COM6','BaudRate',9600)
% set(s,'DataBits',8);
% set(s,'StopBits',1);
% set(s,'Parity','none');
% fopen(s)
global s;
s1 = s;
fwrite(s1,'z','uchar');
% fclose(s)
% delete(s)

% --- Executes on button press in C.
function C_Callback(hObject, eventdata, handles)
% hObject    handle to C (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% s = serial('COM6','BaudRate',9600)
% set(s,'DataBits',8);
% set(s,'StopBits',1);
% set(s,'Parity','none');
% fopen(s)
global s;
s1 = s;
fwrite(s1,'c','uchar');
% fclose(s)
% delete(s)


% --- Executes on button press in togglebutton1.
function togglebutton1_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton1
url = 'http://192.168.137.245:8080/image/jpeg.cgi';
ss  = imread(url);
fh = image(ss);
while(1)
    ss  = imread(url);
    set(fh,'CData',ss);
    drawnow;
end



% --- Executes on key press with focus on figure1 and none of its controls.
function figure1_KeyPressFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.FIGURE)
%	Key: name of the key that was pressed, in lower case
%	Character: character interpretation of the key(s) that was pressed
%	Modifier: name(s) of the modifier key(s) (i.e., control, shift) pressed
% handles    structure with handles and user data (see GUIDATA)
pressedKey = eventdata.Key;

switch pressedKey
    
  case 'w'
    W_Callback(hObject, eventdata, handles)
  case 'a'
       A_Callback(hObject, eventdata, handles)
  case 'd'
       D_Callback(hObject, eventdata, handles)
  case 's'
       S_Callback(hObject, eventdata, handles)
  case 'q'
         Q_Callback(hObject, eventdata, handles)
  case 'e'
         E_Callback(hObject, eventdata, handles)
  case 'x'
          stop_Callback(hObject, eventdata, handles)
    otherwise 
          disp('Invalid key is pressed')
end


% --- Executes when user attempts to close figure1.
function figure1_CloseRequestFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: delete(hObject) closes the figure
global s;

s1 = s;
fclose(s1)
delete(s1)
delete(hObject);


% --- Executes on button press in pushbuttonSpeedUp.
function pushbuttonSpeedUp_Callback(hObject, eventdata, handles)
% hObject    handle to pushbuttonSpeedUp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global s;
s1 = s;
fwrite(s1,'r','uchar');

% --- Executes on button press in pushbuttonSpeedDown.
function pushbuttonSpeedDown_Callback(hObject, eventdata, handles)
% hObject    handle to pushbuttonSpeedDown (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global s;
s1 = s;
fwrite(s1,'f','uchar');
