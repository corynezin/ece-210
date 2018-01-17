function viewImage (I, varargin)
    nvarargin = length(varargin);
    if mod(nvarargin,2)
        error('Arguments not in pairs.')
    end
    for n = 1:2:nvarargin
        if ~strcmp(varargin{n},'zoom') &&...
           ~strcmp(varargin{n},'rotate') &&...
           ~strcmp(varargin{n},'tilt')
        error('Name not valid.')
        end
    end
    for n = 2:2:nvarargin
        if ~isnumeric(varargin{n})
            error('Value is not numeric')
        end
    end
