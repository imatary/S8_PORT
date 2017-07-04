.class public Lcom/samsung/android/devicecog/gallery/nlgidmap/DCEnterDetailViewNlgIdMap;
.super Ljava/lang/Object;
.source "DCEnterDetailViewNlgIdMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/devicecog/gallery/nlgidmap/DCEnterDetailViewNlgIdMap$FailedType;
    }
.end annotation


# static fields
.field private static final FEATURE_USE_DEVICE_COG:Z

.field private static final sFailedNlgMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Lcom/samsung/android/devicecog/gallery/nlgidmap/DCEnterDetailViewNlgIdMap$FailedType;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sSucceedNlgMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const v4, 0x7f0a0538

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDeviceCog:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    sput-boolean v1, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCEnterDetailViewNlgIdMap;->FEATURE_USE_DEVICE_COG:Z

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCEnterDetailViewNlgIdMap;->sFailedNlgMap:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCEnterDetailViewNlgIdMap;->sSucceedNlgMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCEnterDetailViewNlgIdMap$FailedType;->SELECT_ORDER_AND_COUNT_EXIST_NO:Lcom/samsung/android/devicecog/gallery/nlgidmap/DCEnterDetailViewNlgIdMap$FailedType;

    const v2, 0x7f0a0536

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCEnterDetailViewNlgIdMap$FailedType;->SELECT_COUNT_IS_ONE_NO:Lcom/samsung/android/devicecog/gallery/nlgidmap/DCEnterDetailViewNlgIdMap$FailedType;

    const v2, 0x7f0a0537

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCEnterDetailViewNlgIdMap;->sFailedNlgMap:Ljava/util/HashMap;

    const-string/jumbo v2, "SearchViewResult"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCEnterDetailViewNlgIdMap$FailedType;->SELECT_ORDER_AND_COUNT_EXIST_NO:Lcom/samsung/android/devicecog/gallery/nlgidmap/DCEnterDetailViewNlgIdMap$FailedType;

    const v2, 0x7f0a05ca

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCEnterDetailViewNlgIdMap$FailedType;->SELECT_COUNT_IS_ONE_NO:Lcom/samsung/android/devicecog/gallery/nlgidmap/DCEnterDetailViewNlgIdMap$FailedType;

    const v2, 0x7f0a05cb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCEnterDetailViewNlgIdMap;->sFailedNlgMap:Ljava/util/HashMap;

    const-string/jumbo v2, "PicturesView"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCEnterDetailViewNlgIdMap$FailedType;->SELECT_ORDER_AND_COUNT_EXIST_NO:Lcom/samsung/android/devicecog/gallery/nlgidmap/DCEnterDetailViewNlgIdMap$FailedType;

    const v2, 0x7f0a0759

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCEnterDetailViewNlgIdMap$FailedType;->SELECT_COUNT_IS_ONE_NO:Lcom/samsung/android/devicecog/gallery/nlgidmap/DCEnterDetailViewNlgIdMap$FailedType;

    const v2, 0x7f0a075a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCEnterDetailViewNlgIdMap;->sFailedNlgMap:Ljava/util/HashMap;

    const-string/jumbo v2, "AlbumThumbnailView"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCEnterDetailViewNlgIdMap$FailedType;->SELECT_ORDER_AND_COUNT_EXIST_NO:Lcom/samsung/android/devicecog/gallery/nlgidmap/DCEnterDetailViewNlgIdMap$FailedType;

    const v2, 0x7f0a07a4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCEnterDetailViewNlgIdMap$FailedType;->SELECT_COUNT_IS_ONE_NO:Lcom/samsung/android/devicecog/gallery/nlgidmap/DCEnterDetailViewNlgIdMap$FailedType;

    const v2, 0x7f0a07b7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCEnterDetailViewNlgIdMap;->sFailedNlgMap:Ljava/util/HashMap;

    const-string/jumbo v2, "StoryDetailView"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCEnterDetailViewNlgIdMap;->sSucceedNlgMap:Ljava/util/HashMap;

    const-string/jumbo v2, "SearchViewResult"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCEnterDetailViewNlgIdMap;->sSucceedNlgMap:Ljava/util/HashMap;

    const-string/jumbo v2, "PicturesView"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCEnterDetailViewNlgIdMap;->sSucceedNlgMap:Ljava/util/HashMap;

    const-string/jumbo v2, "AlbumThumbnailView"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCEnterDetailViewNlgIdMap;->sSucceedNlgMap:Ljava/util/HashMap;

    const-string/jumbo v2, "StoryDetailView"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static getNlgId(Ljava/lang/String;ZLcom/samsung/android/devicecog/gallery/nlgidmap/DCEnterDetailViewNlgIdMap$FailedType;)I
    .locals 1

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCEnterDetailViewNlgIdMap;->getNlgIdForSucceed(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p2}, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCEnterDetailViewNlgIdMap;->getNlgIdForFailed(Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/nlgidmap/DCEnterDetailViewNlgIdMap$FailedType;)I

    move-result v0

    goto :goto_0
.end method

.method private static getNlgIdForFailed(Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/nlgidmap/DCEnterDetailViewNlgIdMap$FailedType;)I
    .locals 5

    const/4 v1, -0x1

    sget-boolean v2, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCEnterDetailViewNlgIdMap;->FEATURE_USE_DEVICE_COG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCEnterDetailViewNlgIdMap;->sFailedNlgMap:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez p1, :cond_2

    :cond_0
    const-string/jumbo v2, "DCEnterDetailViewNlgMap"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "BixbyGallery, getNlgId() requestStateId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return v1

    :cond_2
    sget-object v2, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCEnterDetailViewNlgIdMap;->sFailedNlgMap:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method private static getNlgIdForSucceed(Ljava/lang/String;)I
    .locals 4

    sget-boolean v1, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCEnterDetailViewNlgIdMap;->FEATURE_USE_DEVICE_COG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCEnterDetailViewNlgIdMap;->sSucceedNlgMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const-string/jumbo v1, "DCEnterDetailViewNlgMap"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "BixbyGallery, getNlgId() requestStateId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCEnterDetailViewNlgIdMap;->sSucceedNlgMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method
