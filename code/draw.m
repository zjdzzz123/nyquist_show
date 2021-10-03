function [] = draw(t,x,st,fs)
% load 'cnt.mat';
time=0.05;
clf;
%stem(x,'Marker','none');
plot(t,x,t,st);
% if floor(fs)==fs
%     s1=['fs      = ' num2str(fs) '.0Hz'];
% else
%     s1=['fs      = ' num2str(fs) 'Hz'];
% end
% s2= 'fmax = 50.0Hz';
% legend(s1,s2);
% s=['.\caiyang\' num2str(cnt) '.png'];
% saveas(gca,s);
pause(time);
% cnt=cnt+1;
% save 'cnt.mat' cnt;
end