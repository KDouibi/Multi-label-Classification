# -*- coding: utf-8 -*-
"""
Created on Wed Jan 22 10:16:56 2020
Multi-label datasets statistics Python
@author: khalida Douibi
"""

def MLstatistics(D,Nlabels):
    n,m=D.shape    
    labels=D[:,m-Nlabels:]  
    Label_cardinality=sum(sum(labels))/n
    Label_density=Label_cardinality/Nlabels
    Diversity=Nlabels   
# ====================To fix in python ...=======================================
#     Distinct_Labelsets=size(unique(labelsets_dec2),1)
#     labelsets_dec=bin2dec(sprintf('%d',base(i,((m-nbr_label)+1):end)));
# =============================================================================   
    return Label_cardinality, Label_density, Diversity



