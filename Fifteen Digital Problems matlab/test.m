% names=fieldnames(final);
% all_i=size(names)(1,1);
% for i=1:all_i
%     (final(1,3).names(i))(end+1,:)=abs((final(1,1).names(i))-(final(1,2).names(i))(end,:))
% end

% 使用 fieldnames 函数提取结构体的域名：

% m_d = struct('d1',62,'d2',62,'d3',[20;31]);
names = fieldnames(final);
 duibizhi = cell(numel(names),1);
 for i = 1:numel(names)
     duibizhi{i} = final(1,2).(names{i});
     duibizhi_end{i}= final(1,2).(names{i})(end,:);
 end
% a



ku=[1,1;1,2;1,3;1,4;2,1;2,2;2,3;2,4;3,1;3,2;3,3;3,4;4,1;4,2;4,3;4,4];
pd_zuo=[final(1,2).X(end,1)-1,final(1,2).X(end,2)];
flag_zuo=ismember(pd_zuo,ku,'rows');
names_15=names(1:15);

for j=1:15
    if(cell2mat(duibizhi_end(j))==pd_zuo)
        find_weizhi=j
    end
end

if final(1,1).error_all(end)>0
    flag_chong=all(final(1,2).(names_15{find_weizhi})(end-1,:)==final(1,2).X(end,:));
else
    flag_chong=0;
end
   
flag=flag_zuo&(~flag_chong);
if (flag==1)



% final(1,1).A(end+1,:)=[2,3]

for i = 1:numel(names_15)
    final(1,2).(names_15{i})(end+1,:)=final(1,2).(names_15{i})(end,:);

end
    final(1,2).(names_15{find_weizhi})(end,:)=final(1,2).X(end,:);
    final(1,2).X(end+1,:)=pd_zuo;
    
    final(1,1).error_all(end+1)=1+final(1,1).error_all(end)
    
    final=jisuan(final);
    
end


    
    


