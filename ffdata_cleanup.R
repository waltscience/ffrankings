# Are fantasy football rankings accurate?
# Chris Walter - chriswalter.info
#
# Data sources - 2019 fantasy football stats: Fantasy pros weekly stats database (Yahoo ownership scoring)
#                accessed on 11-AUG-2020 at https://www.fantasypros.com/nfl/stats/qb.php?ownership=y&range=full
#
#                2019 fantasy football rankings: Fantasy pros weekly Expert Consensus Rankings, scraped from weekly
#                rankings webpages, e.g. https://www.fantasypros.com/2019/09/mike-taglieres-week-1-fantasy-football-rankings-2019/

library(stringr)
files <- list.files(path=".", pattern="*.csv", full.names=TRUE, recursive=FALSE) # list files in folder
for (f in 1:length(files)){                                          # loop to create data frame for weekly fantasy points and rank for each player in each position
  
  if (substr(files[f], 6, 6) == "d") {
    if (substr(files[f], 4, 5) == "01"){
      a <- read.csv(paste(files[f]), header = TRUE)
      d <- a[, c("Player", "Rank", "FPTS")]
      colnames(d) <- c("player", paste("rank", substr(files[f], 4, 5), sep = "_"), paste("fpts", substr(files[f], 4, 5), sep = "_"))
    } else {
      a <- read.csv(paste(files[f]), header = TRUE)
      a1 <- a[, c("Player", "Rank", "FPTS")]
      colnames(a1) <- c("player", paste("rank", substr(files[f], 4, 5), sep = "_"), paste("fpts", substr(files[f], 4, 5), sep = "_"))
      d <- merge(d, a1, by = "player", all = TRUE)
    }
  }
  
  if (substr(files[f], 6, 6) == "k") {
    if (substr(files[f], 4, 5) == "01"){
      a <- read.csv(paste(files[f]), header = TRUE)
      k <- a[, c("Player", "Rank", "FPTS")]
      colnames(k) <- c("player", paste("rank", substr(files[f], 4, 5), sep = "_"), paste("fpts", substr(files[f], 4, 5), sep = "_"))
    } else {
      a <- read.csv(paste(files[f]), header = TRUE)
      a1 <- a[, c("Player", "Rank", "FPTS")]
      colnames(a1) <- c("player", paste("rank", substr(files[f], 4, 5), sep = "_"), paste("fpts", substr(files[f], 4, 5), sep = "_"))
      k <- merge(k, a1, by = "player", all = TRUE)
    }
  }
  
  if (substr(files[f], 6, 6) == "q") {
    if (substr(files[f], 4, 5) == "01"){
      a <- read.csv(paste(files[f]), header = TRUE)
      q <- a[, c("Player", "Rank", "FPTS")]
      colnames(q) <- c("player", paste("rank", substr(files[f], 4, 5), sep = "_"), paste("fpts", substr(files[f], 4, 5), sep = "_"))
    } else {
      a <- read.csv(paste(files[f]), header = TRUE)
      a1 <- a[, c("Player", "Rank", "FPTS")]
      colnames(a1) <- c("player", paste("rank", substr(files[f], 4, 5), sep = "_"), paste("fpts", substr(files[f], 4, 5), sep = "_"))
      q <- merge(q, a1, by = "player", all = TRUE)
    }
  }
  
  if (substr(files[f], 6, 6) == "r") {
    if (substr(files[f], 4, 5) == "01"){
      a <- read.csv(paste(files[f]), header = TRUE)
      r <- a[, c("Player", "Rank", "FPTS")]
      colnames(r) <- c("player", paste("rank", substr(files[f], 4, 5), sep = "_"), paste("fpts", substr(files[f], 4, 5), sep = "_"))
    } else {
      a <- read.csv(paste(files[f]), header = TRUE)
      a1 <- a[, c("Player", "Rank", "FPTS")]
      colnames(a1) <- c("player", paste("rank", substr(files[f], 4, 5), sep = "_"), paste("fpts", substr(files[f], 4, 5), sep = "_"))
      r <- merge(r, a1, by = "player", all = TRUE)
    }
  }
  
  if (substr(files[f], 6, 6) == "t") {
    if (substr(files[f], 4, 5) == "01"){
      a <- read.csv(paste(files[f]), header = TRUE)
      t <- a[, c("Player", "Rank", "FPTS")]
      colnames(t) <- c("player", paste("rank", substr(files[f], 4, 5), sep = "_"), paste("fpts", substr(files[f], 4, 5), sep = "_"))
    } else {
      a <- read.csv(paste(files[f]), header = TRUE)
      a1 <- a[, c("Player", "Rank", "FPTS")]
      colnames(a1) <- c("player", paste("rank", substr(files[f], 4, 5), sep = "_"), paste("fpts", substr(files[f], 4, 5), sep = "_"))
      t <- merge(t, a1, by = "player", all = TRUE)
    }
  }
  
  if (substr(files[f], 6, 6) == "w") {
    if (substr(files[f], 4, 5) == "01"){
      a <- read.csv(paste(files[f]), header = TRUE)
      w <- a[, c("Player", "Rank", "FPTS")]
      colnames(w) <- c("player", paste("rank", substr(files[f], 4, 5), sep = "_"), paste("fpts", substr(files[f], 4, 5), sep = "_"))
    } else {
      a <- read.csv(paste(files[f]), header = TRUE)
      a1 <- a[, c("Player", "Rank", "FPTS")]
      colnames(a1) <- c("player", paste("rank", substr(files[f], 4, 5), sep = "_"), paste("fpts", substr(files[f], 4, 5), sep = "_"))
      w <- merge(w, a1, by = "player", all = TRUE)
    }
  }
  
}

files <- list.files(path=".", pattern="*.csv", full.names=TRUE, recursive=FALSE) # list files in folder
for (f in 1:length(files)){                                          # loop to create data frame for weekly expert consensus ranking for each player in each position 

  if (substr(files[f], 6, 6) == "d") {
    if (substr(files[f], 4, 5) == "01"){
      a <- read.csv(paste(files[f]), header = FALSE)
      a <- a[, c(2, 5)]
      rd <- a[-c(1:3), ]
      colnames(rd) <- c("player", paste("ecr", substr(files[f], 4, 5), sep = "_"))
    } else {
      a <- read.csv(paste(files[f]), header = FALSE)
      a1 <- a[, c(2, 5)]
      a1 <- a1[-c(1:3), ]
      colnames(a1) <- c("player", paste("ecr", substr(files[f], 4, 5), sep = "_"))
      rd <- merge(rd, a1, by = "player", all = TRUE)
    }
  }
  
  if (substr(files[f], 6, 6) == "k") {
    if (substr(files[f], 4, 5) == "01"){
      a <- read.csv(paste(files[f]), header = FALSE)
      a <- a[, c(2, 5)]
      rk <- a[-c(1:3), ]
      colnames(rk) <- c("player", paste("ecr", substr(files[f], 4, 5), sep = "_"))
    } else {
      a <- read.csv(paste(files[f]), header = FALSE)
      a1 <- a[, c(2, 5)]
      a1 <- a1[-c(1:3), ]
      colnames(a1) <- c("player", paste("ecr", substr(files[f], 4, 5), sep = "_"))
      rk <- merge(rk, a1, by = "player", all = TRUE)
    }
  }
  
  if (substr(files[f], 6, 6) == "q") {
    if (substr(files[f], 4, 5) == "01"){
      a <- read.csv(paste(files[f]), header = FALSE)
      a <- a[, c(2, 5)]
      rq <- a[-c(1:3), ]
      colnames(rq) <- c("player", paste("ecr", substr(files[f], 4, 5), sep = "_"))
    } else {
      a <- read.csv(paste(files[f]), header = FALSE)
      a1 <- a[, c(2, 5)]
      a1 <- a1[-c(1:3), ]
      colnames(a1) <- c("player", paste("ecr", substr(files[f], 4, 5), sep = "_"))
      rq <- merge(rq, a1, by = "player", all = TRUE)
    }
  }
  
  if (substr(files[f], 6, 6) == "r") {
    if (substr(files[f], 4, 5) == "01"){
      a <- read.csv(paste(files[f]), header = FALSE)
      a <- a[, c(2, 5)]
      rr <- a[-c(1:3), ]
      colnames(rr) <- c("player", paste("ecr", substr(files[f], 4, 5), sep = "_"))
    } else {
      a <- read.csv(paste(files[f]), header = FALSE)
      a1 <- a[, c(2, 5)]
      a1 <- a1[-c(1:3), ]
      colnames(a1) <- c("player", paste("ecr", substr(files[f], 4, 5), sep = "_"))
      rr <- merge(rr, a1, by = "player", all = TRUE)
    }
  }
  
  if (substr(files[f], 6, 6) == "t") {
    if (substr(files[f], 4, 5) == "01"){
      a <- read.csv(paste(files[f]), header = FALSE)
      a <- a[, c(2, 5)]
      rt <- a[-c(1:3), ]
      colnames(rt) <- c("player", paste("ecr", substr(files[f], 4, 5), sep = "_"))
    } else {
      a <- read.csv(paste(files[f]), header = FALSE)
      a1 <- a[, c(2, 5)]
      a1 <- a1[-c(1:3), ]
      colnames(a1) <- c("player", paste("ecr", substr(files[f], 4, 5), sep = "_"))
      rt <- merge(rt, a1, by = "player", all = TRUE)
    }
  }
  
  if (substr(files[f], 6, 6) == "w") {
    if (substr(files[f], 4, 5) == "01"){
      a <- read.csv(paste(files[f]), header = FALSE)
      a <- a[, c(2, 5)]
      rw <- a[-c(1:3), ]
      colnames(rw) <- c("player", paste("ecr", substr(files[f], 4, 5), sep = "_"))
    } else {
      a <- read.csv(paste(files[f]), header = FALSE)
      a1 <- a[, c(2, 5)]
      a1 <- a1[-c(1:3), ]
      colnames(a1) <- c("player", paste("ecr", substr(files[f], 4, 5), sep = "_"))
      rw <- merge(rw, a1, by = "player", all = TRUE)
    }
  }
  
}

frms <- list(d = d, k = k, q = q, r = r, t = t, w = w, rd = rd, rk = rk, rq = rq, rr = rr, rt = rt, rw = rw)
  for(i in names(frms)){
    write.csv(frms[[i]], paste0(i,".csv"), row.names = FALSE)
  }

d <- read.csv("d.csv")
rd <- read.csv("rd.csv")
df <- merge(d, rd, all = TRUE)
write.csv(df, "defense.csv", row.names = FALSE)

k <- read.csv("k.csv")
rk <- read.csv("rk.csv")
dk <- merge(k, rk, all = TRUE)
write.csv(dk, "kickers.csv", row.names = FALSE)

q <- read.csv("q.csv")
rq <- read.csv("rq.csv")
dq <- merge(q, rq, all = TRUE)
write.csv(dq, "qbs.csv", row.names = FALSE)

r <- read.csv("r.csv")
rr <- read.csv("rr.csv")
rr <- merge(r, rr, all = TRUE)
write.csv(rr, "rbs.csv", row.names = FALSE)

t <- read.csv("t.csv")
rt <- read.csv("rt.csv")
rt <- merge(t, rt, all = TRUE)
write.csv(rt, "tes.csv", row.names = FALSE)

w <- read.csv("w.csv")
rw <- read.csv("rw.csv")
rw <- merge(w, rw, all = TRUE)
write.csv(rw, "wrs.csv", row.names = FALSE)

d <- read.csv("defense.csv", header = TRUE)
d <- d[ , order(names(d))]
d <- data.frame(d[35], stack(d[1:17]), stack(d[18:34]), stack(d[36:52]))
colnames(d) <- c("player", "ecr", "ecrwk", "fpts", "fptswk", "rank", "rankwk")
d <- d[complete.cases(d), ]
k <- read.csv("kick.csv", header = TRUE)
k <- k[ , order(names(k))]
k <- data.frame(k[31], stack(k[1:15]), stack(k[16:30]), stack(k[32:46]))
colnames(k) <- c("player", "ecr", "ecrwk", "fpts", "fptswk", "rank", "rankwk")
k <- k[complete.cases(k), ]
q <- read.csv("qb.csv", header = TRUE)
q <- q[ , order(names(q))]
q <- data.frame(q[35], stack(q[1:17]), stack(q[18:34]), stack(q[36:52]))
colnames(q) <- c("player", "ecr", "ecrwk", "fpts", "fptswk", "rank", "rankwk")
q <- q[complete.cases(q), ]
r <- read.csv("rb.csv", header = TRUE)
r <- r[ , order(names(r))]
r <- data.frame(r[35], stack(r[1:17]), stack(r[18:34]), stack(r[36:52]))
colnames(r) <- c("player", "ecr", "ecrwk", "fpts", "fptswk", "rank", "rankwk")
r <- r[complete.cases(r), ]
t <- read.csv("te.csv", header = TRUE)
t <- t[ , order(names(t))]
t <- data.frame(t[35], stack(t[1:17]), stack(t[18:34]), stack(t[36:52]))
colnames(t) <- c("player", "ecr", "ecrwk", "fpts", "fptswk", "rank", "rankwk")
t <- t[complete.cases(t), ]
w <- read.csv("wr.csv", header = TRUE)
w <- w[ , order(names(w))]
w <- data.frame(w[35], stack(w[1:17]), stack(w[18:34]), stack(w[36:52]))
colnames(w) <- c("player", "ecr", "ecrwk", "fpts", "fptswk", "rank", "rankwk")
w <- w[complete.cases(w), ]

write.csv(d, "d.csv", row.names = FALSE)
write.csv(k, "k.csv", row.names = FALSE)
write.csv(q, "q.csv", row.names = FALSE)
write.csv(r, "r.csv", row.names = FALSE)
write.csv(t, "t.csv", row.names = FALSE)
write.csv(w, "w.csv", row.names = FALSE)

library(stringr)
d <- read.csv("defense.csv", header = TRUE)
d <- d[ , order(names(d))]
d <- data.frame(d[35], stack(d[1:17]), stack(d[18:34]))
d <- d[complete.cases(d), ]
k <- read.csv("kick.csv", header = TRUE)
k <- k[ , order(names(k))]
k <- data.frame(k[31], stack(k[1:15]), stack(k[16:30]))
k <- k[complete.cases(k), ]
q <- read.csv("qb.csv", header = TRUE)
q <- q[ , order(names(q))]
q <- data.frame(q[35], stack(q[1:17]), stack(q[18:34]))
q <- q[complete.cases(q), ]
r <- read.csv("rb.csv", header = TRUE)
r <- r[ , order(names(r))]
r <- data.frame(r[35], stack(r[1:17]), stack(r[18:34]))
r <- r[complete.cases(r), ]
t <- read.csv("te.csv", header = TRUE)
t <- t[ , order(names(t))]
t <- data.frame(t[35], stack(t[1:17]), stack(t[18:34]))
t <- t[complete.cases(t), ]
w <- read.csv("wr.csv", header = TRUE)
w <- w[ , order(names(w))]
w <- data.frame(w[35], stack(w[1:17]), stack(w[18:34]))
w <- w[complete.cases(w), ]

