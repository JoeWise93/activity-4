require(quanteda)
require(quanteda.textmodels)
require(quanteda.textplots)

toks_irish <- tokens(data_corpus_irishbudget2010, remove_punct = TRUE)
dfmat_irish <- dfm(toks_irish)
tmod_wf <- textmodel_wordfish(dfmat_irish, dir = c(6, 5))
summary(tmod_wf)

textplot_scale1d(tmod_wf)

textplot_scale1d(tmod_wf, groups = dfmat_irish$party)

textplot_scale1d(tmod_wf, margin = "features", 
                 highlighted = c("government", "global", "children", 
                                 "bank", "economy", "the", "citizenship",
                                 "productivity", "deficit"))
