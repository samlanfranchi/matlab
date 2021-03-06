function [params, values, descs, iargs] = genmcode(h, d)
%GENMCODE Generate M-code that designs a lowpass filter using GREMEZ

%   Author(s): J. Schickler
%   Copyright 1988-2003 The MathWorks, Inc.
%   $Revision: 1.1.6.2 $  $Date: 2004/04/13 00:05:33 $

mu = get(d, 'magUnits'); set(d, 'magUnits', 'linear');

params = {'Fpass1', 'Fstop1', 'Fstop2', 'Fpass2', 'Dpass1', 'Dstop'};
values = {getmcode(d, 'Fstop1'), getmcode(d, 'Fpass1'), getmcode(d, 'Fpass2'), ...
        getmcode(d, 'Fstop2'), getmcode(d, 'Dpass1'), getmcode(d, 'Dstop')};
descs  = {'', '', '', '', '', ''};

set(d, 'magUnits', mu);

[fsstr, fs] = getfsstr(d);

iargs = sprintf('[0 Fpass1 Fstop1 Fstop2 Fpass2 %s]%s, %s, %s', ...
    fs, fsstr, '[1 1 0 0 1 1]', '[Dpass1 Dstop 1]');

% [EOF]
