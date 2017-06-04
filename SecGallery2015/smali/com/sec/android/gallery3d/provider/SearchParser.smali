.class Lcom/sec/android/gallery3d/provider/SearchParser;
.super Ljava/lang/Object;
.source "SearchParser.java"


# static fields
.field static final INITIAL_CAPACITY:I = 0xc8


# instance fields
.field private mEndId:Ljava/lang/String;

.field private mEtime:J

.field private mIsAllTagNull:Z

.field private mIsSupportTagSearch:Z

.field private mKeyString:Ljava/lang/String;

.field private final mKeyValue:J

.field private mLimit:I

.field private mLocationValue:Ljava/lang/String;

.field private final mPeople:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPeopleName:Ljava/lang/String;

.field private final mSceneType:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSearchFilter:Ljava/lang/String;

.field private mStartId:Ljava/lang/String;

.field private mStime:J

.field private final mUserDef:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mWeather:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/sec/android/gallery3d/provider/SearchParser;->mIsAllTagNull:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/provider/SearchParser;->mIsSupportTagSearch:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sec/android/gallery3d/provider/SearchParser;->mKeyValue:J

    iput v2, p0, Lcom/sec/android/gallery3d/provider/SearchParser;->mWeather:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/provider/SearchParser;->mPeople:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/gallery3d/provider/SearchParser;->mLimit:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/provider/SearchParser;->mUserDef:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/provider/SearchParser;->mSceneType:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public allTagCheck()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/provider/SearchParser;->mIsAllTagNull:Z

    return v0
.end method

.method public getEndId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/provider/SearchParser;->mEndId:Ljava/lang/String;

    return-object v0
.end method

.method public getEndTime()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/gallery3d/provider/SearchParser;->mEtime:J

    return-wide v0
.end method

.method public getKeyString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/provider/SearchParser;->mKeyString:Ljava/lang/String;

    return-object v0
.end method

.method public getLimit()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/provider/SearchParser;->mLimit:I

    return v0
.end method

.method public getLocationValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/provider/SearchParser;->mLocationValue:Ljava/lang/String;

    return-object v0
.end method

.method public getPeopleName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/provider/SearchParser;->mPeopleName:Ljava/lang/String;

    return-object v0
.end method

.method public getSceneType()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/gallery3d/provider/SearchParser;->mSceneType:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSearchFilter()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/provider/SearchParser;->mSearchFilter:Ljava/lang/String;

    return-object v0
.end method

.method public getStartId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/provider/SearchParser;->mStartId:Ljava/lang/String;

    return-object v0
.end method

.method public getStartTime()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/gallery3d/provider/SearchParser;->mStime:J

    return-wide v0
.end method

.method public getUserDef()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/gallery3d/provider/SearchParser;->mUserDef:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getWeather()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/provider/SearchParser;->mWeather:I

    return v0
.end method

.method public isSupportTagSearch()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/provider/SearchParser;->mIsSupportTagSearch:Z

    return v0
.end method

.method public parse(Landroid/net/Uri;)V
    .locals 14

    new-instance v6, Lcom/sec/android/gallery3d/provider/QueryParser;

    invoke-direct {v6}, Lcom/sec/android/gallery3d/provider/QueryParser;-><init>()V

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v11, "limit"

    invoke-virtual {p1, v11}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v11, "location"

    invoke-virtual {p1, v11}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/sec/android/gallery3d/provider/SearchParser;->mLocationValue:Ljava/lang/String;

    const-string/jumbo v11, "weather"

    invoke-virtual {p1, v11}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v11, "stime"

    invoke-virtual {p1, v11}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v11, "etime"

    invoke-virtual {p1, v11}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v11, "people"

    invoke-virtual {p1, v11}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v11, "startid"

    invoke-virtual {p1, v11}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/sec/android/gallery3d/provider/SearchParser;->mStartId:Ljava/lang/String;

    const-string/jumbo v11, "endid"

    invoke-virtual {p1, v11}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/sec/android/gallery3d/provider/SearchParser;->mEndId:Ljava/lang/String;

    const-string/jumbo v11, "searchfilter"

    invoke-virtual {p1, v11}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/sec/android/gallery3d/provider/SearchParser;->mSearchFilter:Ljava/lang/String;

    iget-object v11, p0, Lcom/sec/android/gallery3d/provider/SearchParser;->mUserDef:Ljava/util/ArrayList;

    const-string/jumbo v12, "userdef"

    invoke-virtual {p1, v12}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v11, p0, Lcom/sec/android/gallery3d/provider/SearchParser;->mSceneType:Ljava/util/ArrayList;

    const-string/jumbo v12, "scenetype"

    invoke-virtual {p1, v12}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const-string/jumbo v11, "tag_search"

    const/4 v12, 0x1

    invoke-virtual {p1, v11, v12}, Landroid/net/Uri;->getBooleanQueryParameter(Ljava/lang/String;Z)Z

    move-result v11

    iput-boolean v11, p0, Lcom/sec/android/gallery3d/provider/SearchParser;->mIsSupportTagSearch:Z

    if-eqz v3, :cond_0

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, p0, Lcom/sec/android/gallery3d/provider/SearchParser;->mLimit:I

    :cond_0
    if-eqz v8, :cond_1

    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    iput-wide v12, p0, Lcom/sec/android/gallery3d/provider/SearchParser;->mStime:J

    :cond_1
    if-eqz v0, :cond_2

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    iput-wide v12, p0, Lcom/sec/android/gallery3d/provider/SearchParser;->mEtime:J

    :cond_2
    if-eqz v4, :cond_3

    const-string/jumbo v11, ","

    invoke-virtual {v4, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v11, 0x1

    aget-object v11, v5, v11

    iput-object v11, p0, Lcom/sec/android/gallery3d/provider/SearchParser;->mPeopleName:Ljava/lang/String;

    :cond_3
    if-eqz v9, :cond_4

    const-string/jumbo v11, ","

    invoke-virtual {v9, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    aget-object v11, v10, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, p0, Lcom/sec/android/gallery3d/provider/SearchParser;->mWeather:I

    :cond_4
    if-nez v9, :cond_5

    if-nez v4, :cond_5

    iget-object v11, p0, Lcom/sec/android/gallery3d/provider/SearchParser;->mLocationValue:Ljava/lang/String;

    if-nez v11, :cond_5

    iget-object v11, p0, Lcom/sec/android/gallery3d/provider/SearchParser;->mUserDef:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_5

    iget-object v11, p0, Lcom/sec/android/gallery3d/provider/SearchParser;->mSceneType:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_5

    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/sec/android/gallery3d/provider/SearchParser;->mIsAllTagNull:Z

    :cond_5
    invoke-virtual {v6, v7}, Lcom/sec/android/gallery3d/provider/QueryParser;->regexParser(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    array-length v11, v2

    if-lez v11, :cond_8

    const-string/jumbo v11, ""

    iput-object v11, p0, Lcom/sec/android/gallery3d/provider/SearchParser;->mKeyString:Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    array-length v11, v2

    if-ge v1, v11, :cond_8

    aget-object v11, v2, v1

    const-string/jumbo v12, "AND"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_6

    aget-object v11, v2, v1

    const-string/jumbo v12, "&"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    :cond_6
    rem-int/lit8 v11, v1, 0x2

    if-eqz v11, :cond_7

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/sec/android/gallery3d/provider/SearchParser;->mKeyString:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/sec/android/gallery3d/provider/SearchParser;->mKeyString:Ljava/lang/String;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_7
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/sec/android/gallery3d/provider/SearchParser;->mKeyString:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget-object v12, v2, v1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/sec/android/gallery3d/provider/SearchParser;->mKeyString:Ljava/lang/String;

    goto :goto_1

    :cond_8
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/gallery3d/provider/SearchParser;->mKeyString:Ljava/lang/String;

    if-eqz v2, :cond_0

    const-string/jumbo v2, "Key : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/gallery3d/provider/SearchParser;->mKeyString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/sec/android/gallery3d/provider/SearchParser;->mKeyValue:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v2, p0, Lcom/sec/android/gallery3d/provider/SearchParser;->mLocationValue:Ljava/lang/String;

    if-eqz v2, :cond_1

    const-string/jumbo v2, "Locatoin : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/gallery3d/provider/SearchParser;->mLocationValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string/jumbo v2, "People : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/sec/android/gallery3d/provider/SearchParser;->mPeople:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/gallery3d/provider/SearchParser;->mPeople:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/android/gallery3d/provider/SearchParser;->mWeather:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    const-string/jumbo v2, "Weather : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/gallery3d/provider/SearchParser;->mWeather:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
