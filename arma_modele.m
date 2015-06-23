
z = iddata(Wyjscie.Data(1:1500), Wejscie.Data(1:1500), 0.0001);
na = 1:10; nc = 1:10;%% nk = 0:2;
models = cell(1,100);
ct = 1;
for i = 1:10
 na_ = na(i);
%% nb_ = na_;
 for j = 1:10
  nc_ = nc(j);
 %% for k = 1:3
 %%  nk_ = nk(k);
   models{ct} = armax(z, [na_ 0 nc_ 1]);
   ct = ct+1;
 %% end
 end
end

models = stack(1,models{:});
compare(z,models);