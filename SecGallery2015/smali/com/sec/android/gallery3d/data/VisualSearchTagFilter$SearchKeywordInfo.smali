.class public Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;
.super Ljava/lang/Object;
.source "VisualSearchTagFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/data/VisualSearchTagFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SearchKeywordInfo"
.end annotation


# static fields
.field private static final CONVERT_TIME_UNIT:I = 0x3e8


# instance fields
.field private mContentType:Ljava/lang/String;

.field private mCountry:Ljava/lang/String;

.field private mCountryCode:Ljava/lang/String;

.field private mFrom:J

.field private mKeywordContentType:Ljava/lang/String;

.field private mKeywordCount:I

.field private mKeywordMap:[Ljava/lang/String;

.field private mLocation:Ljava/lang/String;

.field private mPoi:Ljava/lang/String;

.field private mSmile:Z

.field private mTag:Ljava/lang/String;

.field private mTag_CH:Ljava/lang/String;

.field private mTime:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mTo:J

.field final synthetic this$0:Lcom/sec/android/gallery3d/data/VisualSearchTagFilter;


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/data/VisualSearchTagFilter;)V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;->this$0:Lcom/sec/android/gallery3d/data/VisualSearchTagFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;->mLocation:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;->mPoi:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;->mTitle:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;->mTag:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;->mTag_CH:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;->mContentType:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;->mCountry:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;->mCountryCode:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;->mTime:Ljava/lang/String;

    iput-wide v2, p0, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;->mFrom:J

    iput-wide v2, p0, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;->mTo:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;->mKeywordMap:[Ljava/lang/String;

    iput v1, p0, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;->mKeywordCount:I

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;->mSmile:Z

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;->mKeywordContentType:Ljava/lang/String;

    return-void
.end method

.method private appendKeyword(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object p2, p1

    :cond_0
    :goto_0
    return-object p2

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method private calculateTime(JLjava/util/Calendar;Ljava/util/Calendar;)J
    .locals 7

    invoke-virtual {p3, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v0, 0x2

    invoke-virtual {p3, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v0, 0x5

    invoke-virtual {p3, v0}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/16 v0, 0xb

    invoke-virtual {p3, v0}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/16 v0, 0xc

    invoke-virtual {p3, v0}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/16 v0, 0xd

    invoke-virtual {p3, v0}, Ljava/util/Calendar;->get(I)I

    move-result v6

    move-object v0, p4

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    invoke-virtual {p4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private convertTimeValue([JLjava/util/Calendar;Ljava/util/Calendar;)V
    .locals 12

    const-wide/16 v10, 0x3e8

    const-wide/32 v2, 0x360420

    const-wide/32 v4, 0xe678

    const/4 v8, 0x0

    aget-wide v8, p1, v8

    mul-long v0, v8, v10

    const/4 v8, 0x1

    aget-wide v8, p1, v8

    mul-long v6, v8, v10

    const-string/jumbo v8, "VisualSearchTagFilter"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "server: from - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", to - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sec/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    cmp-long v8, v0, v6

    if-nez v8, :cond_1

    invoke-direct {p0, v0, v1, p2, p3}, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;->calculateTime(JLjava/util/Calendar;Ljava/util/Calendar;)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;->mFrom:J

    iget-wide v10, p0, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;->mFrom:J

    const/16 v8, 0xc

    invoke-virtual {p3, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    if-nez v8, :cond_0

    const-wide/32 v8, 0x360420

    :goto_0
    add-long/2addr v8, v10

    iput-wide v8, p0, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;->mTo:J

    :goto_1
    const-string/jumbo v8, "VisualSearchTagFilter"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "utzone: from - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, p0, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;->mFrom:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", mTo - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, p0, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;->mTo:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sec/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-wide/32 v8, 0xe678

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0, v1, p2, p3}, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;->calculateTime(JLjava/util/Calendar;Ljava/util/Calendar;)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;->mFrom:J

    invoke-direct {p0, v6, v7, p2, p3}, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;->calculateTime(JLjava/util/Calendar;Ljava/util/Calendar;)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;->mTo:J

    goto :goto_1
.end method

.method private setKeywordMap()[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;->mLocation:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;->mPoi:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;->mTitle:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;->mTag:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;->mCountry:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;->mTime:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;->mKeywordContentType:Ljava/lang/String;

    aput-object v2, v0, v1

    return-object v0
.end method


# virtual methods
.method public checkMultiKeyword()Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x7

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;->mLocation:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    iget-object v2, p0, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;->mPoi:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v0, v0, -0x1

    :cond_1
    iget-object v2, p0, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;->mTitle:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    add-int/lit8 v0, v0, -0x1

    :cond_2
    iget-object v2, p0, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;->mTag:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    add-int/lit8 v0, v0, -0x1

    :cond_3
    iget-object v2, p0, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;->mContentType:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    add-int/lit8 v0, v0, -0x1

    :cond_4
    iget-object v2, p0, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;->mCountry:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    add-int/lit8 v0, v0, -0x1

    :cond_5
    iget-object v2, p0, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;->mTime:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    add-int/lit8 v0, v0, -0x1

    :cond_6
    iput v0, p0, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;->mKeywordCount:I

    if-gt v0, v1, :cond_7

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;->mContentType:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    :cond_7
    :goto_0
    return v1

    :cond_8
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public clearKeywords()V
    .locals 4

    const-wide/16 v2, 0x0

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;->mLocation:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;->mPoi:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;->mTitle:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;->mTag:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;->mTag_CH:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;->mContentType:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;->mKeywordContentType:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;->mCountry:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;->mCountryCode:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;->mTime:Ljava/lang/String;

    iput-wide v2, p0, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;->mFrom:J

    iput-wide v2, p0, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;->mTo:J

    return-void
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;->mContentType:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;->mCountry:Ljava/lang/String;

    return-object v0
.end method

.method public getCountryCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;->mCountryCode:Ljava/lang/String;

    return-object v0
.end method

.method public getFrom()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;->mFrom:J

    return-wide v0
.end method

.method public getKeywordCount()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;->mKeywordCount:I

    return v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;->mLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getPoi()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;->mPoi:Ljava/lang/String;

    return-object v0
.end method

.method public getSearchKeyword()Ljava/lang/String;
    .locals 3

    const-string/jumbo v1, ""

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;->setKeywordMap()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;->mKeywordMap:[Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x7

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;->mKeywordMap:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-direct {p0, v2, v1}, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;->appendKeyword(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getSmileStatus()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;->mSmile:Z

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public getTagFromCH()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;->mTag_CH:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getTo()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;->mTo:J

    return-wide v0
.end method

.method public isEmpty()Z
    .locals 4

    const-wide/16 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;->mLocation:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;->mPoi:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;->mTitle:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;->mTag:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;->mContentType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;->mKeywordContentType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;->mTag_CH:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;->mCountry:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;->mTime:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;->mFrom:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;->mTo:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;->mContentType:Ljava/lang/String;

    return-void
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;->mCountry:Ljava/lang/String;

    return-void
.end method

.method public setCountryCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;->mCountryCode:Ljava/lang/String;

    return-void
.end method

.method public setKeywordContentType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;->mKeywordContentType:Ljava/lang/String;

    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;->mLocation:Ljava/lang/String;

    return-void
.end method

.method public setPoi(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;->mPoi:Ljava/lang/String;

    return-void
.end method

.method public setSmileStatus(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;->mSmile:Z

    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;->mTag:Ljava/lang/String;

    return-void
.end method

.method public setTagInfo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;->mTag_CH:Ljava/lang/String;

    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;->mTime:Ljava/lang/String;

    return-void
.end method

.method public setTimeInfo([J)V
    .locals 3

    const-string/jumbo v2, "UTC"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;->convertTimeValue([JLjava/util/Calendar;Ljava/util/Calendar;)V

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;->mTitle:Ljava/lang/String;

    return-void
.end method
