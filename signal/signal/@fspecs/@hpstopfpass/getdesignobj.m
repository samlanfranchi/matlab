function designobj = getdesignobj(this, str)
%GETDESIGNOBJ   Get the designobj.

%   Author(s): J. Schickler
%   Copyright 1988-2005 The MathWorks, Inc.
%   $Revision: 1.1.6.3 $  $Date: 2005/12/22 19:03:05 $

if isfdtbxinstalled
    %#function fdfmethod.eqriphpfpass
    designobj.equiripple = 'fdfmethod.eqriphpfpass';
else
    designobj = [];
end

if nargin > 1
    designobj = designobj.(str);
end

% [EOF]
