function varargout = parking_lot_estimate(varargin)
% PARKING_LOT_ESTIMATE MATLAB code for parking_lot_estimate.fig
%      PARKING_LOT_ESTIMATE, by itself, creates a new PARKING_LOT_ESTIMATE or raises the existing
%      singleton*.
%
%      H = PARKING_LOT_ESTIMATE returns the handle to a new PARKING_LOT_ESTIMATE or the handle to
%      the existing singleton*.
%
%      PARKING_LOT_ESTIMATE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PARKING_LOT_ESTIMATE.M with the given input arguments.
%
%      PARKING_LOT_ESTIMATE('Property','Value',...) creates a new PARKING_LOT_ESTIMATE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before parking_lot_estimate_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to parking_lot_estimate_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help parking_lot_estimate

% Last Modified by GUIDE v2.5 07-Jun-2014 19:50:48

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @parking_lot_estimate_OpeningFcn, ...
                   'gui_OutputFcn',  @parking_lot_estimate_OutputFcn, ...
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


% --- Executes just before parking_lot_estimate is made visible.
function parking_lot_estimate_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to parking_lot_estimate (see VARARGIN)

% Choose default command line output for parking_lot_estimate
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes parking_lot_estimate wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = parking_lot_estimate_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in estimlots.
function estimlots_Callback(hObject, eventdata, handles)
% hObject    handle to estimlots (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
count = car();
if count >= 11
    CC = 'There is any space in this area.';
elseif count == 1
    CC = 'There is a parking space.';
else
    CC = 'There are parking spaces';
end
message = sprintf(CC);
uiwait(msgbox(message,'Empty space'));
