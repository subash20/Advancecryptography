%%%%%%%%%%%%%%% MASTER IN INFORMATION TECHNOLOGY%%%%%%%%%%%%%%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%% ADVANCE CYRPTOGRAPHY %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%% PROJECT ON TRIVIUM %%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%% PREPARED BY : SUBASH DAWADI %%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%% MATRICULATION NO : 926382 %%%%%%%%%%%%%%%%%%%%%%

function [A,B,C]= initial()

clc
clear all
close all 
n=80;
A=zeros(1,93);   %% Register A of length 93 all assign to zero at first
B=zeros(1,84);   %% Register B of length 84 all assign to zero at first
C=zeros(1,111);   %% Register C of length 111 all assign to zero at first
k=zeros(1,80) ;  

k=randi([0,1],[1,80]) %%% Initial Key set up by random number generator

for i=1:80
    A(1,i)=k(1,i);   %%%% assign of first 80 bit of Register A 
                      %%%% to Initial key 
    
end

%%%%Initialization vectors

v=zeros(1,80);
v=randi([0,1],[1,80]); %%%%% Initialization Vector setup by random number 
                        %%%% generator

%%%% First 80 bit of Register B is assigned to Initialization Vector
for i=1:80
     B(1,i)=v(1,i);  
end

 %%%%%% Register C of bit position 109,110,111 are set to value 1 
for i=1:3
    C(1,i+108)=1;
    
end
disp('Register A');
disp(A);
disp('Register B');
disp(B);
disp('Register C');
disp(C);
end 