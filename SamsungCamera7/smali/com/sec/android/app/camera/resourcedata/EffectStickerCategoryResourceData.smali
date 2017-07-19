.class public Lcom/sec/android/app/camera/resourcedata/EffectStickerCategoryResourceData;
.super Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
.source "EffectStickerCategoryResourceData.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "EffectStickerCategoryResourceData"


# instance fields
.field private mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;)V
    .locals 1

    const v0, 0x7f0900ca

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;-><init>(I)V

    iput-object p1, p0, Lcom/sec/android/app/camera/resourcedata/EffectStickerCategoryResourceData;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-direct {p0}, Lcom/sec/android/app/camera/resourcedata/EffectStickerCategoryResourceData;->initCommandIdList()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/resourcedata/EffectStickerCategoryResourceData;->initMenuResource()V

    return-void
.end method

.method private initCommandIdList()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/EffectStickerCategoryResourceData;->mCommandIdList:Ljava/util/ArrayList;

    const/16 v1, 0x1e78

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/EffectStickerCategoryResourceData;->mCommandIdList:Ljava/util/ArrayList;

    const/16 v1, 0x1e79

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_STICKER:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/EffectStickerCategoryResourceData;->mCommandIdList:Ljava/util/ArrayList;

    const/16 v1, 0x2711

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_WATERMARK:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/EffectStickerCategoryResourceData;->mCommandIdList:Ljava/util/ArrayList;

    const/16 v1, 0x2712

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_STICKER:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/EffectStickerCategoryResourceData;->mCommandIdList:Ljava/util/ArrayList;

    const/16 v1, 0x2713

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method private initMenuResource()V
    .locals 14

    const/4 v13, 0x4

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    iget-object v6, p0, Lcom/sec/android/app/camera/resourcedata/EffectStickerCategoryResourceData;->mCommandIdList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v2

    new-instance v0, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    const/4 v6, 0x5

    new-array v6, v6, [I

    iget v8, v2, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    aput v8, v6, v9

    iget v8, v2, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mPress:I

    aput v8, v6, v10

    iget v8, v2, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mDim:I

    aput v8, v6, v11

    aput v1, v6, v12

    iget v8, v2, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    aput v8, v6, v13

    invoke-direct {v0, v6}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;-><init>([I)V

    iget-object v6, p0, Lcom/sec/android/app/camera/resourcedata/EffectStickerCategoryResourceData;->mMenuResource:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    sget-boolean v6, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_STICKER:Z

    if-nez v6, :cond_1

    sget-boolean v6, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_WATERMARK:Z

    if-eqz v6, :cond_3

    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-static {}, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->getAllStickers()Ljava/util/LinkedHashMap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;

    iget-boolean v7, v3, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;->isPreloaded:Z

    if-nez v7, :cond_2

    iget-object v7, p0, Lcom/sec/android/app/camera/resourcedata/EffectStickerCategoryResourceData;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, v3, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;->packageName:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/sec/android/app/camera/util/Util;->isPkgExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, v3, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;->packageName:Ljava/lang/String;

    invoke-static {v7}, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->getStickerType(Ljava/lang/String;)I

    move-result v7

    packed-switch v7, :pswitch_data_0

    const/4 v5, -0x1

    :goto_2
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/StickerMenuResourceBundle;

    const/4 v7, 0x5

    new-array v7, v7, [I

    iget v8, v3, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;->representativeNormalResourceId:I

    aput v8, v7, v9

    iget v8, v3, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;->representativePressedResourceId:I

    aput v8, v7, v10

    aput v9, v7, v11

    iget v8, v3, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;->commandId:I

    aput v8, v7, v12

    aput v5, v7, v13

    invoke-direct {v0, v7}, Lcom/sec/android/app/camera/resourcedata/StickerMenuResourceBundle;-><init>([I)V

    iget-object v7, v3, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v7}, Lcom/sec/android/app/camera/resourcedata/StickerMenuResourceBundle;->setPackage(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/sec/android/app/camera/resourcedata/EffectStickerCategoryResourceData;->mMenuResource:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_0
    const v5, 0x7f090168

    goto :goto_2

    :pswitch_1
    const v5, 0x7f090038

    goto :goto_2

    :pswitch_2
    const v5, 0x7f090230

    goto :goto_2

    :cond_3
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public cleanUpResources()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/EffectStickerCategoryResourceData;->mMenuResource:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/EffectStickerCategoryResourceData;->mCommandIdList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public refreshMenuResource()V
    .locals 2

    const-string v0, "EffectStickerCategoryResourceData"

    const-string v1, "refreshMenuResource"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/EffectStickerCategoryResourceData;->mMenuResource:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/resourcedata/EffectStickerCategoryResourceData;->initMenuResource()V

    return-void
.end method
