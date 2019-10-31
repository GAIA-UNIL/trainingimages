function [grid,x,y,z,nbvar,namevar]=LoadGrid(filename)

% See DS user guide for functions documentation

% Written by Gregoire Mariethoz, 2010

fid=fopen(filename,'r');
if fid==-1
    disp('cannot open file')
    fclose(fid);
    return
end
x=fscanf(fid,'%i',1);
y=fscanf(fid,'%i',1);
z=fscanf(fid,'%i',1);
nbvar=fscanf(fid,'%i',1);
namevar='';
for i=1:nbvar
    namevar=[namevar,{fscanf(fid,'%s',1)}];
end
grid=fscanf(fid,'%f',x*y*z*nbvar);
grid=reshape(grid,nbvar,x*y*z)';
grid=reshape(grid,x,y,z,nbvar);
%grid=YXZ2XYZ(grid);

fclose(fid);