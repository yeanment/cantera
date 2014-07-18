function setState_SV(tp, sv)
% SETSTATE_SV    Set the specific entropy [J/kg/K] and specific
% volume [m3/kg].
%
%    setState_SV(a, sv) sets the specific entropy and specific volume
%    of object a, holding its composition fixed. Argument 'sv' must
%    be a vector of length 2 containing the desired values for the specific
%    entropy (J/kg/K) and specific volume (m3/kg).
%

if sv(1) <= 0.0
    error('The specific entropy must be positive.');
end
if sv(2) <= 0.0
    error('The specific volume must be positive.');
end
thermo_set(tp.tp_id, 22, sv);
