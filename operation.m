
%%%%%%%%%%%%%%% OPERATION OF TRIVIUM %%%%%%%%%%%%%%%%%%%%%%%%%%



[A , B ,C]=initial();
% disp('Register A');
% disp(A);
% disp('Register B');
% disp(B);
% disp('Register C');
% disp(C);
K=zeros(1,93);
L=zeros(1,84);
M=zeros(1,111);


for i=1:4*288*2

    %%% XOR Operation of Register A of position 66 and 93
    %%% x1 is also input to register B after XOR operation with other
x1=mod(A(1,66)+A(1,93),2); 
%%% XOR Operation of Register B of position 69 and 94
%%% x2 is also input to register C after XOR operation with other
x2=mod(B(1,69)+B(1,84),2);

%%% XOR operation of Register C of position 66 and 111
%%% x3 is also input to register A after XOR operation with other
x3=mod(C(1,66)+C(1,111),2);

%%% Out of bitstream is only after 1152
if i>(4*288)
z=mod(x1+x2+x3,2);    %%% Output bit stream
disp(z);
end 

%%% t1 is input to 1's bit position of Register B
t1=mod(x1+B(1,78)+bitand(A(1,91),A(1,92)),2);

%%% t2 is input to 1's bit position of Register C
t2=mod(x2+C(1,87)+bitand(B(1,82),B(1,83)),2);

%%% t3 is input to 1's bit position of Register A
t3=mod(x3+A(1,69)+bitand(C(1,109),C(1,110)),2);


%%% Shift of bit position of Register A

%%% shift of Register is first put to K value
for i=1:92
  K(1,i+1)=A(1,i);%% 2nd position of K is assign by 1'st position and so on
  K(1,1)=t3;     %bit position of t3 assign to 1'st position 
end

%%% All temporary assign shift of bits are again assign to A for further 
%%% Operation
for i=1:93
   A(1,i)=K(1,i);  
    
end
% disp('Register A');
% disp(A)
%%% shift of Register is first put to L value
for i=1:83
    
    L(1,i+1)=B(1,i); %% 2nd position of L is assign by 1'st position and so on
    L(1,1)=t1; %bit position of t1 assign to 1'st position 
end

%%% All temporary assign shift of bits are again assign to B for further
%%% Operation
for i=1:84
    B(1,i)=L(1,i);
end
    
%B(1,1)=t1;
% disp('Register B');
% disp(B)



%%% shift of Register is first put to M value
for i=1:110
    
    M(1,i+1)=C(1,i);
    M(1,1)=t2;
end

%%% All temporary assign shift of bits are again assign to C for further
%%% Operation
for i=1:111
    C(1,i)=M(1,i);
    
end
% C(1,1)=t2;
% disp('Register C');
% disp(C)
end





