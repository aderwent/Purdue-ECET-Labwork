clear;
format short eng;

V1=(1+i*0);
V2=(-.3+i*0);
R1=1000;
C2=449.1e-12;
L3=34.04e-3;
R4=2200;
R5=4700;
C6=1.02e-9;


for n=1:10
    f=10000*n;
    
    X2=1/(2*pi*f*C2);
    X3=2*pi*f*L3;
    X6=1/(2*pi*f*C6);
    
    Z1=(R1+i*0);
    Z2=(0-i*X2);
    Z3=(0+i*X3);
    Z4=(R4+i*0);
    Z5=(R5+i*0);
    Z6=(0-i*X6);
    
    Z=[(Z1+Z2+Z3),-Z3,0;-Z3,(Z3+Z4+Z5),-Z5;0,-Z5,(Z5+Z6)]
    E=[V1;0;-V2];
    
    I=mldivide(Z,E);
    
    Vout=(I(1)-I(2))*Z3;
    
    freq(n)=f;
    mag(n)=abs(Vout);
    phase(n)=angle(Vout)*57.3;
end
freqout=freq';
magout=mag';
phaseout=phase';
table=[freqout magout phaseout]