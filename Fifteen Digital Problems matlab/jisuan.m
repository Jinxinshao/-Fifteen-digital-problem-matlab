function [ final ] = jisuan( final )
%JISUAN Summary of this function goes here
%   Detailed explanation goes here
final(1,3).A(end+1,:)=abs(final(1,1).A-final(1,2).A(end,:));
final(1,3).B(end+1,:)=abs(final(1,1).B-final(1,2).B(end,:));
final(1,3).C(end+1,:)=abs(final(1,1).C-final(1,2).C(end,:));
final(1,3).D(end+1,:)=abs(final(1,1).D-final(1,2).D(end,:));
final(1,3).E(end+1,:)=abs(final(1,1).E-final(1,2).E(end,:));
final(1,3).F(end+1,:)=abs(final(1,1).F-final(1,2).F(end,:));
final(1,3).G(end+1,:)=abs(final(1,1).G-final(1,2).G(end,:));
final(1,3).H(end+1,:)=abs(final(1,1).H-final(1,2).H(end,:));
final(1,3).I(end+1,:)=abs(final(1,1).I-final(1,2).I(end,:));
final(1,3).J(end+1,:)=abs(final(1,1).J-final(1,2).J(end,:));
final(1,3).K(end+1,:)=abs(final(1,1).K-final(1,2).K(end,:));
final(1,3).L(end+1,:)=abs(final(1,1).L-final(1,2).L(end,:));
final(1,3).M(end+1,:)=abs(final(1,1).M-final(1,2).M(end,:));
final(1,3).N(end+1,:)=abs(final(1,1).N-final(1,2).N(end,:));
final(1,3).O(end+1,:)=abs(final(1,1).O-final(1,2).O(end,:));


final(1,4).A(end+1)=sum(final(1,3).A(end,:));
final(1,4).B(end+1)=sum(final(1,3).B(end,:));
final(1,4).C(end+1)=sum(final(1,3).C(end,:));
final(1,4).D(end+1)=sum(final(1,3).D(end,:));
final(1,4).E(end+1)=sum(final(1,3).E(end,:));
final(1,4).F(end+1)=sum(final(1,3).F(end,:));
final(1,4).G(end+1)=sum(final(1,3).G(end,:));
final(1,4).H(end+1)=sum(final(1,3).H(end,:));
final(1,4).I(end+1)=sum(final(1,3).I(end,:));
final(1,4).J(end+1)=sum(final(1,3).J(end,:));
final(1,4).K(end+1)=sum(final(1,3).K(end,:));
final(1,4).L(end+1)=sum(final(1,3).L(end,:));
final(1,4).M(end+1)=sum(final(1,3).M(end,:));
final(1,4).N(end+1)=sum(final(1,3).N(end,:));
final(1,4).O(end+1)=sum(final(1,3).O(end,:));






final(1,4).error_all(end+1)=sum(final(1,4).A(end)+final(1,4).B(end)+final(1,4).C(end)+final(1,4).D(end)+final(1,4).E(end)+...
    final(1,4).F(end)+final(1,4).G(end)+final(1,4).H(end)+final(1,4).I(end)+final(1,4).J(end)+final(1,4).K(end)+...
final(1,4).L(end)+final(1,4).M(end)+final(1,4).N(end)+final(1,4).O(end));

size_all=size(final(1,2).error_all);
size_chang=size_all(2);

w=2-0.015*size_chang;%线性变化
% w=rand(1)/2+1;%蒙特卡洛方法

if w<1
    w=1;
end

final(1,2).error_all(end+1)=final(1,1).error_all(end)+(w*final(1,4).error_all(end));%侧重深度优先算法

%（1,1）代数（1,4）误差
%final(1,2).error_all(end+1)=final(1,1).error_all(end)+final(1,4).error_all(end);%标准A星算法
% final(1,2).error_all(end+1)=final(1,4).error_all(end);%纯深度优先

%final(1,2).error_all(end+1)=final(1,1).error_all(end)+(2*final(1,4).error_all(end));%侧重深度优先算法

end


