



size_all=size(open);

all_ge=size_all(1,2);

i=0;
while all_ge~=0
    
    i=i+1;
    xiaozhongjian_bianliang=open(i).field;
     if isempty(xiaozhongjian_bianliang)==1
        open(i)=[];
       
        all_ge=all_ge-1;
         i=i-1;
     else
         
     error(i)=xiaozhongjian_bianliang(1,4).error_all(end);
     guzhi(i)=xiaozhongjian_bianliang(1,2).error_all(end);  
     all_ge=all_ge-1;
         
    end

end

if  ismember(0,error)==1
    zuizhong_index=find(error==0);
    zuizhong=open(zuizhong_index).field;
end


 guzhi_min_idex=find(guzhi==min(min(guzhi)));
 zhongjian=open(guzhi_min_idex(1)).field;
 %取第一个







