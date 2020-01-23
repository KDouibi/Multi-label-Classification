"""
Created on Thu Jan 23 10:01:36 2020
Multi-label statistics Matlab

@author: khalida Douibi
"""

clear all
close all
clc

base=load('Dataset.dat');
[n, m]= size(base);
nbr_label=6;
nbr_instance=n;

base_labels=base(:,(end-m)+1);
Label_cardinality_fin=[];
labelsets_dec2=[];
for i=1:n
    for j=1:6
    Label_cardinality=(sum(base(i,((m-nbr_label)+1):end)));
    
    labelsets_dec=bin2dec(sprintf('%d',base(i,((m-nbr_label)+1):end)));
    
    end
 Label_cardinality_fin=[Label_cardinality_fin,Label_cardinality];
 labelsets_dec2=[labelsets_dec2;labelsets_dec];
end
LC=sum(Label_cardinality_fin)/n %label cardinality

Label_density=LC/nbr_label

Diversity=nbr_label

Distinct_Labelsets=size(unique(labelsets_dec2),1)