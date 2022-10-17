fs=1000;%采样频率
Wp=100/(fs/2);Ws=400/(fs/2);%设置通带、阻带截止频率
ap=3;as=50;%单位为dB,
[N,Wn]=buttord(Wp,Ws,ap,as);%确定滤波器阶数与归一化截止频率
[B,A]=butter(N,Wn,'s');%B,A为传递函数的分子与分母
G=tf(B,A)
W=logspace(-2,1);
%bode(G,W);
% hold on;
[mag,pha]=bode(G,W);
dsys=c2d(G,1/fs,'tustin')
%dbode(B,A,1/fs,W)
bode(dsys,W)
% [D,C]=bilinear(B,A,fs);%调用脉冲响应不变法 D，C为传递函数离散化后的分子与分母
 
% Hz=freqs(D,C,W);
% subplot(2,1,2);
% plot(W/pi,abs(Hz)/abs(Hz(1)));
% grid on ;title('巴特沃斯数字滤波器');
% xlabel('Frequency/Hz');ylabel('Mannitude');


%fc = 300;
%fs = 1000;
%[b,a] = butter(6,fc/(fs/2));
%freqz(b,a,[],fs)



