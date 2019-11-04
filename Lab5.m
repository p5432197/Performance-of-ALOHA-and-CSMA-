clc;
clear;
G = linspace(0,10);
a=0.2;
PURE_ALOHA = G.*exp(-2*G);
plot(G, PURE_ALOHA, 'b-'); % 描繪二維座標，b：藍色，-實線
SLOTTED_ALOHA = G.*exp(-1*G);
hold on;
plot(G, SLOTTED_ALOHA, 'r-'); % 新增，描繪二維座標，r：紅色，：虛線
UNSLOTTED_NONPERSISTENT_CSMA = G.*exp(-a.*G)./((G*(1+2*a))+exp(-a.*G));
hold on
plot(G, UNSLOTTED_NONPERSISTENT_CSMA, 'g-')
SLOTTED_NONPERSISTENT_CSMA = a*G.*exp(-a.*G)./(1+a-exp(-a.*G));
hold on
plot(G, SLOTTED_NONPERSISTENT_CSMA, 'm-')
UNSLOTTED_1PERSISTENT_CSMA = G.*(1+G+a*G.*(1+G+a*G/2)).*exp(-1*G*(1+2*a))./(G*(1+2*a)-(1-exp(-1*a.*G))+(1+a*G).*exp(-(1+a).*G));
hold on 
plot(G, UNSLOTTED_1PERSISTENT_CSMA, 'k-')
SLOTTED_1PERSISTENT_CSMA = G.*(1+a-exp(-1*a*G)).*exp(-1*(1+a)*G)./((1+a).*(1-exp(-1*a*G))+a*exp(-1*a*G));
plot(G, SLOTTED_1PERSISTENT_CSMA, 'c-')
grid
legend('Pure ALOHA', 'Slotted ALOHA','Unslotted nonpersistent CSMA','Slotted nonpersistent CSMA','Unslotted 1-persistent CSMA','Slotted 1-persistent CSMA'); % 顯示圖示說明