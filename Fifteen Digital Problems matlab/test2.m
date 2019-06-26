names = fieldnames(X_test);
 duibizhi = cell(numel(names),1);
 for i = 1:15
     duibizhi{i} = final(1,2).(names{i});
     duibizhi_end{i}= final(1,2).(names{i})(end,:);
 end
 
% isequal(a,b) 

for i=1:15
    duibizhi_mat=cell2mat(duibizhi(i,1));
    zong=size(duibizhi_mat);
    hang=zong(1,1)-1;
        for j=1:hang
            if isequal(duibizhi_mat(j,:),duibizhi_mat(end,:))
                chaxun(i,j)=1;
            else
                chaxun(i,j)=0;
            end
                
        end
            
    
end
chaxun(16,:)=0;
chaxun(16,:)=sum(chaxun(:,:));


if ismember(15,chaxun(16,:))==1
    zhongzhi=1;
else 
    zhongzhi=0;
end
    
    