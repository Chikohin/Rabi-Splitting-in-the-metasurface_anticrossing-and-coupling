function [omega_branch_1,omega_branch_2] = RabiSplitting(ModeFreq_1,ModeFreq_2,V_Rabi_Freq)
%% 超表面中模式之间抗交叉耦合Rabi分裂现象计算的说明
% The discription of the anti-crossing phenomena in metasurface (Rabi Splitting)
% (The calculation only supports the coupling between 2 modes)
% Author: cuizijian_harbin@163.com
% Data: 20240521整理
% 如需使用，请引用相关文献：[10.1109/TTHZ.2021.3095440]

% 输入                              % Input
% ModeFreq_1: 模式1的频率向量(Hz)   % Resonance frequency of mode 1; （It should be a vector associated with the variable_vector）
% ModeFreq_2: 模式2的频率向量       % Resonance frequency of mode 2; 
% ModeFreq_1和ModeFreq_2需要以相同长度向量输入/或其中之一为常数
% ModeFreq_1 and ModeFreq_2 should have same length or one of them is a constant
% V_Rabi_Freq: 真空Rabi分裂频率(Hz) % Vacuum field Rabi splitting frequency;

% 输出                                            % Return
% Freq: SSPP共振频率                              % Resonance frequency of the SSPP
% Lattice_Const: 对应的晶格常数                   % The period of units

% 此函数支持两种情况的计算:
% 1. 单一变量研究，即px和py中只存在一个向量，另一个为常数；
% 2. px = py 情况，二者都为向量
% This function supports single-variable research, that is, px and py ...
...have only one vector, and the other is a constant; or px = py.
%% H矩阵本征值计算    
omega_branch_1 =((ModeFreq_1+ModeFreq_2)./2)+(sqrt(4*V_Rabi_Freq^2+(ModeFreq_2-ModeFreq_1).^2)./2);
omega_branch_2 =((ModeFreq_1+ModeFreq_2)./2)-(sqrt(4*V_Rabi_Freq^2+(ModeFreq_2-ModeFreq_1).^2)./2);
end

