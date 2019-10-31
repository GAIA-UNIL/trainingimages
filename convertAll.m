%               source        destination    formel name normalisation factor
dataToConvert={'ti_pierres.SGEMS','stone.tiff','Stone',1/255.;
               'TI_ellipses.SGEMS','ellipses.tiff','Ellipses',1.;
               'TI_lines_arrows.SGEMS','lines_arrows.tiff','Linesa Arrows',1/255.;
               'damier500x500.SGEMS','damier.tiff','Damier',1.;
               'damier50x50x50.SGEMS','Damier3D.tiff','Damier3D',1.;
               'dunes_3facies.SGEMS','dunes.tiff','Dunes',1.;
               'gaussianTI.SGEMS','gaussianTI.tiff','GaussianTI',1.;
               'ohau.SGEMS','ohau.tiff','Ohau',1.;
               'ti_2D_channels_400x340.SGEMS','2D_Channels.tiff','2D Channels',1/128.;
               'ti_continuous_Zinn_40x50x5.SGEMS','zinn.tiff','Zinn',1.;
               'ti_dunes_gobi_cont_1150x650.SGEMS','dunes_gobi.tiff','Dunes Gobi',1.;
               'ti_lines_small.SGEMS','lines_small.tiff','Lines Small',1.;
               'ti_meandres_500x500.SGEMS','meandres.tiff','Meandres',1.;
               'ti_mud_cracks.SGEMS','mud_cracks.tiff','',1/255.;
%                'ti_pierres.SGEMS','stone.tiff','Stone',1/255.;
%                'ti_pierres.SGEMS','stone.tiff','Stone',1/255.;
%                'ti_pierres.SGEMS','stone.tiff','Stone',1/255.;
%                'ti_pierres.SGEMS','stone.tiff','Stone',1/255.;
%                'ti_pierres.SGEMS','stone.tiff','Stone',1/255.;
%                'ti_pierres.SGEMS','stone.tiff','Stone',1/255.;
}

for i=1:size(dataToConvert,1)
    writeAsTiff(permute(LoadGrid(dataToConvert{i,1}),[2,1,3:10000])*dataToConvert{i,4},fullfile('tiff/',dataToConvert{i,2}),dataToConvert{i,3}); 
end


writeAsTiff(permute(mean(imread('strebelle.jpg'),3),[2,1])/255.,fullfile('tiff/','strebelle.tiff'),'Strebelle channel'); 
