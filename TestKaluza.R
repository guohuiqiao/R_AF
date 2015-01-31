library(flowCore)
library(lattice)
library(flowViz)
library(XML)

##################################################

# linear transform and compare
colnames(frA) <- colnames(frB)
linTrans <- linearTransform(transformationId = "Linear-transformation",a=1/1024,b=0)
logicleTrans_CD10 <-logicleTransform(w= 0.153768033897724,t = 1024,m= 4.5) # FL2
logicleTrans_CD45 <-logicleTransform(w= 0.23319994071439126,t = 1024,m= 4.5) # FL10
frB_L <- transform(frB,`FS-A`=linTrans(`FS-A`),`SS-A`=linTrans(`SS-A`))
flA_T <- transform(flA,`FL2-A` = logicleTrans_CD10(`FL2-A`),`FL10-A` = logicleTrans_CD45(`FL10-A`))

# Comparte the linear result
# xyplot(`SS-A`~ `FS-A`,frB_L,smooth = FALSE,main = "d15_partB_truncted",margin = FALSE)
########################################################################################
# compare the FL channels





#############################################
# read the XML part

#to.read = file("CT2804.d15.analysis", "rb")
#val <- readLines(to.read, n = -1, skipNul = TRUE,warn = FALSE)

#idx <- regexpr("<\\?xml.*><Analysis.*</Analysis>",val,perl=TRUE)
#XML_result <- regmatches(val,idx)

#print(XML_result)

# convert to XML object
#XMLFlag <- isXMLString(XML_result)
#doc <- xmlParse(XML_result)
#saveXML(doc,"kaluza.xml")

#els = getNodeSet(doc, "//Analysis//Worklist7//@*")
#sapply(els, function(el) xmlGetAttr/(el, "status")

