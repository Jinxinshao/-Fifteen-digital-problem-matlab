%test=open(guzhi_index).field;

huatu=zuizhong(2);
%huatu.A;
size_all=size(zuizhong(2).error_all);
tushu=size_all(2);
bushu=tushu-1;


keshihua=zeros(4,4,tushu);



for xunhuan=1:tushu
    
    a=huatu.A(xunhuan,:);
    a(end+1)=xunhuan;
keshihua(a(1),a(2),a(3))=1;
    
    b=huatu.B(xunhuan,:);
    b(end+1)=xunhuan;
keshihua(b(1),b(2),b(3))=2;

    c=huatu.C(xunhuan,:);
    c(end+1)=xunhuan;
keshihua(c(1),c(2),c(3))=3;
% 
    d=huatu.D(xunhuan,:);
    d(end+1)=xunhuan;
 keshihua(d(1),d(2),d(3))=4;

     e=huatu.E(xunhuan,:);
    e(end+1)=xunhuan;
 
keshihua(e(1),e(2),e(3))=5;

    f=huatu.F(xunhuan,:);
    f(end+1)=xunhuan;

keshihua(f(1),f(2),f(3))=6;

    g=huatu.G(xunhuan,:);
    g(end+1)=xunhuan;

keshihua(g(1),g(2),g(3))=7;

    h=huatu.H(xunhuan,:);
    h(end+1)=xunhuan;

keshihua(h(1),h(2),h(3))=8;

    i=huatu.I(xunhuan,:);
    i(end+1)=xunhuan;

 keshihua(i(1),i(2),i(3))=9;
    j=huatu.J(xunhuan,:);
    j(end+1)=xunhuan;
 
keshihua(j(1),j(2),j(3))=10;

    k=huatu.K(xunhuan,:);
    k(end+1)=xunhuan;

keshihua(k(1),k(2),k(3))=11;
    
l=huatu.L(xunhuan,:);
 l(end+1)=xunhuan; 

keshihua(l(1),l(2),l(3))=12;
    m=huatu.M(xunhuan,:);
    m(end+1)=xunhuan;

keshihua(m(1),m(2),m(3))=13;
    n=huatu.N(xunhuan,:);
    n(end+1)=xunhuan; 

keshihua(n(1),n(2),n(3))=14;


    o=huatu.O(xunhuan,:);
    o(end+1)=xunhuan; 

 keshihua(o(1),o(2),o(3))=15;
 
     x=huatu.X(xunhuan,:);
    x(end+1)=xunhuan;

keshihua(x(1),x(2),x(3))=NaN;


end