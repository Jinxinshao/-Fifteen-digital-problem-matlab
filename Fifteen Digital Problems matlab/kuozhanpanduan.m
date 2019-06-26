function [ flag_zhaodao,zuizhong,guzhi_idex,zhongjian ] = kuozhanpanduan( S )
%KUOZHANPANDUAN Summary of this function goes here
%   Detailed explanation goes here
size_all=size(S);

all_ge=size_all(1,2);

i=0;
while all_ge~=0
    
    i=i+1;
    xiaozhongjian_bianliang=S(i).field;
     if isempty(xiaozhongjian_bianliang)==1
        S(i)=[];
       
        all_ge=all_ge-1;
         i=i-1;
     else
         
     error(i)=xiaozhongjian_bianliang(1,4).error_all(end);
     guzhi(i)=xiaozhongjian_bianliang(1,2).error_all(end);  
     all_ge=all_ge-1;
         
    end

end

flag_zhaodao=ismember(0,error);

if  ismember(0,error)==1
    zuizhong_index=find(error==0);
    zuizhong=S(zuizhong_index).field;
else
    zuizhong=[];
end


 guzhi_min_idex=find(guzhi==min(min(guzhi)));
 guzhi_idex=guzhi_min_idex(1);
 zhongjian=S(guzhi_min_idex(1)).field;
 %取第一个

end

