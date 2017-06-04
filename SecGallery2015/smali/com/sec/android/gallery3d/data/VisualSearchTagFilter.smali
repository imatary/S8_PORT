.class public Lcom/sec/android/gallery3d/data/VisualSearchTagFilter;
.super Ljava/lang/Object;
.source "VisualSearchTagFilter.java"

# interfaces
.implements Lcom/sec/android/gallery3d/data/SearchTagFilter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;
    }
.end annotation


# static fields
.field public static final CARD_TYPE_BLURRED:Ljava/lang/String; = "Blurry pictures"

.field public static final CARD_TYPE_CAMERA_MODE:Ljava/lang/String; = "Camera mode"

.field public static final CARD_TYPE_DOCUMENT:Ljava/lang/String; = "Documents"

.field public static final CARD_TYPE_LOCATION:Ljava/lang/String; = "Location"

.field public static final CARD_TYPE_MY_TAG:Ljava/lang/String; = "My tags"

.field public static final CARD_TYPE_OTHER_CATEGORIES:Ljava/lang/String; = "Others"

.field public static final CARD_TYPE_PEOPLE:Ljava/lang/String; = "People"

.field public static final CARD_TYPE_RECENTLY_ADDED:Ljava/lang/String; = "Recently Added"

.field public static final CARD_TYPE_RECENT_CATEGORY:Ljava/lang/String; = "Recent"

.field public static final CARD_TYPE_RELATED_LOCATION:Ljava/lang/String; = "Related locations"

.field public static final CARD_TYPE_RELATED_PEOPLE:Ljava/lang/String; = "Related people"

.field public static final CARD_TYPE_SMILE:Ljava/lang/String; = "Smile pictures"

.field public static final CARD_TYPE_SUB_OTHER_DOCUMENT:Ljava/lang/String; = "Other Documents"

.field public static final CARD_TYPE_TIME:Ljava/lang/String; = "Time"

.field public static final SEARCH_KEYWORD_LOCATION_TO_VIDEO_PLAYER:Ljava/lang/String; = "Location"

.field public static final SEARCH_KEYWORD_TEXT_TO_VIDEO_PLAYER:Ljava/lang/String; = "Text"

.field public static final SEARCH_KEYWORD_TIME_TO_VIDEO_PLAYER:Ljava/lang/String; = "Time"

.field public static final TAG:Ljava/lang/String; = "VisualSearchTagFilter"


# instance fields
.field private mCategory:Ljava/lang/String;

.field private mKeywordInfo:Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;

.field private mLocationType:I

.field private mPersonName:Ljava/lang/String;

.field private mTagName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter;->mTagName:Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter;->mCategory:Ljava/lang/String;

    sget-object v0, Lcom/sec/android/gallery3d/data/SearchTagFilter$LocationType;->NONE:Lcom/sec/android/gallery3d/data/SearchTagFilter$LocationType;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/SearchTagFilter$LocationType;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter;->mLocationType:I

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter;->mPersonName:Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter;->mKeywordInfo:Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;

    return-void
.end method


# virtual methods
.method public clearTagFilter()V
    .locals 2

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter;->mTagName:Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter;->mCategory:Ljava/lang/String;

    sget-object v0, Lcom/sec/android/gallery3d/data/SearchTagFilter$LocationType;->NONE:Lcom/sec/android/gallery3d/data/SearchTagFilter$LocationType;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/SearchTagFilter$LocationType;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter;->mLocationType:I

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter;->mPersonName:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter;->mKeywordInfo:Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter;->mKeywordInfo:Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;->clearKeywords()V

    :cond_0
    return-void
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter;->mCategory:Ljava/lang/String;

    return-object v0
.end method

.method public getExistFilterMask()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getFilterList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/GallerySearchTagFilter$Filter;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getFromTimeInfo()Ljava/lang/String;
    .locals 3

    const-string/jumbo v1, "Time"

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter;->mCategory:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter;->mTagName:Ljava/lang/String;

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLocationType()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter;->mLocationType:I

    return v0
.end method

.method public getOriginalTagName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter;->mTagName:Ljava/lang/String;

    return-object v0
.end method

.method public getPersonName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter;->mPersonName:Ljava/lang/String;

    return-object v0
.end method

.method public getSearchKeywordInfo()Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter;->mKeywordInfo:Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;

    invoke-direct {v0, p0}, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;-><init>(Lcom/sec/android/gallery3d/data/VisualSearchTagFilter;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter;->mKeywordInfo:Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter;->mKeywordInfo:Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;

    return-object v0
.end method

.method public getTagName()Ljava/lang/String;
    .locals 4

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter;->mCategory:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "Time"

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter;->mCategory:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter;->mTagName:Ljava/lang/String;

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    if-le v1, v3, :cond_0

    aget-object v1, v0, v3

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter;->mTagName:Ljava/lang/String;

    goto :goto_0
.end method

.method public isTagFilterEmpty()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter;->mTagName:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter;->mCategory:Ljava/lang/String;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter;->mLocationType:I

    sget-object v1, Lcom/sec/android/gallery3d/data/SearchTagFilter$LocationType;->NONE:Lcom/sec/android/gallery3d/data/SearchTagFilter$LocationType;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/SearchTagFilter$LocationType;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter;->mPersonName:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter;->mKeywordInfo:Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter;->mKeywordInfo:Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTagFilter(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter;->mTagName:Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter;->mCategory:Ljava/lang/String;

    iput p3, p0, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter;->mLocationType:I

    iput-object p4, p0, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter;->mPersonName:Ljava/lang/String;

    iput-object p5, p0, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter;->mKeywordInfo:Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;

    return-void
.end method
