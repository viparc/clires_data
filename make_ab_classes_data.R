ab <- list(
  Penecillins = c("amoxicillin_use", "ampicillin_use"),
  Cephalosporins = c("cefadroxil_use", "cefotaxime_use", "cephalexin_use", "ceftiofur_use"),
  Polypeptides = c("colistin_use", "enramycin_use"),
  Quinolones = c("enrofloxacin_use", "flumequine_use", "norfloxacin_use", "ciprofloxacin_use", "marbofloxacin_use"),
  Amphenicols = c("florfenicol_use", "thiamphenicol_use", "chloramphenicol_use"),
  Aminolycosides = c("neomycin_use", "gentamicin_use", "streptomycin_use", "spectinomycin_use", "apramycin_use", "josamycin_use"),
  Tetracyclines = c("oxytetracycline_use", "doxycycline_use", "tetracycline_use"),
  Sulfonamides = c("sulfachloropyridazine_use", "sulfadiazine_use", "sulfadimethoxine_use", "sulfadimidine_use", "sulfaguanidin_use", "sulfamethazine_use", "sulfamethoxazole_use", "sulfamethoxypyridazine_use", "sulphamethoxazole_use", "sulphathiazole_use"),
  Macrolides = c("tylosin_use", "tilmicosin_use", "erythromycin_use", "spiramycin_use", "kitasamycin_use"),
  Lincosamides = "lincomycin_use",
  Unclassify = "methenamine_use",
  Pleuromutilins = "tiamulin_use",
  Diaminopyrimidines = "trimethoprim_use"
)

antimicrobials_classes <- data.frame(antimicrobial = sub("_use$", "", unlist(ab)), class = rep(tolower(names(ab)), sapply(ab, length)))
rownames(antimicrobials_classes) <- NULL
write.csv(antimicrobials_classes, "data/antimicrobial_classes.csv", FALSE, row.names = FALSE)

