function [omega_branch_1,omega_branch_2] = RabiSplitting(ModeFreq_1,ModeFreq_2,V_Rabi_Freq)
%% ��������ģʽ֮�俹�������Rabi������������˵��
% The discription of the anti-crossing phenomena in metasurface (Rabi Splitting)
% (The calculation only supports the coupling between 2 modes)
% Author: cuizijian_harbin@163.com
% Data: 20240521����
% ����ʹ�ã�������������ף�[10.1109/TTHZ.2021.3095440]

% ����                              % Input
% ModeFreq_1: ģʽ1��Ƶ������(Hz)   % Resonance frequency of mode 1; ��It should be a vector associated with the variable_vector��
% ModeFreq_2: ģʽ2��Ƶ������       % Resonance frequency of mode 2; 
% ModeFreq_1��ModeFreq_2��Ҫ����ͬ������������/������֮һΪ����
% ModeFreq_1 and ModeFreq_2 should have same length or one of them is a constant
% V_Rabi_Freq: ���Rabi����Ƶ��(Hz) % Vacuum field Rabi splitting frequency;

% ���                                            % Return
% Freq: SSPP����Ƶ��                              % Resonance frequency of the SSPP
% Lattice_Const: ��Ӧ�ľ�����                   % The period of units

% �˺���֧����������ļ���:
% 1. ��һ�����о�����px��py��ֻ����һ����������һ��Ϊ������
% 2. px = py ��������߶�Ϊ����
% This function supports single-variable research, that is, px and py ...
...have only one vector, and the other is a constant; or px = py.
%% H������ֵ����    
omega_branch_1 =((ModeFreq_1+ModeFreq_2)./2)+(sqrt(4*V_Rabi_Freq^2+(ModeFreq_2-ModeFreq_1).^2)./2);
omega_branch_2 =((ModeFreq_1+ModeFreq_2)./2)-(sqrt(4*V_Rabi_Freq^2+(ModeFreq_2-ModeFreq_1).^2)./2);
end

