.class public Lcom/sec/android/gallery3d/data/GallerySearchTagFilter;
.super Ljava/lang/Object;
.source "GallerySearchTagFilter.java"

# interfaces
.implements Lcom/sec/android/gallery3d/data/SearchTagFilter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/data/GallerySearchTagFilter$Filter;
    }
.end annotation


# static fields
.field public static final SEARCH_MEDIA_TYPE_IMAGE:I

.field public static final SEARCH_MEDIA_TYPE_VIDEO:I

.field private static final TAG:Ljava/lang/String; = "GallerySearchTagFilter"


# instance fields
.field private EXIST_FILTER:I

.field private mFilterList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/GallerySearchTagFilter$Filter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;->IMAGE:Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;->ordinal()I

    move-result v0

    sput v0, Lcom/sec/android/gallery3d/data/GallerySearchTagFilter;->SEARCH_MEDIA_TYPE_IMAGE:I

    sget-object v0, Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;->VIDEO:Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;->ordinal()I

    move-result v0

    sput v0, Lcom/sec/android/gallery3d/data/GallerySearchTagFilter;->SEARCH_MEDIA_TYPE_VIDEO:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/gallery3d/data/GallerySearchTagFilter;->EXIST_FILTER:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/GallerySearchTagFilter;->mFilterList:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/GallerySearchTagFilter;->initFilterList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/GallerySearchTagFilter;->mFilterList:Ljava/util/ArrayList;

    return-void
.end method

.method private initFilterList()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/GallerySearchTagFilter$Filter;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/sec/samsung/gallery/core/SearchFilterType;->TIME:Lcom/sec/samsung/gallery/core/SearchFilterType;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/core/SearchFilterType;->ordinal()I

    move-result v1

    new-instance v2, Lcom/sec/android/gallery3d/data/GallerySearchTagFilter$Filter;

    invoke-direct {v2}, Lcom/sec/android/gallery3d/data/GallerySearchTagFilter$Filter;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    sget-object v1, Lcom/sec/samsung/gallery/core/SearchFilterType;->EVENT:Lcom/sec/samsung/gallery/core/SearchFilterType;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/core/SearchFilterType;->ordinal()I

    move-result v1

    new-instance v2, Lcom/sec/android/gallery3d/data/GallerySearchTagFilter$Filter;

    invoke-direct {v2}, Lcom/sec/android/gallery3d/data/GallerySearchTagFilter$Filter;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    sget-object v1, Lcom/sec/samsung/gallery/core/SearchFilterType;->LOCATION:Lcom/sec/samsung/gallery/core/SearchFilterType;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/core/SearchFilterType;->ordinal()I

    move-result v1

    new-instance v2, Lcom/sec/android/gallery3d/data/GallerySearchTagFilter$Filter;

    invoke-direct {v2}, Lcom/sec/android/gallery3d/data/GallerySearchTagFilter$Filter;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    sget-object v1, Lcom/sec/samsung/gallery/core/SearchFilterType;->PEOPLE:Lcom/sec/samsung/gallery/core/SearchFilterType;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/core/SearchFilterType;->ordinal()I

    move-result v1

    new-instance v2, Lcom/sec/android/gallery3d/data/GallerySearchTagFilter$Filter;

    invoke-direct {v2}, Lcom/sec/android/gallery3d/data/GallerySearchTagFilter$Filter;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDCM:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    sget-object v1, Lcom/sec/samsung/gallery/core/SearchFilterType;->USERTAG:Lcom/sec/samsung/gallery/core/SearchFilterType;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/core/SearchFilterType;->ordinal()I

    move-result v1

    new-instance v2, Lcom/sec/android/gallery3d/data/GallerySearchTagFilter$Filter;

    invoke-direct {v2}, Lcom/sec/android/gallery3d/data/GallerySearchTagFilter$Filter;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_1
    sget-object v1, Lcom/sec/samsung/gallery/core/SearchFilterType;->POI:Lcom/sec/samsung/gallery/core/SearchFilterType;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/core/SearchFilterType;->ordinal()I

    move-result v1

    new-instance v2, Lcom/sec/android/gallery3d/data/GallerySearchTagFilter$Filter;

    invoke-direct {v2}, Lcom/sec/android/gallery3d/data/GallerySearchTagFilter$Filter;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public addTag(ILjava/lang/String;I)V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/GallerySearchTagFilter;->mFilterList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/GallerySearchTagFilter;->mFilterList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/GallerySearchTagFilter;->initFilterList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/GallerySearchTagFilter;->mFilterList:Ljava/util/ArrayList;

    :cond_1
    iget-object v1, p0, Lcom/sec/android/gallery3d/data/GallerySearchTagFilter;->mFilterList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/GallerySearchTagFilter$Filter;

    if-eqz v0, :cond_3

    sget-object v1, Lcom/sec/samsung/gallery/core/SearchFilterType;->POI:Lcom/sec/samsung/gallery/core/SearchFilterType;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/core/SearchFilterType;->getValue()I

    move-result v1

    if-ne p1, v1, :cond_2

    sget-object v1, Lcom/sec/samsung/gallery/core/SearchFilterType;->LOCATION:Lcom/sec/samsung/gallery/core/SearchFilterType;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/core/SearchFilterType;->getValue()I

    move-result p1

    :cond_2
    iget-object v1, p0, Lcom/sec/android/gallery3d/data/GallerySearchTagFilter;->mFilterList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/data/GallerySearchTagFilter$Filter;

    # invokes: Lcom/sec/android/gallery3d/data/GallerySearchTagFilter$Filter;->addTag(Ljava/lang/String;I)V
    invoke-static {v1, p2, p3}, Lcom/sec/android/gallery3d/data/GallerySearchTagFilter$Filter;->access$000(Lcom/sec/android/gallery3d/data/GallerySearchTagFilter$Filter;Ljava/lang/String;I)V

    :cond_3
    iget v1, p0, Lcom/sec/android/gallery3d/data/GallerySearchTagFilter;->EXIST_FILTER:I

    const/4 v2, 0x1

    shl-int/2addr v2, p1

    or-int/2addr v1, v2

    iput v1, p0, Lcom/sec/android/gallery3d/data/GallerySearchTagFilter;->EXIST_FILTER:I

    return-void
.end method

.method public addTag(ILjava/lang/String;I[Ljava/lang/Object;)V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/GallerySearchTagFilter;->mFilterList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/GallerySearchTagFilter;->mFilterList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/GallerySearchTagFilter;->initFilterList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/GallerySearchTagFilter;->mFilterList:Ljava/util/ArrayList;

    :cond_1
    iget-object v1, p0, Lcom/sec/android/gallery3d/data/GallerySearchTagFilter;->mFilterList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/GallerySearchTagFilter$Filter;

    if-eqz v0, :cond_3

    sget-object v1, Lcom/sec/samsung/gallery/core/SearchFilterType;->POI:Lcom/sec/samsung/gallery/core/SearchFilterType;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/core/SearchFilterType;->getValue()I

    move-result v1

    if-ne p1, v1, :cond_2

    sget-object v1, Lcom/sec/samsung/gallery/core/SearchFilterType;->LOCATION:Lcom/sec/samsung/gallery/core/SearchFilterType;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/core/SearchFilterType;->getValue()I

    move-result p1

    :cond_2
    iget-object v1, p0, Lcom/sec/android/gallery3d/data/GallerySearchTagFilter;->mFilterList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/data/GallerySearchTagFilter$Filter;

    # invokes: Lcom/sec/android/gallery3d/data/GallerySearchTagFilter$Filter;->addTag(Ljava/lang/String;I[Ljava/lang/Object;)V
    invoke-static {v1, p2, p3, p4}, Lcom/sec/android/gallery3d/data/GallerySearchTagFilter$Filter;->access$100(Lcom/sec/android/gallery3d/data/GallerySearchTagFilter$Filter;Ljava/lang/String;I[Ljava/lang/Object;)V

    :cond_3
    iget v1, p0, Lcom/sec/android/gallery3d/data/GallerySearchTagFilter;->EXIST_FILTER:I

    const/4 v2, 0x1

    shl-int/2addr v2, p1

    or-int/2addr v1, v2

    iput v1, p0, Lcom/sec/android/gallery3d/data/GallerySearchTagFilter;->EXIST_FILTER:I

    return-void
.end method

.method public freeFilter()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/gallery3d/data/GallerySearchTagFilter;->EXIST_FILTER:I

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/GallerySearchTagFilter;->mFilterList:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/GallerySearchTagFilter;->mFilterList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/GallerySearchTagFilter;->mFilterList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getExistFilterMask()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/data/GallerySearchTagFilter;->EXIST_FILTER:I

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

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/GallerySearchTagFilter;->mFilterList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getFromTimeInfo()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getLocationType()I
    .locals 1

    sget-object v0, Lcom/sec/android/gallery3d/data/SearchTagFilter$LocationType;->NONE:Lcom/sec/android/gallery3d/data/SearchTagFilter$LocationType;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/SearchTagFilter$LocationType;->ordinal()I

    move-result v0

    return v0
.end method

.method public getPersonName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTagName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public removeTag(ILjava/lang/String;)V
    .locals 4

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/GallerySearchTagFilter;->mFilterList:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/GallerySearchTagFilter;->initFilterList()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/gallery3d/data/GallerySearchTagFilter;->mFilterList:Ljava/util/ArrayList;

    :cond_0
    :try_start_0
    sget-object v2, Lcom/sec/samsung/gallery/core/SearchFilterType;->POI:Lcom/sec/samsung/gallery/core/SearchFilterType;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/core/SearchFilterType;->getValue()I

    move-result v2

    if-ne p1, v2, :cond_1

    sget-object v2, Lcom/sec/samsung/gallery/core/SearchFilterType;->LOCATION:Lcom/sec/samsung/gallery/core/SearchFilterType;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/core/SearchFilterType;->getValue()I

    move-result p1

    :cond_1
    iget-object v2, p0, Lcom/sec/android/gallery3d/data/GallerySearchTagFilter;->mFilterList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/data/GallerySearchTagFilter$Filter;

    if-eqz v1, :cond_2

    # invokes: Lcom/sec/android/gallery3d/data/GallerySearchTagFilter$Filter;->removeTag(Ljava/lang/String;)V
    invoke-static {v1, p2}, Lcom/sec/android/gallery3d/data/GallerySearchTagFilter$Filter;->access$200(Lcom/sec/android/gallery3d/data/GallerySearchTagFilter$Filter;Ljava/lang/String;)V

    :cond_2
    if-eqz v1, :cond_3

    # invokes: Lcom/sec/android/gallery3d/data/GallerySearchTagFilter$Filter;->getCount()I
    invoke-static {v1}, Lcom/sec/android/gallery3d/data/GallerySearchTagFilter$Filter;->access$300(Lcom/sec/android/gallery3d/data/GallerySearchTagFilter$Filter;)I

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    iget v2, p0, Lcom/sec/android/gallery3d/data/GallerySearchTagFilter;->EXIST_FILTER:I

    const/4 v3, 0x1

    shl-int/2addr v3, p1

    xor-int/lit8 v3, v3, -0x1

    and-int/2addr v2, v3

    iput v2, p0, Lcom/sec/android/gallery3d/data/GallerySearchTagFilter;->EXIST_FILTER:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "GallerySearchTagFilter"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
