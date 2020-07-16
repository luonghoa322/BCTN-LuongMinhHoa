function [d,sstbbpkc,WW ] = LMS( X,y,mu )
WW= [0 0 0 0 0 0 0]';
for k = 1:length(y)
    tg=X(:,k);
    yhat(1,k)=tg'*WW;
    d(1,k)=y(1,k) - yhat(1,k) ;
    WW = WW + 2*mu*d(1,k)*tg;
end;
L=20;
for k=1:(length(y)-L-1)
    for m=1:L
        y1(1,m)=y(1,k+m);
        ymu(1,m)=yhat(1,k+m);
    end;
    sstbbpkc(k)=rmse( y1,ymu);
end;
end

