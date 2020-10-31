load('allDataFreq200.mat')
allData=allDataFreq200;
s=size(allData);
r=s(1,1);
c=s(1,2);


pos=allData(:,1);
chr=allData(:,2);
tr=allData(:,3);
cds=allData(:,4);
exon=allData(:,5);
threep=allData(:,6);
fivep=allData(:,7);
stopCondon=allData(:,8);
startR=1;
endR=943;%fix(r/100);
alltr=zeros(endR-startR+1,20);
for i=startR:endR
       p=chr(i);
        
        if(abs(tr(i))>0)
            alltr(i-startR+1,p)=30;
        end
        if(abs(cds(i))>0)
            alltr(i-startR+1,p)=20;
        end
        if(abs(exon(i))>0)
            alltr(i-startR+1,p)=45;
        end
        if(abs(threep(i))>0)
            alltr(i-startR+1,p)=60;
        end
        if(abs(fivep(i))>0)
            alltr(i-startR+1,p)=80;
        end
        if(abs(stopCondon(i))>0)
            alltr(i-startR+1,p)=5;
        end
       % allAr(i,j)=max([abs(alltr(i,j)) abs(allcds(i,j)) abs(allexon(i,j)) abs(allthreep(i,j)) abs(allfivep(i,j)) abs(allstopCondon(i,j))]);
   
end
%alltr=max(max(alltr))-alltr;
allArrr=transpose(alltr);
 figure
 DrawHeatmap(allArrr,[startR:endR],{'chr1','chr2','chr3','chr4','chr5','chr6','chr7','chr8','chr9','chr10','chr11','chr12','chr13','chr14','chr15','chr16','chr17','chr18','chr19','chrX'},'Distribution using the ratio of counts and coverage','Positions','chromosomes');
