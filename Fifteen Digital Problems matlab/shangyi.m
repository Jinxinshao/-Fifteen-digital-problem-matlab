function [ zhongzhi,bukexing,final ] = shangyi( final )
%SHANGYI Summary of this function goes here
%   Detailed explanation goes here
names = fieldnames(final);
 duibizhi = cell(numel(names),1);
 for i = 1:numel(names)
     duibizhi{i} = final(1,2).(names{i});
     duibizhi_end{i}= final(1,2).(names{i})(end,:);
 end
% a
bukexing=0;
zhongzhi=0;


ku=[1,1;1,2;1,3;1,4;2,1;2,2;2,3;2,4;3,1;3,2;3,3;3,4;4,1;4,2;4,3;4,4];
pd_shang=[final(1,2).X(end,1),final(1,2).X(end,2)+1];
flag_shang=ismember(pd_shang,ku,'rows');
names_15=names(1:15);

if (flag_shang==0)
    bukexing=1;
    return
    
end

for j=1:15
    if(cell2mat(duibizhi_end(j))==pd_shang)
        find_weizhi=j;
    end
end





if final(1,1).error_all(end)>0
    flag_chong=all(final(1,2).(names_15{find_weizhi})(end-1,:)==final(1,2).X(end,:));
else
    flag_chong=0;
end
   
flag=flag_shang&(~flag_chong);





if (flag==1)



% final(1,1).A(end+1,:)=[2,3]

for i = 1:numel(names_15)
    final(1,2).(names_15{i})(end+1,:)=final(1,2).(names_15{i})(end,:);

end
    final(1,2).(names_15{find_weizhi})(end,:)=final(1,2).X(end,:);
    final(1,2).X(end+1,:)=pd_shang;
    
    final(1,1).error_all(end+1)=1+final(1,1).error_all(end);
    
    final=jisuan(final);
    
    flag_xunhuan=chongfu(final);
    %flag_xunhuan=1;
    
    if flag_xunhuan==1
        %终止该节点
    %    clearvars final;
        zhongzhi=1;
    end
    
else
    %该方法不能实现
    bukexing=1;
end
    
end

