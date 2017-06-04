.class public Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryItem;
.super Ljava/lang/Object;
.source "HistoryItem.java"


# static fields
.field private static final DAY_MSEC:J = 0x5265c00L


# instance fields
.field private final mDate:J

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryItem;->mTitle:Ljava/lang/String;

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryItem;->mTitle:Ljava/lang/String;

    iput-wide p2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryItem;->mDate:J

    return-void
.end method


# virtual methods
.method public getDate(Landroid/content/Context;)Ljava/lang/String;
    .locals 10

    iget-wide v6, p0, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryItem;->mDate:J

    const-wide/16 v8, -0x1

    cmp-long v8, v6, v8

    if-nez v8, :cond_0

    const/4 v4, 0x0

    :goto_0
    return-object v4

    :cond_0
    new-instance v8, Lcom/sec/samsung/gallery/util/TimeUtil;

    invoke-direct {v8}, Lcom/sec/samsung/gallery/util/TimeUtil;-><init>()V

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/sec/samsung/gallery/util/TimeUtil;->startOfToday(Z)J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "date_format"

    invoke-static {v8, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v8, "dd-MM-yyyy"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const-string/jumbo v3, "dd/MM"

    :goto_1
    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-direct {v2, v3, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iget-wide v8, p0, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryItem;->mDate:J

    cmp-long v8, v8, v0

    if-ltz v8, :cond_2

    const-wide/32 v8, 0x5265c00

    add-long/2addr v8, v0

    cmp-long v8, v8, v6

    if-lez v8, :cond_2

    const/4 v8, 0x1

    invoke-static {p1, v6, v7, v8}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    const-string/jumbo v3, "MM/dd"

    goto :goto_1

    :cond_2
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryItem;->mTitle:Ljava/lang/String;

    return-object v0
.end method
