%tic
final=struct('A',{[1,4],[1,3], [],[]},'B',{[2,4],[2,1], [],[]},'C',{[3,4],[2,3], [],[]},'D',{[4,4],[3,4], [],[]},'E',{[1,3],[2,2], [],[]},...
'F',{[2,3],[4,2], [],[]},'G',{[3,3],[1,2], [],[]},'H',{[4,3],[3,2], [],[]},'I',{[1,2],[2,4], [],[]},'J',{[2,2],[3,1], [],[]},...
'K',{[3,2],[1,4], [],[]},'L',{[4,2],[4,3], [],[]},'M',{[1,1],[1,1], [],[]},'N',{[2,1],[4,1], [],[]},'O',{[3,1],[4,4], [],[]},'X',{[4,1],[3,3], [],[]},'error_all',{0,[],[],[]});
%扩充方法：final(1,1).A(end+1,:)=[2,3]
%copy 方法：
% for fn = fieldnames(B)'
%    A.(fn{1}) = B.(fn{1});
% end

% [S.field] = deal(X) sets all the fields with the name field in the structure array S to the value X.
%If S doesn't exist, use [S(1:m).field] = deal(X). 
% [X{:}] = deal(A.field) copies the values of the field with name field to the cell array X.
%If X doesn't exist, use [X{1:m}] = deal(A.field). 
% [Y1, Y2, Y3, ...] = deal(X{:}) copies the contents of the cell array X to the separate variables Y1, Y2, Y3, ... 
% [Y1, Y2, Y3, ...] = deal(S.field) copies the contents of the fields with the name field to separate variables Y1, Y2, Y3, ...


% final(1,1).A(end+1,:)=[2,3]
% [S(:).field] = deal(final)
% [S(end+1).field] = deal(final)
% size(S)


final=jisuan(final);
%初始化部分



% [zhongzhi_flag,bukexing_flag,final]=xiayi(final);
% [a,b,final]=zuoyi( final );
% 
% [g,h,final]=shangyi(final);
% [c,d,final]=youyi( final );
% [q,w,final]=xiayi(final);
%  
% [r,t,final]=zuoyi( final );



%chongfu  = chongfu( final );
% [e,f,final]=xiayi(final);
% [c,d,final]=youyi( final );
% [g,h,final]=shangyi(final);
% clearvars variables
% clearvars -except keepVariables
% clearvars variables -except keepVariables

%ismember(A,B,'rows')
% 
% B=[1,1;1,2;1,3;1,4;2,1;2,2;2,3;2,4;3,1;3,2;3,3;3,4;4,1;4,2;4,3;4,4]
% panduan=[final(1,2).X(1,1)+1,final(1,2).X(1,2)];
% S = RMFIELD(S,FIELDS) 

%设计open close表
 %zhongjian=final；
 %[S(6).field] = deal(final);
  %[S(:).field] = deal(final);

 
% S(2)=[]；
zhongjian=final;
[open(1).field]=deal(final);
%初始化过程


 [ flag_zhaodao,zuizhong,guzhi_index,zhongjian ] = kuozhanpanduan( open );
 
 zhongjian1=zhongjian;
 zhongjian2=zhongjian;
 zhongjian3=zhongjian;
 zhongjian4=zhongjian;
 
 
 while flag_zhaodao~=1
     
     for shi_i=1:1
     
     [zhongzhi_flag,bukexing_flag,zhongjian1]=xiayi(zhongjian1);
     if zhongzhi_flag==1
         open(guzhi_index)=[];
         break
     end
     if bukexing_flag==0
       %open(end+1)=zhongjian1;
       [open(end+1).field]=deal(zhongjian1);
     end
     
          [zhongzhi_flag,bukexing_flag,zhongjian2]=zuoyi(zhongjian2);
     if zhongzhi_flag==1
         open(guzhi_index)=[];
         break
     end
     if bukexing_flag==0
       %open(end+1)=zhongjian2;
       [open(end+1).field]=deal(zhongjian2);
     end
     
          [zhongzhi_flag,bukexing_flag,zhongjian3]=shangyi(zhongjian3);
     if zhongzhi_flag==1
         open(guzhi_index)=[];
         break
     end
     if bukexing_flag==0
       %open(end+1)=zhongjian3;
       [open(end+1).field]=deal(zhongjian3);
     end
     
    [zhongzhi_flag,bukexing_flag,zhongjian4]=youyi(zhongjian4);
     if zhongzhi_flag==1
         open(guzhi_index)=[];
         break
     end
     if bukexing_flag==0
       %open(end+1)=zhongjian4;
       [open(end+1).field]=deal(zhongjian4);
     end
     
    
     
     open(guzhi_index)=[];
     
     end
      
     
 [ flag_zhaodao,zuizhong,guzhi_index,zhongjian ] = kuozhanpanduan( open );
 
 zhongjian1=zhongjian;
 zhongjian2=zhongjian;
 zhongjian3=zhongjian;
 zhongjian4=zhongjian;
 if flag_zhaodao==1
     break
 end
 

% [a,b,final]=zuoyi( final );
% 
% [g,h,final]=shangyi(final);
% [c,d,final]=youyi( final );
     
     
     
     
 end
 
 % %dbstop if error%控制台调试程序
 %toc
 






