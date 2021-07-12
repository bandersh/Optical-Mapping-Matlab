function varargout = Optical_Mapping_Analysis_v4_BAH_2019(varargin)
% OPTICAL_MAPPING_ANALYSIS_V4_BAH_2019 MATLAB code for Optical_Mapping_Analysis_v4_BAH_2019.fig
%      OPTICAL_MAPPING_ANALYSIS_V4_BAH_2019, by itself, creates a new OPTICAL_MAPPING_ANALYSIS_V4_BAH_2019 or raises the existing
%      singleton*.
%
%      H = OPTICAL_MAPPING_ANALYSIS_V4_BAH_2019 returns the handle to a new OPTICAL_MAPPING_ANALYSIS_V4_BAH_2019 or the handle to
%      the existing singleton*.
%
%      OPTICAL_MAPPING_ANALYSIS_V4_BAH_2019('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in OPTICAL_MAPPING_ANALYSIS_V4_BAH_2019.M with the given input arguments.
%
%      OPTICAL_MAPPING_ANALYSIS_V4_BAH_2019('Property','Value',...) creates a new OPTICAL_MAPPING_ANALYSIS_V4_BAH_2019 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Optical_Mapping_Analysis_v4_BAH_2019_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Optical_Mapping_Analysis_v4_BAH_2019_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Optical_Mapping_Analysis_v4_BAH_2019

% Last Modified by GUIDE v2.5 08-Dec-2019 08:51:13

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Optical_Mapping_Analysis_v4_BAH_2019_OpeningFcn, ...
                   'gui_OutputFcn',  @Optical_Mapping_Analysis_v4_BAH_2019_OutputFcn, ...
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


% --- Executes just before Optical_Mapping_Analysis_v4_BAH_2019 is made visible.
function Optical_Mapping_Analysis_v4_BAH_2019_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Optical_Mapping_Analysis_v4_BAH_2019 (see VARARGIN)

% Choose default command line output for Optical_Mapping_Analysis_v4_BAH_2019
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

axes(handles.data_fig);
% membrane()
L = 160*membrane(1,100);
% f = get(gcf);
ax = get(gca);
s = surface(L);
s.EdgeColor = 'none';
view(3)
ax.XLim = [1 201]; ax.YLim = [1 201]; ax.ZLim = [-53.4 160];
ax.Position = [0 0 1 1]; ax.DataAspectRatio = [1 1 .9];
l1 = light;
l1.Position = [160 400 80];
l1.Style = 'local';
l1.Color = [0 0.8 0.8];
 
l2 = light;
l2.Position = [.5 -1 .4];
l2.Color = [0.8 0.8 0];
s.FaceColor = [0.9 0.2 0.2];
s.FaceLighting = 'gouraud';
s.AmbientStrength = 0.3;
s.DiffuseStrength = 0.6; 
s.BackFaceLighting = 'lit';

s.SpecularStrength = 1;
s.SpecularColorReflectance = 1;
s.SpecularExponent = 7;


% UIWAIT makes Optical_Mapping_Analysis_v4_BAH_2019 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Optical_Mapping_Analysis_v4_BAH_2019_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in file_listbox.
function file_listbox_Callback(hObject, eventdata, handles)
% hObject    handle to file_listbox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns file_listbox contents as cell array
%        contents{get(hObject,'Value')} returns selected item from file_listbox
% contents = cellstr(get(hObject,'String'));
% contents{get(hObject,'Value')}


% --- Executes during object creation, after setting all properties.
function file_listbox_CreateFcn(hObject, eventdata, handles)
% hObject    handle to file_listbox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in folder_menu.
function folder_menu_Callback(hObject, eventdata, handles)
% hObject    handle to folder_menu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns folder_menu contents as cell array
%        contents{get(hObject,'Value')} returns selected item from folder_menu


% --- Executes during object creation, after setting all properties.
function folder_menu_CreateFcn(hObject, eventdata, handles)
% hObject    handle to folder_menu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in folder_button.
function folder_button_Callback(hObject, eventdata, handles)
% hObject    handle to folder_button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

folderdir = uigetdir(pwd);

files = dir(fullfile(folderdir, '*.txt'));

% newf = [];
for i = 1:length(files)
    newf{i}  = files(i).name;
end

set(handles.folder_text_box,'String',folderdir)

set(handles.file_listbox,'String',newf,'Max',10000);



function folder_text_box_Callback(hObject, eventdata, handles)
% hObject    handle to folder_text_box (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of folder_text_box as text
%        str2double(get(hObject,'String')) returns contents of folder_text_box as a double


% --- Executes during object creation, after setting all properties.
function folder_text_box_CreateFcn(hObject, eventdata, handles)
% hObject    handle to folder_text_box (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function excel_save_name_Callback(hObject, eventdata, handles)
% hObject    handle to excel_save_name (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of excel_save_name as text
%        str2double(get(hObject,'String')) returns contents of excel_save_name as a double


% --- Executes during object creation, after setting all properties.
function excel_save_name_CreateFcn(hObject, eventdata, handles)
% hObject    handle to excel_save_name (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in analyze_button_1.
function analyze_button_1_Callback(hObject, eventdata, handles)
% hObject    handle to analyze_button_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


folderName = get(handles.folder_text_box,'String');

fileList = get(handles.file_listbox,'String');

whichfiles = get(handles.file_listbox,'Value');

fileList = fileList(whichfiles);

numFiles = length(fileList);

saveFolder = pwd;

smoothval = str2double(get(handles.smooth_val,'String'));
smoothvalinv = smoothval;

% Time of experiment
texp = str2double(get(handles.exp_time,'String')); % since no time stamp on files, need to hard code something

s = 1; % row index for saving multiple files in the same structure

axes(handles.data_fig);

for i=1:numFiles
    
    try
        impdata = importdata([folderName '/' fileList{i}]); % MAC
    catch
        impdata = importdata([folderName '\' fileList{i}]); % WINDOWS
    end
    
    
    if isstruct(impdata)
        data = impdata.data;
    else
        data = impdata;
    end
    
    [n,m] = size(data);
    
    ptime = linspace(0,texp, n);

    pulse = data(:,1); 
    cal_trans = data(:,2);
    
    pcol = [168/256 168/256 168/256];
    
    % Plotting scaled/normalized signals
    ctranp = (cal_trans-min(cal_trans));
    ctranp = ctranp./max(ctranp);
    ctsmooth = smooth(ptime,ctranp,smoothval,'loess'); % smooth signal for peak analysis
    
    
    ctsmoothinv = smooth(ptime,ctranp,smoothvalinv,'loess'); % smooth signal for inverted analysis
    ctinv = max(ctsmoothinv) - ctsmoothinv; % inverted smoothed signal to find corresponding minima  
    
    
    if max(diff(pulse)) > 100
        pulseplot = pulse./max(pulse);
        
%         plot(ptime, pulse./max(pulse),'Color',pcol,'LineWidth',1.5); hold on
%         plot(ptime, ctranp ,'r','LineWidth',1.5); 
%         plot(ptime, ctsmooth ,'k','LineWidth',1.5); 
%         ylabel('Scaled intensity (A.U.)'); xlabel('Time')
    else
        pulseplot = 0.015*pulse./max(pulse);
%         plot(ptime, 0.015*pulse./max(pulse),'Color',pcol,'LineWidth',1.5); hold on
%         plot(ptime, ctranp,'r','LineWidth',1.5); 
%         plot(ptime, ctsmooth ,'k','LineWidth',1.5); 
%         ylabel('Scaled intensity (A.U.)'); xlabel('Time');
    end
    
    
    % Use normalized and scaled signal to find peaks and mins
    [peak_vals, plocs] = findpeaks(ctsmooth,'MinPeakHeight',0.5,'MinPeakDistance',100);
    [min_vals, mlocs] = findpeaks(ctinv,'MinPeakHeight',0.5,'MinPeakDistance',100);
    
    % finding time to peak, t50, t80, t90 using smoothed, non-normalized signal
    ctransm = smooth(ptime,cal_trans,smoothval,'loess');
    
    
    % go through peaks and check for basic criteria and analyze
    
    minpoints_before = 100; % minimum number of points before first peak in order for us to analyze
    minpoints_after = 150; % minimum number of points after last peak in order for us to analyze
    
    if plocs(1)-minpoints_before < 0 % if the first point doesn't have adequate space before it, then delete for analysis
        plocs(1)=[];
        peak_vals(1) = [];
    end
    if (length(ctransm) - plocs(end)) - minpoints_after < 0 % if the last point doesn't have adequate space after it, then delete for analysis
        plocs(end) = [];
        peak_vals(end) = [];
    end
    
%     save test_mat
%     datout{s  ,1} =  fileList(i).name;
%     datout{s  ,1} =  fileList{i};
%     datout{s  ,8} = 'Average values';
%     datout{s+1,1} = 'Peak value';
%     datout{s+2,1} = 'Time to peak'; 
%     datout{s+3,1} = 'Time to 50%';  
%     datout{s+4,1} = 'Time to 80%'; 
%     datout{s+5,1} = 'Time to 90%';  
    
    datout{s  ,1} =  fileList{i}; datout{s  ,8} = 'Average values';
    datout{s+1,1} = 'F1/F0';
    datout{s+2,1} = 'Time to peak'; 
    datout{s+3,1} = 'Time to 50%';  
    datout{s+4,1} = 'Time to 80%'; 
    datout{s+5,1} = 'Time to 90%'; 
    datout{s+6,1} = 'Tau'; 
    
    pgood = [];
    p = 1;
    
    
% % %     save test_data_v1
    
    % Analyze each peak and save stats
%     for lv = 1:length(plocs)
    while p <= length(plocs)
        
        mpdiff = plocs(p) - mlocs;
        
        mtemp = plocs(p) - min(mpdiff(mpdiff>0)); % finding nearest minimum on left side of peak 
        ptemp = plocs(p);
        
        
%         plot(ptime(ptemp), ctsmooth(ptemp),'k^','LineWidth',2,'MarkerSize',9,'MarkerFaceColor','b')
%         plot(ptime(mtemp), ctsmooth(mtemp),'kv','LineWidth',2,'MarkerSize',9,'MarkerFaceColor','b')
%         
%         hold off
        % output peak amplitude
%         datout{s+1,1+p} = cal_trans(plocs(p));
%         peak_cal(1,p) = cal_trans(plocs(p));

        set(handles.good_point_radio,'Value',0)
        set(handles.bad_point_radio,'Value',0)
        set(handles.go_back_button,'Value',0)
        
%         set(handles.next_points_button,'Value',0)

        if p == 1
            set(handles.go_back_button,'Visible',0);
        else
            set(handles.go_back_button,'Visible',1);
        end

        badrad = get(handles.bad_point_radio,'Value');
        goodrad = get(handles.good_point_radio,'Value');
        goback = get(handles.go_back_button,'Value');
        
        set(handles.min_slider,'Value',mtemp,'Min',mtemp-99,'Max',mtemp+99)
        set(handles.max_slider,'Value',ptemp,'Min',ptemp-75,'Max',ptemp+75)
        
        while ~badrad && ~goodrad && ~goback
            
            mtemp = fix(get(handles.min_slider,'Value'));
            ptemp = fix(get(handles.max_slider,'Value'));
            
            plot(ptime, pulseplot,'Color',pcol,'LineWidth',1.5); hold on
            plot(ptime, ctranp,'r','LineWidth',1.5); hold on
            plot(ptime, ctsmooth ,'k','LineWidth',1.5); 
            ylabel('Scaled intensity (A.U.)'); xlabel('Time');
            title(fileList{i});
            grid on
            grid minor
            
            plot(ptime(ptemp), ctsmooth(ptemp),'k^','LineWidth',2,'MarkerSize',10,'MarkerFaceColor','b')
            plot(ptime(mtemp), ctsmooth(mtemp),'kv','LineWidth',2,'MarkerSize',10,'MarkerFaceColor','b')
            
            legend('Stimulation','Calcium trans','Smoothed','Peak max','Min','Location','NE');
            
            hold off
            
            badrad = get(handles.bad_point_radio,'Value');
            goodrad = get(handles.good_point_radio,'Value');
            goback = get(handles.go_back_button,'Value');
            
            drawnow
        end

        if get(handles.go_back_button,'Value')
            p = p-1;
            
        elseif get(handles.good_point_radio,'Value')
            
            pgood = [pgood p];
            
% %             % Uses raw signal
% %             datout{s+1,1+p} = cal_trans(ptemp)/cal_trans(mtemp);
% %             peak_cal(1,p) = cal_trans(ptemp)/cal_trans(mtemp);
            
             % Uses smoothed signal
            datout{s+1,1+p} = ctransm(ptemp)/ctransm(mtemp);
            peak_cal(1,p) = ctransm(ptemp)/ctransm(mtemp);

            tp(1,p) = 1000*(ptemp - mtemp)*texp/length(ctransm); % time to peak - might need different scaling?
            datout{s+2,1+p} = tp(1,p);

            ctan = ctransm - ctransm(mtemp); % shifting waveform down to previous minimum to analyze times to 0.5, 0.8, 0.9

            ct50inds = ptemp - find(ctan<0.5*ctan(ptemp));
            t50(1,p) = 1000*-1*max(ct50inds(ct50inds<0))*texp/length(ctransm);
            datout{s+3,1+p} = t50(1,p);

            ct80inds = ptemp - find(ctan<0.2*ctan(ptemp));
            t80(1,p) = 1000*-1*max(ct80inds(ct80inds<0))*texp/length(ctransm);
            datout{s+4,1+p} = t80(1,p);

            ct90inds = ptemp - find(ctan<0.1*ctan(ptemp));
            t90(1,p) = 1000*-1*max(ct90inds(ct90inds<0))*texp/length(ctransm);
            datout{s+5,1+p} = t90(1,p);
            
            tausig = ctransm((ptemp+20):(ptemp+120))-ctransm(mtemp);
            tautime = ((ptemp+20):(ptemp+120))*texp/length(ctransm);
            taufit = polyfit(-log(tausig), tautime',1);

%             taufit = -(log(tausig)-log(tausig(1)))\(tautime-tautime(1))';
            
            tau(1,p) = 1000*taufit(1);
            
            datout{s+6,1+p} = tau(1,p);
            
            p = p+1;
        else
            
            datout{s+1,1+p} = [];
            peak_cal(1,p) = 0;

            tp(1,p) = 0; 
            datout{s+2,1+p} = [];

            t50(1,p) = 0;
            datout{s+3,1+p} = [];

            t80(1,p) = 0;
            datout{s+4,1+p} = [];

            t90(1,p) = 0;
            datout{s+5,1+p} = [];
            
            tau(1,p) = 0;
            datout{s+6,1+p} = [];
            
            p = p+1;
        end
               
        
        
    end
    
    pgood = unique(pgood);
    datout{s+1,8} = mean(peak_cal(pgood));
    datout{s+2,8} = mean(tp(pgood));
    datout{s+3,8} = mean(t50(pgood));
    datout{s+4,8} = mean(t80(pgood));
    datout{s+5,8} = mean(t90(pgood));
    datout{s+6,8} = mean(tau(pgood));
    
%     title(fileList(i).name)
%     title(fileList{i})
%     legend('Pulse','Calcium trans','Smoothed','Peaks','Mins','Location','SE')
 
%     plot(ptime(1:end-1), 10.*diff(ctsmooth),'g','LineWidth',2) ; 
    hold off
    
    % Update output data index
    s = s+6+2;
    

    
    %%%%%%%% UNCOMMENT THIS BY DELETING THE (%) SIGN %%%%%%%
% % % %     figure(3)
% % % %     plot(ptime,cal_trans); hold on
% % % %     ylabel('Intensity (A.U.)'); xlabel('Time');
    %%%%%%%%%
   
    
    clear tp t50 t80 t90 tau tausig tautime impdata data pulse cal_trans ctranp ctsmooth ctsmoothinv ctinv ctransm peak_vals peak_cal

end

save_excel_name = get(handles.excel_save_name,'String');

% datout;
save(save_excel_name,'datout')


% Starting over / clearing all figures etc.
hold off
axes(handles.data_fig);cla; legend('hide'); title('')
% membrane()
L = 160*membrane(1,100);
% f = get(gcf);
ax = get(gca);
s = surface(L);
s.EdgeColor = 'none';
view(3)
ax.XLim = [1 201]; ax.YLim = [1 201]; ax.ZLim = [-53.4 160];
ax.Position = [0 0 1 1]; ax.DataAspectRatio = [1 1 .9];
l1 = light;
l1.Position = [160 400 80];
l1.Style = 'local';
l1.Color = [0 0.8 0.8];
 
l2 = light;
l2.Position = [.5 -1 .4];
l2.Color = [0.8 0.8 0];
s.FaceColor = [0.9 0.2 0.2];
s.FaceLighting = 'gouraud';
s.AmbientStrength = 0.3; s.DiffuseStrength = 0.6; 
s.BackFaceLighting = 'lit';
s.SpecularStrength = 1; s.SpecularColorReflectance = 1; s.SpecularExponent = 7;

set(handles.folder_text_box,'String','Choose again');

set(handles.file_listbox,'String',[]);



% save([pwd '/save_excel_name'],datout)

% xlswrite([saveFolder save_excel_name], datout);



function smooth_val_Callback(hObject, eventdata, handles)
% hObject    handle to smooth_val (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of smooth_val as text
%        str2double(get(hObject,'String')) returns contents of smooth_val as a double


% --- Executes during object creation, after setting all properties.
function smooth_val_CreateFcn(hObject, eventdata, handles)
% hObject    handle to smooth_val (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function exp_time_Callback(hObject, eventdata, handles)
% hObject    handle to exp_time (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of exp_time as text
%        str2double(get(hObject,'String')) returns contents of exp_time as a double


% --- Executes during object creation, after setting all properties.
function exp_time_CreateFcn(hObject, eventdata, handles)
% hObject    handle to exp_time (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in good_point_radio.
function good_point_radio_Callback(hObject, eventdata, handles)
% hObject    handle to good_point_radio (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of good_point_radio


% --- Executes on slider movement.
function min_slider_Callback(hObject, eventdata, handles)
% hObject    handle to min_slider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function min_slider_CreateFcn(hObject, eventdata, handles)
% hObject    handle to min_slider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function max_slider_Callback(hObject, eventdata, handles)
% hObject    handle to max_slider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function max_slider_CreateFcn(hObject, eventdata, handles)
% hObject    handle to max_slider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% % % % --- Executes on button press in next_points_button.
% % % function next_points_button_Callback(hObject, eventdata, handles)
% % % % hObject    handle to next_points_button (see GCBO)
% % % % eventdata  reserved - to be defined in a future version of MATLAB
% % % % handles    structure with handles and user data (see GUIDATA)
% % % 
% % % nextvaltest = get(handles.next_points_button,'Value')
% % % set(handles.next_points_button,'Value',1);
% % % 
% % % 
% % % % --- If Enable == 'on', executes on mouse press in 5 pixel border.
% % % % --- Otherwise, executes on mouse press in 5 pixel border or over next_points_button.
% % % function next_points_button_ButtonDownFcn(hObject, eventdata, handles)
% % % % hObject    handle to next_points_button (see GCBO)
% % % % eventdata  reserved - to be defined in a future version of MATLAB
% % % % handles    structure with handles and user data (see GUIDATA)
% % % 
% % % nextvaltest = get(handles.next_points_button,'Value')
% % % set(handles.next_points_button,'Value',1);


% --- Executes on button press in bad_point_radio.
function bad_point_radio_Callback(hObject, eventdata, handles)
% hObject    handle to bad_point_radio (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of bad_point_radio


% --- Executes on button press in go_back_button.
function go_back_button_Callback(hObject, eventdata, handles)
% hObject    handle to go_back_button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
