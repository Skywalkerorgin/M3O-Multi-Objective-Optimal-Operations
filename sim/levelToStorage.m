function s = levelToStorage(h)
% LEVELTOSTORAGE convert the water level [cm] to lake storage [m3] assuming
%                a cylindrical lake.
%
% v = LEVELTOSTORAGE(s)
%
% Output:
%       s - water storage. ([m3])
% 
% Input:
%       h - water level. ([cm])
%
% See also STORAGETOLEVEL

% Copyright 2016 NRM group - Politecnico di Milano
%
% This file is part of Multi-Objective Optimal Operation (M3O) toolbox
%
% Multi-Objective Optimal Operation toolbox is free software: you can
% redistribute it and/or modify it under the terms of the GNU General
% Public License as published by the Free Software Foundation, either
% version 3 of the License, or (at your option) any later version.
% 
% Multi-Objective Optimal Operation (M3O) toolbox  is distributed in the
% hope that it will be useful, but WITHOUT ANY WARRANTY; without even the
% implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
% See the GNU General Public License for more details.
% 
% You should have received a copy of the GNU General Public License along
% with Multi-Objective Optimal Operation. If not, see
% http://www.gnu.org/licenses/



global sys_param;

A  = sys_param.simulation.A;
h0 = sys_param.simulation.h0;

s = A*(h - h0);