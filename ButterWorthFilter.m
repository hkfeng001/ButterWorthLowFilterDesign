fs=1000;%����Ƶ��
Wp=100/(fs/2);Ws=400/(fs/2);%����ͨ���������ֹƵ��
ap=3;as=50;%��λΪdB,
[N,Wn]=buttord(Wp,Ws,ap,as);%ȷ���˲����������һ����ֹƵ��
[B,A]=butter(N,Wn,'s');%B,AΪ���ݺ����ķ������ĸ
G=tf(B,A)
W=logspace(-2,1);
%bode(G,W);
% hold on;
[mag,pha]=bode(G,W);
dsys=c2d(G,1/fs,'tustin')
%dbode(B,A,1/fs,W)
bode(dsys,W)
% [D,C]=bilinear(B,A,fs);%����������Ӧ���䷨ D��CΪ���ݺ�����ɢ����ķ������ĸ
 
% Hz=freqs(D,C,W);
% subplot(2,1,2);
% plot(W/pi,abs(Hz)/abs(Hz(1)));
% grid on ;title('������˹�����˲���');
% xlabel('Frequency/Hz');ylabel('Mannitude');


%fc = 300;
%fs = 1000;
%[b,a] = butter(6,fc/(fs/2));
%freqz(b,a,[],fs)



