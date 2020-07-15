library("jsonlite")
library(dplyr)

re = as.data.frame(fromJSON("nlp.json"))
aa = re$`_source`
part_ofdate = data.frame(id = aa$nid, date = aa$pubdate, cit = aa$citation_count, ref = aa$reference_count)
authors = aa$authors
org = aa$organisations

max_length = max(sapply(authors,length))
nm_filled = as.data.frame(sapply(authors, function(x){
c(x, rep(NA, max_length - length(x)))
}))

colnames(nm_filled) = part_ofdate$id
data_long <- na.omit(gather(hell, id, area, "9328536":"2611563554"))
write.csv(data_lon, file="authors.csv")

gf = data_long %>% group_by(country) %>% summarise(n=n())

new_fr = vv %>% filter(area %in% (gff$area))
gf = gf %>% filter(n %in% (200:7000))
library(plyr)
gf = arrange(gf,desc(n))
god = left_join(part_ofdate, vv)
go = god %>% group_by(area) %>% summarise(Median=median(cit))
topic$rank = topic$n*topic$Median
hist(topic$rank[8:40])
idk = god %>% filter(area %in% (themes$area))
people = author %>% filter(id %in% (idk$id))
per = people %>% group_by(authors) %>% summarise(n=n())
ll = idk %>% group_by(area, authors) %>% summarise(n=n(), mean = mean(cit))
a = ll %>%
group_by(area) %>%
top_n(n = 5, wt = mean)
themes = unique(themes)




