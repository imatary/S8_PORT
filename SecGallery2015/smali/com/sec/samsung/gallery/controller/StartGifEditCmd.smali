.class public Lcom/sec/samsung/gallery/controller/StartGifEditCmd;
.super Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;
.source "StartGifEditCmd.java"

# interfaces
.implements Lorg/puremvc/java/multicore/interfaces/ICommand;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/controller/StartGifEditCmd$AGifCmdType;
    }
.end annotation


# static fields
.field private static final ANIMATE_GIFMAKER_PACKAGE_NAME:Ljava/lang/String; = "com.sec.android.mimage.photoretouching.motionphoto"

.field private static final FEATURE_USE_ANIMATE_GIF:Z

.field private static final FEATURE_USE_CREATE_GIF:Z

.field private static final GIFMAKER_CLASS_NAME:Ljava/lang/String; = "com.sec.agif_maker.GifMakerActivity"

.field private static final GIFMAKER_PACKAGE_NAME:Ljava/lang/String; = "com.sec.agif_maker"

.field private static final MAX_MEDIA_COUNT:I = 0x32

.field private static final TAG:Ljava/lang/String; = "StartGifEditCmd"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCreateGIF:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/controller/StartGifEditCmd;->FEATURE_USE_CREATE_GIF:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseAnimateAGIF:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/controller/StartGifEditCmd;->FEATURE_USE_ANIMATE_GIF:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;-><init>()V

    return-void
.end method

.method private getAnimateGifIntent(Ljava/util/ArrayList;)Landroid/content/Intent;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.sec.android.mimage.photoretouching.motionphoto"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "selectedItems"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const-string/jumbo v2, "selectedCount"

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object v1
.end method

.method private getCreateGifIntent(Ljava/util/ArrayList;)Landroid/content/Intent;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.sec.agif_maker"

    const-string/jumbo v3, "com.sec.agif_maker.GifMakerActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo v2, "selectedItems"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    return-object v0
.end method

.method private getFilePathFromUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 12

    const/4 v11, 0x1

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v0, 0x1

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v1, "_data"

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/StartGifEditCmd;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v6, "StartGifEditCmd"

    move-object v1, p1

    invoke-static/range {v0 .. v6}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v11, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    const-string/jumbo v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v7, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    :cond_0
    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_0
    return-object v9

    :catch_0
    move-exception v8

    :try_start_1
    const-string/jumbo v0, "StartGifEditCmd"

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v0
.end method

.method private showAnimateDownloadDialog()V
    .locals 3

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->IsAFWMode:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/StartGifEditCmd;->mContext:Landroid/content/Context;

    const v2, 0x7f0a02d5

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/sec/samsung/gallery/view/common/AnimateStartDialog;

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/StartGifEditCmd;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/StartGifEditCmd;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, v2}, Lcom/sec/samsung/gallery/view/common/AnimateStartDialog;-><init>(Landroid/content/Context;Landroid/app/Activity;)V

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/common/AnimateStartDialog;->showDialog()V

    goto :goto_0
.end method

.method private startGifMaker(Landroid/app/Activity;Lcom/sec/samsung/gallery/controller/StartGifEditCmd$AGifCmdType;)V
    .locals 19

    const/4 v3, 0x1

    const/4 v11, 0x1

    move-object/from16 v14, p1

    check-cast v14, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v14}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v14

    if-eqz v14, :cond_0

    invoke-virtual {v10}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getMediaList()Ljava/util/LinkedList;

    move-result-object v14

    if-nez v14, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v10}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getTotalItemList()Ljava/util/LinkedList;

    move-result-object v9

    new-instance v8, Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/LinkedList;->size()I

    move-result v14

    invoke-direct {v8, v14}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v9}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_2
    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_9

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/gallery3d/data/MediaObject;

    if-eqz v7, :cond_3

    instance-of v14, v7, Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v14, :cond_4

    move-object v14, v7

    check-cast v14, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v14}, Lcom/sec/android/gallery3d/data/MediaItem;->isBroken()Z

    move-result v14

    if-eqz v14, :cond_4

    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    :cond_4
    invoke-virtual {v7}, Lcom/sec/android/gallery3d/data/MediaObject;->getMediaType()I

    move-result v14

    const/16 v16, 0x4

    move/from16 v0, v16

    if-ne v14, v0, :cond_5

    const/4 v11, 0x0

    goto :goto_1

    :cond_5
    invoke-virtual {v7}, Lcom/sec/android/gallery3d/data/MediaObject;->getContentUri()Landroid/net/Uri;

    move-result-object v13

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/sec/samsung/gallery/controller/StartGifEditCmd;->getFilePathFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_8

    const-string/jumbo v14, ".golf"

    invoke-virtual {v5, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_6

    const-string/jumbo v14, ".gif"

    invoke-virtual {v5, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_8

    :cond_6
    const-string/jumbo v14, ".golf"

    invoke-virtual {v5, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_7

    const/4 v3, 0x0

    goto :goto_1

    :cond_7
    const-string/jumbo v14, ".gif"

    invoke-virtual {v5, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_8
    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_9
    if-nez v11, :cond_a

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/controller/StartGifEditCmd;->mContext:Landroid/content/Context;

    const v15, 0x7f0a01e4

    invoke-static {v14, v15}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    goto/16 :goto_0

    :cond_a
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v14

    const/16 v15, 0x32

    if-le v14, v15, :cond_b

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/controller/StartGifEditCmd;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0a0253

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x32

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-virtual/range {v14 .. v16}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/controller/StartGifEditCmd;->mContext:Landroid/content/Context;

    invoke-static {v14, v12}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    if-nez v3, :cond_c

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/controller/StartGifEditCmd;->mContext:Landroid/content/Context;

    const v15, 0x7f0a049e

    invoke-static {v14, v15}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    goto/16 :goto_0

    :cond_c
    sget-boolean v14, Lcom/sec/samsung/gallery/controller/StartGifEditCmd;->FEATURE_USE_CREATE_GIF:Z

    if-eqz v14, :cond_d

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/sec/samsung/gallery/controller/StartGifEditCmd;->getCreateGifIntent(Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object v6

    :try_start_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v4

    const-string/jumbo v14, "StartGifEditCmd"

    invoke-virtual {v4}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_d
    sget-boolean v14, Lcom/sec/samsung/gallery/controller/StartGifEditCmd;->FEATURE_USE_ANIMATE_GIF:Z

    if-eqz v14, :cond_0

    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v14, "com.sec.android.mimage.photoretouching.motionphoto"

    invoke-direct {v6, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v14, "selectedItems"

    invoke-virtual {v2, v14, v8}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v6, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const-string/jumbo v14, "selectedCount"

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v15

    invoke-virtual {v6, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :try_start_1
    sget-object v14, Lcom/sec/samsung/gallery/controller/StartGifEditCmd$AGifCmdType;->START_AGIF_MAKER_FOR_EVENT_NOTIFICATION:Lcom/sec/samsung/gallery/controller/StartGifEditCmd$AGifCmdType;

    move-object/from16 v0, p2

    if-ne v0, v14, :cond_f

    invoke-virtual {v10}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getMediaList()Ljava/util/LinkedList;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/data/MediaSet;

    if-nez v1, :cond_e

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/controller/StartGifEditCmd;->mContext:Landroid/content/Context;

    const v15, 0x7f0a049e

    invoke-static {v14, v15}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v4

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/controller/StartGifEditCmd;->showAnimateDownloadDialog()V

    goto/16 :goto_0

    :cond_e
    :try_start_2
    const-string/jumbo v14, "story_id"

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaSet;->getBucketId()I

    move-result v15

    invoke-virtual {v6, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v14, 0xf02

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v14}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :cond_f
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    sget-object v14, Lcom/sec/samsung/gallery/features/FeatureNames;->UseGraceAppEnterVI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v14}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v14

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/controller/StartGifEditCmd;->mActivity:Landroid/app/Activity;

    const v15, 0x7f050025

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/app/Activity;->overridePendingTransition(II)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0
.end method

.method private startGifMaker(Landroid/app/Activity;Ljava/util/ArrayList;Landroid/net/Uri;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ">;",
            "Landroid/net/Uri;",
            ")V"
        }
    .end annotation

    sget-boolean v5, Lcom/sec/samsung/gallery/controller/StartGifEditCmd;->FEATURE_USE_CREATE_GIF:Z

    if-eqz v5, :cond_4

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-direct {p0, v3}, Lcom/sec/samsung/gallery/controller/StartGifEditCmd;->getCreateGifIntent(Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object v1

    :goto_2
    const/16 v5, 0x310

    :try_start_0
    invoke-virtual {p1, v1, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    sget-object v5, Lcom/sec/samsung/gallery/features/FeatureNames;->UseGraceAppEnterVI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v5}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/StartGifEditCmd;->mActivity:Landroid/app/Activity;

    const v6, 0x7f050025

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/app/Activity;->overridePendingTransition(II)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v5, Lcom/sec/samsung/gallery/controller/StartGifEditCmd;->FEATURE_USE_ANIMATE_GIF:Z

    if-eqz v5, :cond_5

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/StartGifEditCmd;->showAnimateDownloadDialog()V

    goto :goto_0

    :cond_4
    sget-boolean v5, Lcom/sec/samsung/gallery/controller/StartGifEditCmd;->FEATURE_USE_ANIMATE_GIF:Z

    if-eqz v5, :cond_0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v3}, Lcom/sec/samsung/gallery/controller/StartGifEditCmd;->getAnimateGifIntent(Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object v1

    goto :goto_2

    :cond_5
    const-string/jumbo v5, "StartGifEditCmd"

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public execute(Lorg/puremvc/java/multicore/interfaces/INotification;)V
    .locals 7

    const/4 v6, 0x0

    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getBody()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    move-object v3, v4

    check-cast v3, [Ljava/lang/Object;

    aget-object v4, v3, v6

    check-cast v4, Landroid/app/Activity;

    iput-object v4, p0, Lcom/sec/samsung/gallery/controller/StartGifEditCmd;->mActivity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/StartGifEditCmd;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/samsung/gallery/controller/StartGifEditCmd;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    aget-object v0, v3, v4

    check-cast v0, Lcom/sec/samsung/gallery/controller/StartGifEditCmd$AGifCmdType;

    sget-object v4, Lcom/sec/samsung/gallery/controller/StartGifEditCmd$AGifCmdType;->START_AGIF_MAKER_FOR_EVENT_DETAIL_PREVIEW:Lcom/sec/samsung/gallery/controller/StartGifEditCmd$AGifCmdType;

    if-ne v0, v4, :cond_0

    const/4 v4, 0x2

    aget-object v2, v3, v4

    check-cast v2, Ljava/util/ArrayList;

    const/4 v4, 0x3

    aget-object v1, v3, v4

    check-cast v1, Landroid/net/Uri;

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/StartGifEditCmd;->mActivity:Landroid/app/Activity;

    invoke-direct {p0, v4, v2, v1}, Lcom/sec/samsung/gallery/controller/StartGifEditCmd;->startGifMaker(Landroid/app/Activity;Ljava/util/ArrayList;Landroid/net/Uri;)V

    :goto_0
    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/StartGifEditCmd;->mActivity:Landroid/app/Activity;

    invoke-static {v4}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v4

    const-string/jumbo v5, "EXIT_SELECTION_MODE"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/StartGifEditCmd;->mActivity:Landroid/app/Activity;

    invoke-direct {p0, v4, v0}, Lcom/sec/samsung/gallery/controller/StartGifEditCmd;->startGifMaker(Landroid/app/Activity;Lcom/sec/samsung/gallery/controller/StartGifEditCmd$AGifCmdType;)V

    goto :goto_0
.end method
