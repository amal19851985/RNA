function[] = DrawHeatmap( cdata,yvalues,tit,xlb,ylb )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
% cdata = [45 60 32; 43 54 76; 32 94 68; 23 95 58];
% xvalues = {'Small','Medium','Large'};
% yvalues = {'Green','Red','Blue','Gray'};

h = heatmap(yvalues,cdata);

h.Title = tit;
h.XLabel = xlb;
h.YLabel = ylb;

%colormap('jet');
colormap('hot');
end

