function  writeAsTiff(imgdata,filename, name )
    t = Tiff(filename,'w');
    tagstruct.Artist='unknown, transformation to tiff by M. Gravey';
    tagstruct.Copyright='';
    tagstruct.DocumentName=name;
    tagstruct.ImageLength = size(imgdata,1);
    tagstruct.ImageWidth = size(imgdata,2);
    tagstruct.Photometric = Tiff.Photometric.MinIsBlack;
    tagstruct.BitsPerSample = 32;
    tagstruct.SamplesPerPixel = size(imgdata,3);
    tagstruct.RowsPerStrip = 16;
    tagstruct.PlanarConfiguration = Tiff.PlanarConfiguration.Chunky;
    tagstruct.Software = 'MATLAB';
    tagstruct.SampleFormat=Tiff.SampleFormat.IEEEFP;
    tagstruct.ExtraSamples=ones(1,size(imgdata,3)-1)*0;
%    tagstruct % display tagstruct
    setTag(t,tagstruct);
    write(t,single(imgdata));
    close(t);
end

