.class public Lcom/sec/samsung/gallery/controller/ShowSetAsDialogCmd;
.super Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate;
.source "ShowSetAsDialogCmd.java"


# static fields
.field private static final ACTION_ATTACH_DATA_SEC_LIMIT:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "ShowSetAsDialogCmd"


# instance fields
.field private mRcs:Z

.field private mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsNOS:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "com.samsung.intent.action.ATTACH_DATA_SEC_LIMIT"

    :goto_0
    sput-object v0, Lcom/sec/samsung/gallery/controller/ShowSetAsDialogCmd;->ACTION_ATTACH_DATA_SEC_LIMIT:Ljava/lang/String;

    return-void

    :cond_0
    const-string/jumbo v0, "android.intent.action.ATTACH_DATA_SEC_LIMIT"

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate;-><init>()V

    const v0, 0x7f0a03ba

    iput v0, p0, Lcom/sec/samsung/gallery/controller/ShowSetAsDialogCmd;->mTitleOfDialog:I

    return-void
.end method

.method private createIntentForSetAs()Landroid/content/Intent;
    .locals 11

    const/4 v10, 0x0

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/ShowSetAsDialogCmd;->mContext:Landroid/content/Context;

    check-cast v5, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/samsung/gallery/controller/ShowSetAsDialogCmd;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/ShowSetAsDialogCmd;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getMediaList()Ljava/util/LinkedList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaItem;->isDrm()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaItem;->getSupportedOperations()J

    move-result-wide v6

    const-wide/16 v8, 0x20

    and-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_0

    const/4 v3, 0x1

    :cond_0
    if-eqz v3, :cond_1

    new-instance v0, Landroid/content/Intent;

    sget-object v5, Lcom/sec/samsung/gallery/controller/ShowSetAsDialogCmd;->ACTION_ATTACH_DATA_SEC_LIMIT:Ljava/lang/String;

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :goto_0
    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/ShowSetAsDialogCmd;->mUriList:Ljava/util/ArrayList;

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/ShowSetAsDialogCmd;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v5, "mimeType"

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/ShowSetAsDialogCmd;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v5, "rcs"

    iget-boolean v6, p0, Lcom/sec/samsung/gallery/controller/ShowSetAsDialogCmd;->mRcs:Z

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.ATTACH_DATA"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private startSetAsApp(Landroid/content/pm/ResolveInfo;)V
    .locals 5

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/ShowSetAsDialogCmd;->createIntentForSetAs()Landroid/content/Intent;

    move-result-object v1

    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ShowSetAsDialogCmd;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "ShowSetAsDialogCmd"

    const-string/jumbo v3, "Activity Not Found !!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected createAppList()Ljava/util/List;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/controller/ShowSetAsDialogCmd;->createIntentForSetAs()Landroid/content/Intent;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/ShowSetAsDialogCmd;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    const/high16 v16, 0x10000

    move/from16 v0, v16

    invoke-virtual {v13, v8, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v15

    const/4 v10, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/samsung/gallery/controller/ShowSetAsDialogCmd;->mRcs:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/ShowSetAsDialogCmd;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    check-cast v16, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/samsung/gallery/controller/ShowSetAsDialogCmd;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/ShowSetAsDialogCmd;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    check-cast v16, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/ShowSetAsDialogCmd;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getMediaList()Ljava/util/LinkedList;

    move-result-object v11

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/ShowSetAsDialogCmd;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v16

    const-string/jumbo v17, "sec_container_1.com.sec.android.gallery3d"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_0

    const/4 v10, 0x1

    :cond_0
    instance-of v0, v5, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    move/from16 v16, v0

    if-eqz v16, :cond_1

    check-cast v5, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->isRcsUri()Z

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/samsung/gallery/controller/ShowSetAsDialogCmd;->mRcs:Z

    :cond_1
    if-eqz v10, :cond_3

    const/4 v6, 0x0

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v12

    move v7, v6

    :goto_0
    if-ge v7, v12, :cond_3

    invoke-interface {v15, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/ResolveInfo;

    iget-object v2, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string/jumbo v16, "com.sec.android.wallpapercropper2.KeyguardCropActivity"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_2

    const-string/jumbo v16, "com.sec.android.wallpapercropper2.BothCropActivity"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_b

    :cond_2
    add-int/lit8 v6, v7, -0x1

    invoke-interface {v15, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v12, v12, -0x1

    :goto_1
    add-int/lit8 v6, v6, 0x1

    move v7, v6

    goto :goto_0

    :cond_3
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_4

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v9, :cond_4

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/data/MediaItem;->isDrm()Z

    move-result v16

    if-eqz v16, :cond_4

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/data/MediaItem;->getSupportedOperations()J

    move-result-wide v16

    const-wide/16 v18, 0x20

    and-long v16, v16, v18

    const-wide/16 v18, 0x0

    cmp-long v16, v16, v18

    if-eqz v16, :cond_4

    const/4 v3, 0x1

    :cond_4
    if-eqz v3, :cond_5

    const/4 v6, 0x0

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v12

    move v7, v6

    :goto_2
    if-ge v7, v12, :cond_5

    invoke-interface {v15, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/ResolveInfo;

    iget-object v2, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    if-eqz v4, :cond_a

    const-string/jumbo v16, "com.android.contacts.activities.AttachPhotoActivity"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_a

    add-int/lit8 v6, v7, -0x1

    invoke-interface {v15, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v12, v12, -0x1

    :goto_3
    add-int/lit8 v6, v6, 0x1

    move v7, v6

    goto :goto_2

    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/controller/ShowSetAsDialogCmd;->mRcs:Z

    move/from16 v16, v0

    if-eqz v16, :cond_6

    const/4 v6, 0x0

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v12

    move v7, v6

    :goto_4
    if-ge v7, v12, :cond_6

    invoke-interface {v15, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/ResolveInfo;

    iget-object v2, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    if-eqz v4, :cond_9

    const-string/jumbo v16, "com.google.android.apps.photos.phone.SetWallpaperActivity"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_9

    add-int/lit8 v6, v7, -0x1

    invoke-interface {v15, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v12, v12, -0x1

    :goto_5
    add-int/lit8 v6, v6, 0x1

    move v7, v6

    goto :goto_4

    :cond_6
    sget-object v16, Lcom/sec/samsung/gallery/features/FeatureNames;->IsChn:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static/range {v16 .. v16}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v16

    if-eqz v16, :cond_7

    const/4 v6, 0x0

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v12

    move v7, v6

    :goto_6
    if-ge v7, v12, :cond_7

    invoke-interface {v15, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/ResolveInfo;

    iget-object v2, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    if-eqz v4, :cond_8

    const-string/jumbo v16, "com.sec.android.mimage.expressme.ExpressMe"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_8

    add-int/lit8 v6, v7, -0x1

    invoke-interface {v15, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v12, v12, -0x1

    :goto_7
    add-int/lit8 v6, v6, 0x1

    move v7, v6

    goto :goto_6

    :cond_7
    return-object v15

    :cond_8
    move v6, v7

    goto :goto_7

    :cond_9
    move v6, v7

    goto :goto_5

    :cond_a
    move v6, v7

    goto :goto_3

    :cond_b
    move v6, v7

    goto/16 :goto_1
.end method

.method public bridge synthetic execute(Lorg/puremvc/java/multicore/interfaces/INotification;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate;->execute(Lorg/puremvc/java/multicore/interfaces/INotification;)V

    return-void
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 4

    move-object v0, p2

    check-cast v0, Lcom/sec/samsung/gallery/core/Event;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/core/Event;->getType()I

    move-result v2

    sget v3, Lcom/sec/samsung/gallery/core/Event;->EVENT_START_SELECTED_APP:I

    if-ne v2, v3, :cond_0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/core/Event;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/controller/ShowSetAsDialogCmd;->startSetAsApp(Landroid/content/pm/ResolveInfo;)V

    :cond_0
    return-void
.end method
