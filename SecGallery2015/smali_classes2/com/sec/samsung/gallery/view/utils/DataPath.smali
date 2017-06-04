.class public Lcom/sec/samsung/gallery/view/utils/DataPath;
.super Ljava/lang/Object;
.source "DataPath.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DataPath"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkAllTopSetPath(Landroid/content/Context;Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 9

    const/4 v3, 0x1

    const/4 v7, 0x0

    const/16 v8, 0x2c

    move-object v6, p0

    check-cast v6, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v1

    invoke-static {p0, p1}, Lcom/sec/samsung/gallery/view/utils/DataPath;->getTypeBit(Landroid/content/Context;Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;)I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/sec/android/gallery3d/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/sec/android/gallery3d/remote/cloud/CloudRefer;->isCloudSupported(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {p0}, Lcom/sec/android/gallery3d/remote/cloud/CloudRefer;->isCloudContentSyncOn(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_4

    move v2, v3

    :goto_0
    if-eqz v2, :cond_1

    const/16 v5, 0x8

    sget-object v6, Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;->IMAGE:Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;

    if-ne p1, v6, :cond_5

    const/16 v5, 0x14

    :cond_0
    :goto_1
    invoke-virtual {v1, v5}, Lcom/sec/android/gallery3d/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    sget-object v6, Lcom/sec/samsung/gallery/features/FeatureNames;->UseSCloudOnly:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v6}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-static {p0}, Lcom/sec/android/gallery3d/remote/scloud/SCloudRefer;->isSCloudContentSyncOn(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_6

    :goto_2
    if-eqz v3, :cond_3

    const/16 v5, 0x9

    sget-object v6, Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;->IMAGE:Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;

    if-ne p1, v6, :cond_7

    const/16 v5, 0x1f

    :cond_2
    :goto_3
    invoke-virtual {v1, v5}, Lcom/sec/android/gallery3d/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    const/16 v6, 0x7d

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, "DataPath"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "topPath:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_4
    move v2, v7

    goto :goto_0

    :cond_5
    sget-object v6, Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;->VIDEO:Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;

    if-ne p1, v6, :cond_0

    const/16 v5, 0x15

    goto :goto_1

    :cond_6
    move v3, v7

    goto :goto_2

    :cond_7
    sget-object v6, Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;->VIDEO:Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;

    if-ne p1, v6, :cond_2

    const/16 v5, 0x20

    goto :goto_3
.end method

.method private static checkNeedToUpdateAlbum(Landroid/content/Context;)Z
    .locals 2

    check-cast p0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v0

    sget-object v1, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_ALBUM:Lcom/sec/samsung/gallery/core/TabTagType;

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getCurrentTabTagType(Landroid/content/Context;)I
    .locals 2

    const-string/jumbo v0, "lastViewType"

    sget-object v1, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_TIMELINE:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-static {v1}, Lcom/sec/samsung/gallery/core/TabTagType;->from(Lcom/sec/samsung/gallery/core/TabTagType;)I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadIntKey(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getOneAlbumPath(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)Ljava/lang/String;
    .locals 8

    const/16 v7, 0x20

    const/4 v6, 0x2

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v2

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentViewByType()I

    move-result v4

    invoke-static {p0, v4}, Lcom/sec/samsung/gallery/view/utils/DataPath;->getViewByTopSetPath(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/sec/samsung/gallery/view/utils/DataPath$1;->$SwitchMap$com$sec$samsung$gallery$core$TabTagType:[I

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/core/TabTagType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    move-object v0, v3

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "/allinone"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    :pswitch_0
    invoke-static {v3, v6}, Lcom/sec/samsung/gallery/view/utils/DataPath;->toClusterPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryApplication()Lcom/sec/android/gallery3d/app/GalleryApp;

    move-result-object v4

    invoke-interface {v4, v6}, Lcom/sec/android/gallery3d/app/GalleryApp;->setCurrentClusterType(I)V

    goto :goto_0

    :pswitch_1
    invoke-static {v3, v7}, Lcom/sec/samsung/gallery/view/utils/DataPath;->toClusterPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryApplication()Lcom/sec/android/gallery3d/app/GalleryApp;

    move-result-object v4

    invoke-interface {v4, v7}, Lcom/sec/android/gallery3d/app/GalleryApp;->setCurrentClusterType(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static getTypeBit(Landroid/content/Context;Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;)I
    .locals 3

    move-object v1, p0

    check-cast v1, Lcom/sec/android/gallery3d/app/GalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isFromCamera()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p0}, Lcom/sec/samsung/gallery/view/utils/DataPath;->getCurrentTabTagType(Landroid/content/Context;)I

    move-result v1

    sget-object v2, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_TIMELINE:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-static {v2}, Lcom/sec/samsung/gallery/core/TabTagType;->from(Lcom/sec/samsung/gallery/core/TabTagType;)I

    move-result v2

    if-eq v1, v2, :cond_0

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseFaceTag:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p0}, Lcom/sec/samsung/gallery/view/utils/DataPath;->getCurrentTabTagType(Landroid/content/Context;)I

    move-result v1

    sget-object v2, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_FACE:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-static {v2}, Lcom/sec/samsung/gallery/core/TabTagType;->from(Lcom/sec/samsung/gallery/core/TabTagType;)I

    move-result v2

    if-ne v1, v2, :cond_2

    :cond_0
    invoke-static {p0}, Lcom/sec/samsung/gallery/view/utils/DataPath;->checkNeedToUpdateAlbum(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    const/16 v0, 0x17

    :goto_0
    sget-object v1, Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;->IMAGE:Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;

    if-ne p1, v1, :cond_3

    const/4 v0, 0x5

    :cond_1
    :goto_1
    return v0

    :cond_2
    const/4 v0, 0x7

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;->VIDEO:Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;

    if-ne p1, v1, :cond_1

    const/4 v0, 0x6

    goto :goto_1
.end method

.method public static getViewByTopSetPath(ILjava/lang/String;)Ljava/lang/String;
    .locals 14

    const/4 v11, 0x0

    sget-object v10, Lcom/sec/samsung/gallery/core/ViewByFilterType;->ALL:Lcom/sec/samsung/gallery/core/ViewByFilterType;

    invoke-virtual {v10, p0}, Lcom/sec/samsung/gallery/core/ViewByFilterType;->isOptionSelected(I)Z

    move-result v10

    if-eqz v10, :cond_0

    :goto_0
    return-object p1

    :cond_0
    const/4 v3, 0x0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v10, ","

    invoke-virtual {p1, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v7, ""

    aget-object v10, v9, v11

    const-string/jumbo v12, "{"

    invoke-virtual {v10, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v10, -0x1

    if-eq v2, v10, :cond_1

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {p1, v11, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    aget-object v10, v9, v11

    add-int/lit8 v12, v2, 0x1

    invoke-virtual {v10, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v11

    array-length v10, v9

    add-int/lit8 v10, v10, -0x1

    aget-object v10, v9, v10

    const-string/jumbo v12, "}"

    invoke-virtual {v10, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    array-length v12, v9

    add-int/lit8 v12, v12, -0x1

    aget-object v12, v9, v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    if-ne v10, v12, :cond_1

    array-length v10, v9

    add-int/lit8 v10, v10, -0x1

    array-length v12, v9

    add-int/lit8 v12, v12, -0x1

    aget-object v12, v9, v12

    array-length v13, v9

    add-int/lit8 v13, v13, -0x1

    aget-object v13, v9, v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v12, v11, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v9, v10

    const/4 v3, 0x1

    :cond_1
    array-length v12, v9

    move v10, v11

    :goto_1
    if-ge v10, v12, :cond_6

    aget-object v8, v9, v10

    sget-object v13, Lcom/sec/samsung/gallery/core/ViewByFilterType;->LOCAL:Lcom/sec/samsung/gallery/core/ViewByFilterType;

    invoke-virtual {v13, p0}, Lcom/sec/samsung/gallery/core/ViewByFilterType;->isOptionSelected(I)Z

    move-result v13

    if-eqz v13, :cond_4

    const-string/jumbo v13, "mtp"

    invoke-virtual {v8, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_2

    const-string/jumbo v13, "local"

    invoke-virtual {v8, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_2

    const-string/jumbo v13, "union"

    invoke-virtual {v8, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_4

    :cond_2
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_4
    sget-object v13, Lcom/sec/samsung/gallery/core/ViewByFilterType;->CLOUD:Lcom/sec/samsung/gallery/core/ViewByFilterType;

    invoke-virtual {v13, p0}, Lcom/sec/samsung/gallery/core/ViewByFilterType;->isOptionSelected(I)Z

    move-result v13

    if-eqz v13, :cond_5

    const-string/jumbo v13, "cloud"

    invoke-virtual {v8, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    sget-object v13, Lcom/sec/samsung/gallery/core/ViewByFilterType;->SCLOUD:Lcom/sec/samsung/gallery/core/ViewByFilterType;

    invoke-virtual {v13, p0}, Lcom/sec/samsung/gallery/core/ViewByFilterType;->isOptionSelected(I)Z

    move-result v13

    if-eqz v13, :cond_3

    const-string/jumbo v13, "scloud"

    invoke-virtual {v8, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_7

    const/4 p1, 0x0

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v12, 0x1

    if-ne v10, v12, :cond_a

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const-string/jumbo v12, "##"

    invoke-virtual {v10, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_8
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const-string/jumbo v12, "combo"

    invoke-virtual {v10, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_9

    array-length v10, v9

    add-int/lit8 v10, v10, -0x1

    aget-object v10, v9, v10

    const-string/jumbo v12, "##"

    invoke-virtual {v10, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    const-string/jumbo v12, "{"

    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    array-length v10, v9

    add-int/lit8 v10, v10, -0x1

    aget-object v10, v9, v10

    array-length v11, v9

    add-int/lit8 v11, v11, -0x1

    aget-object v11, v9, v11

    const-string/jumbo v12, "}"

    invoke-virtual {v11, v12}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_9
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    move-object p1, v10

    goto/16 :goto_0

    :cond_a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_b

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/16 v12, 0x2c

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_b
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_c

    const/16 v10, 0x7d

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_c
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0
.end method

.method public static getViewByTopSetPath(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;->IMAGE_AND_VIDEO:Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;

    invoke-static {p0, p1, v0}, Lcom/sec/samsung/gallery/view/utils/DataPath;->getViewByTopSetPath(Landroid/content/Context;ILcom/sec/samsung/gallery/core/MediaType$MediaFilterType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getViewByTopSetPath(Landroid/content/Context;ILcom/sec/samsung/gallery/core/MediaType$MediaFilterType;)Ljava/lang/String;
    .locals 10

    const/16 v9, 0x2c

    move-object v7, p0

    check-cast v7, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v2

    move-object v7, p0

    check-cast v7, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v7

    sget-object v8, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_FACE:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-virtual {v7, v8}, Lcom/sec/samsung/gallery/core/TabTagType;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v7, ""

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isCategoryView(Lcom/sec/samsung/gallery/core/TabTagType;Ljava/lang/Boolean;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v7

    sget-object v8, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_FACE:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-virtual {v7, v8}, Lcom/sec/samsung/gallery/core/TabTagType;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const/4 v0, 0x7

    sget-object v7, Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;->IMAGE:Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;

    if-ne p2, v7, :cond_2

    const/4 v0, 0x5

    :cond_0
    :goto_1
    invoke-virtual {v2, v0}, Lcom/sec/android/gallery3d/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    :goto_2
    return-object v5

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "/combo/{"

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget-object v7, Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;->VIDEO:Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;

    if-ne p2, v7, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :cond_3
    sget-object v7, Lcom/sec/samsung/gallery/core/ViewByFilterType;->ALL:Lcom/sec/samsung/gallery/core/ViewByFilterType;

    invoke-virtual {v7, p1}, Lcom/sec/samsung/gallery/core/ViewByFilterType;->isOptionSelected(I)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-static {p0, p2, v3}, Lcom/sec/samsung/gallery/view/utils/DataPath;->checkAllTopSetPath(Landroid/content/Context;Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    goto :goto_2

    :cond_4
    sget-object v7, Lcom/sec/samsung/gallery/core/ViewByFilterType;->LOCAL:Lcom/sec/samsung/gallery/core/ViewByFilterType;

    invoke-virtual {v7, p1}, Lcom/sec/samsung/gallery/core/ViewByFilterType;->isOptionSelected(I)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-static {p0, p2}, Lcom/sec/samsung/gallery/view/utils/DataPath;->getTypeBit(Landroid/content/Context;Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;)I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/sec/android/gallery3d/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_5
    sget-object v7, Lcom/sec/samsung/gallery/core/ViewByFilterType;->CLOUD:Lcom/sec/samsung/gallery/core/ViewByFilterType;

    invoke-virtual {v7, p1}, Lcom/sec/samsung/gallery/core/ViewByFilterType;->isOptionSelected(I)Z

    move-result v7

    if-eqz v7, :cond_7

    const/16 v0, 0x8

    sget-object v7, Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;->IMAGE:Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;

    if-ne p2, v7, :cond_b

    const/16 v0, 0x14

    :cond_6
    :goto_3
    invoke-virtual {v2, v0}, Lcom/sec/android/gallery3d/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_7
    sget-object v7, Lcom/sec/samsung/gallery/core/ViewByFilterType;->SCLOUD:Lcom/sec/samsung/gallery/core/ViewByFilterType;

    invoke-virtual {v7, p1}, Lcom/sec/samsung/gallery/core/ViewByFilterType;->isOptionSelected(I)Z

    move-result v7

    if-eqz v7, :cond_9

    const/16 v0, 0x9

    sget-object v7, Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;->IMAGE:Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;

    if-ne p2, v7, :cond_c

    const/16 v0, 0x1f

    :cond_8
    :goto_4
    invoke-virtual {v2, v0}, Lcom/sec/android/gallery3d/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_9
    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v7

    sget-object v8, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_FACE:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-virtual {v7, v8}, Lcom/sec/samsung/gallery/core/TabTagType;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a

    const/16 v7, 0x7d

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    goto/16 :goto_2

    :cond_b
    sget-object v7, Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;->VIDEO:Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;

    if-ne p2, v7, :cond_6

    const/16 v0, 0x15

    goto :goto_3

    :cond_c
    sget-object v7, Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;->VIDEO:Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;

    if-ne p2, v7, :cond_8

    const/16 v0, 0x20

    goto :goto_4
.end method

.method public static getViewByTopSetPath(Landroid/content/Context;Lcom/sec/samsung/gallery/core/ViewByFilterType;)Ljava/lang/String;
    .locals 4

    check-cast p0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v0

    sget-object v2, Lcom/sec/samsung/gallery/view/utils/DataPath$1;->$SwitchMap$com$sec$samsung$gallery$core$ViewByFilterType:[I

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/core/ViewByFilterType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/sec/android/gallery3d/data/DataManager;->getTopMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaSet;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :pswitch_0
    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Lcom/sec/android/gallery3d/data/DataManager;->getTopMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaSet;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :pswitch_1
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/sec/android/gallery3d/data/DataManager;->getTopMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaSet;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static toClusterPath(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    invoke-static {p0, p1}, Lcom/sec/android/gallery3d/app/FilterUtils;->newClusterPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
