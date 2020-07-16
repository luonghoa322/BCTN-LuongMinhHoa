function [ kq ] = rmse( y1,yhat )
kq = sqrt(mean((y1 - yhat).^2));
end

