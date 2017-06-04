.class public Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;
.super Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;
.source "StartCategoryTagCmd.java"

# interfaces
.implements Lorg/puremvc/java/multicore/interfaces/ICommand;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$UpdateCategoryTask;,
        Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$CategoryAction;
    }
.end annotation


# static fields
.field private static final BASE_URI:Landroid/net/Uri;

.field private static final TAG:Ljava/lang/String; = "StartCategoryTagCmd"

.field private static final mUseCMH:Z


# instance fields
.field private mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "external"

    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;->BASE_URI:Landroid/net/Uri;

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;->mUseCMH:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;->mUseCMH:Z

    return v0
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private dismissRemoveTagDialog()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method private getSelectedList()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/Path;",
            ">;"
        }
    .end annotation

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getMediaList()Ljava/util/LinkedList;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v6

    if-ge v0, v6, :cond_1

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/data/MediaObject;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaObject;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaObject;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v4
.end method

.method private removeTag(Ljava/util/ArrayList;Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaSet;Ljava/lang/String;Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$CategoryAction;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaObject;",
            ">;",
            "Lcom/sec/android/gallery3d/data/MediaSet;",
            "Lcom/sec/android/gallery3d/data/MediaSet;",
            "Ljava/lang/String;",
            "Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$CategoryAction;",
            ")V"
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;->getSelectedList()Ljava/util/ArrayList;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v16

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_1

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/sec/android/gallery3d/data/MediaObject;

    instance-of v3, v15, Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v3, :cond_0

    move-object v14, v15

    check-cast v14, Lcom/sec/android/gallery3d/data/MediaItem;

    sget-object v3, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;->BASE_URI:Landroid/net/Uri;

    invoke-virtual {v14}, Lcom/sec/android/gallery3d/data/MediaItem;->getItemId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_FACE:Lcom/sec/samsung/gallery/core/TabTagType;

    move-object/from16 v0, v16

    if-eq v0, v3, :cond_0

    invoke-virtual {v14}, Lcom/sec/android/gallery3d/data/MediaItem;->getGroupId()J

    move-result-wide v12

    invoke-virtual {v14}, Lcom/sec/android/gallery3d/data/MediaItem;->getBucketId()I

    move-result v10

    const-string/jumbo v3, "StartCategoryTagCmd"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "removeTag(); groupId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", bucketId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v4, 0x0

    cmp-long v3, v12, v4

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;->BASE_URI:Landroid/net/Uri;

    invoke-static {v3, v10, v12, v13, v4}, Lcom/sec/android/gallery3d/util/BurstImageUtils;->getBurstShotUriList(Landroid/content/ContentResolver;IJLandroid/net/Uri;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$UpdateCategoryTask;

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    invoke-direct/range {v2 .. v9}, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$UpdateCategoryTask;-><init>(Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaSet;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$CategoryAction;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$UpdateCategoryTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v2}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v2

    const-string/jumbo v3, "EXIT_SELECTION_MODE"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private requestEditCategory(Ljava/util/ArrayList;Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaSet;Ljava/lang/String;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaObject;",
            ">;",
            "Lcom/sec/android/gallery3d/data/MediaSet;",
            "Lcom/sec/android/gallery3d/data/MediaSet;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;->getSelectedList()Ljava/util/ArrayList;

    move-result-object v6

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sec/android/gallery3d/data/MediaObject;

    instance-of v2, v11, Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v2, :cond_2

    move-object v9, v11

    check-cast v9, Lcom/sec/android/gallery3d/data/MediaItem;

    sget-object v2, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;->BASE_URI:Landroid/net/Uri;

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/data/MediaItem;->getItemId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p4

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v8, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoCategoryPickerDialog;

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;->mContext:Landroid/content/Context;

    invoke-direct {v8, v1, v10}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoCategoryPickerDialog;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    new-instance v1, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$1;

    move-object v2, p0

    move-object/from16 v3, p4

    move-object v4, p2

    move-object/from16 v5, p3

    invoke-direct/range {v1 .. v7}, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$1;-><init>(Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;Ljava/lang/String;Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaSet;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {v8, v1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoCategoryPickerDialog;->registerResultCallBack(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoCategoryPickerDialog$Result;)V

    invoke-virtual {v8}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoCategoryPickerDialog;->show()V

    goto :goto_0
.end method

.method private requestRemoveConfirmTag(Ljava/util/ArrayList;Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaItem;Ljava/lang/String;Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$CategoryAction;Z)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaObject;",
            ">;",
            "Lcom/sec/android/gallery3d/data/MediaSet;",
            "Lcom/sec/android/gallery3d/data/MediaSet;",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            "Ljava/lang/String;",
            "Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$CategoryAction;",
            "Z)V"
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;->getSelectedList()Ljava/util/ArrayList;

    move-result-object v6

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_1

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/sec/android/gallery3d/data/MediaObject;

    move-object/from16 v0, v18

    instance-of v3, v0, Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v3, :cond_0

    move-object/from16 v16, v18

    check-cast v16, Lcom/sec/android/gallery3d/data/MediaItem;

    sget-object v3, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;->BASE_URI:Landroid/net/Uri;

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/gallery3d/data/MediaItem;->getItemId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    if-eqz p4, :cond_3

    sget-object v2, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$CategoryAction;->REMOVE_DETAIL_TAG:Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$CategoryAction;

    move-object/from16 v0, p6

    if-eq v0, v2, :cond_2

    sget-object v2, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$CategoryAction;->REMOVE_DETAIL_PEOPLE_TAG:Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$CategoryAction;

    move-object/from16 v0, p6

    if-ne v0, v2, :cond_3

    :cond_2
    move-object/from16 v16, p4

    sget-object v2, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;->BASE_URI:Landroid/net/Uri;

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/gallery3d/data/MediaItem;->getItemId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v3, 0x7f0a0356

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v8, ""

    aput-object v8, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    const/16 v17, 0x1

    if-eqz p1, :cond_4

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v17

    :cond_4
    const/4 v2, 0x1

    move/from16 v0, v17

    if-ne v0, v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v3, 0x7f0a0310

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    if-eqz p4, :cond_5

    sget-object v2, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$CategoryAction;->REMOVE_DETAIL_TAG:Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$CategoryAction;

    move-object/from16 v0, p6

    if-ne v0, v2, :cond_5

    invoke-virtual/range {p4 .. p4}, Lcom/sec/android/gallery3d/data/MediaItem;->getGroupId()J

    move-result-wide v14

    invoke-virtual/range {p4 .. p4}, Lcom/sec/android/gallery3d/data/MediaItem;->getBucketId()I

    move-result v10

    const-string/jumbo v2, "StartCategoryTagCmd"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requestRemoveConfirmTag(); groupId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", bucketId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, 0x0

    cmp-long v2, v14, v2

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;->BASE_URI:Landroid/net/Uri;

    invoke-static {v2, v10, v14, v15, v3}, Lcom/sec/android/gallery3d/util/BurstImageUtils;->getBurstShotUriList(Landroid/content/ContentResolver;IJLandroid/net/Uri;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_5
    :goto_1
    if-eqz p7, :cond_7

    new-instance v2, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v13}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v12}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a0080

    new-instance v4, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$3;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$3;-><init>(Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v20

    const v21, 0x7f0a0356

    new-instance v2, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$2;

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v2 .. v9}, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$2;-><init>(Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaSet;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$CategoryAction;)V

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;->mDialog:Landroid/app/AlertDialog;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    :goto_2
    return-void

    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v3, 0x7f0a02a9

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    goto :goto_1

    :cond_7
    new-instance v2, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$UpdateCategoryTask;

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v2 .. v9}, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$UpdateCategoryTask;-><init>(Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaSet;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$CategoryAction;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$UpdateCategoryTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v2}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v2

    const-string/jumbo v3, "EXIT_SELECTION_MODE"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2
.end method

.method public static requestUpdateScreenByCategoryChange(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    sget-object v0, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$CategoryAction;->UPDATE_SCREEN_CAHNGE_CATEGORY:Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$CategoryAction;

    const/4 v2, 0x5

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    aput-object v4, v1, v3

    const/4 v2, 0x2

    aput-object v4, v1, v2

    const/4 v2, 0x3

    aput-object v0, v1, v2

    const/4 v2, 0x4

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v2

    const-string/jumbo v3, "START_CATEGORY_TAG"

    invoke-virtual {v2, v3, v1}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public execute(Lorg/puremvc/java/multicore/interfaces/INotification;)V
    .locals 28

    invoke-interface/range {p1 .. p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getBody()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    move-object/from16 v25, v2

    check-cast v25, [Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object v2, v25, v2

    check-cast v2, Landroid/content/Context;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const/4 v2, 0x1

    aget-object v20, v25, v2

    check-cast v20, Ljava/util/ArrayList;

    const/4 v2, 0x2

    aget-object v3, v25, v2

    check-cast v3, Ljava/util/ArrayList;

    const/4 v2, 0x3

    aget-object v8, v25, v2

    check-cast v8, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$CategoryAction;

    const/4 v2, 0x4

    aget-object v2, v25, v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v26

    if-nez v8, :cond_1

    if-nez v26, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;->dismissRemoveTagDialog()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v23, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v13, 0x0

    if-eqz v20, :cond_3

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$CategoryAction;->REMOVE_DETAIL_TAG:Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$CategoryAction;

    if-eq v8, v2, :cond_2

    sget-object v2, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$CategoryAction;->REMOVE_DETAIL_PEOPLE_TAG:Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$CategoryAction;

    if-ne v8, v2, :cond_4

    :cond_2
    const/4 v2, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/sec/android/gallery3d/data/MediaSet;

    const/4 v2, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/sec/android/gallery3d/data/MediaItem;

    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v21

    sget-object v2, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$4;->$SwitchMap$com$sec$samsung$gallery$controller$StartCategoryTagCmd$CategoryAction:[I

    invoke-virtual {v8}, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$CategoryAction;->ordinal()I

    move-result v6

    aget v2, v2, v6

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    if-nez v26, :cond_5

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;->dismissRemoveTagDialog()V

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v6, 0x1

    if-le v2, v6, :cond_3

    const/4 v2, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/gallery3d/data/MediaSet;

    goto :goto_1

    :cond_5
    if-eqz v5, :cond_6

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/MediaSet;->getSubMediaSetCount()I

    move-result v2

    if-eqz v2, :cond_6

    move-object v4, v5

    :cond_6
    const/4 v5, 0x0

    const/4 v7, 0x0

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/MediaSet;->getKey()Ljava/lang/String;

    move-result-object v7

    :cond_7
    const/4 v6, 0x0

    const/4 v9, 0x1

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;->requestRemoveConfirmTag(Ljava/util/ArrayList;Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaItem;Ljava/lang/String;Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$CategoryAction;Z)V

    const/4 v2, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setReloadRequiredOnResume(Z)V

    goto :goto_0

    :pswitch_1
    if-nez v26, :cond_8

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;->dismissRemoveTagDialog()V

    goto :goto_0

    :cond_8
    move-object/from16 v4, v23

    const/4 v7, 0x0

    if-eqz v4, :cond_b

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/MediaSet;->getKey()Ljava/lang/String;

    move-result-object v7

    :cond_9
    :goto_2
    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDeleteVI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v2

    const-string/jumbo v6, "DELETE_ANIM_START"

    invoke-virtual {v2, v6}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;)V

    :cond_a
    move-object/from16 v9, p0

    move-object v10, v3

    move-object v11, v4

    move-object v12, v5

    move-object v13, v7

    move-object v14, v8

    invoke-direct/range {v9 .. v14}, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;->removeTag(Ljava/util/ArrayList;Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaSet;Ljava/lang/String;Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$CategoryAction;)V

    const/4 v2, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setReloadRequiredOnResume(Z)V

    goto/16 :goto_0

    :cond_b
    if-eqz v5, :cond_9

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/MediaSet;->getKey()Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    :pswitch_2
    if-nez v26, :cond_c

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;->dismissRemoveTagDialog()V

    goto/16 :goto_0

    :cond_c
    move-object/from16 v4, v23

    const/4 v7, 0x0

    if-eqz v4, :cond_d

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/MediaSet;->getKey()Ljava/lang/String;

    move-result-object v7

    :cond_d
    sget-object v2, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$CategoryAction;->REMOVE_DETAIL_PEOPLE_TAG:Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$CategoryAction;

    if-ne v8, v2, :cond_e

    sget-boolean v2, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;->mUseCMH:Z

    if-eqz v2, :cond_f

    const-string/jumbo v7, "People"

    :cond_e
    :goto_3
    if-eqz v13, :cond_0

    const/4 v12, 0x0

    const/16 v16, 0x0

    move-object/from16 v9, p0

    move-object v10, v3

    move-object v11, v4

    move-object v14, v7

    move-object v15, v8

    invoke-direct/range {v9 .. v16}, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;->requestRemoveConfirmTag(Ljava/util/ArrayList;Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaItem;Ljava/lang/String;Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$CategoryAction;Z)V

    const/4 v2, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setReloadRequiredOnResume(Z)V

    goto/16 :goto_0

    :cond_f
    const-string/jumbo v7, "People"

    goto :goto_3

    :pswitch_3
    if-nez v26, :cond_10

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;->dismissRemoveTagDialog()V

    goto/16 :goto_0

    :cond_10
    move-object/from16 v4, v23

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDeleteVI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v2

    const-string/jumbo v6, "DELETE_ANIM_START"

    invoke-virtual {v2, v6}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;)V

    :cond_11
    sget-boolean v2, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;->mUseCMH:Z

    if-eqz v2, :cond_12

    const-string/jumbo v18, "People"

    :goto_4
    move-object/from16 v14, p0

    move-object v15, v3

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    move-object/from16 v19, v8

    invoke-direct/range {v14 .. v19}, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;->removeTag(Ljava/util/ArrayList;Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaSet;Ljava/lang/String;Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$CategoryAction;)V

    const/4 v2, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setReloadRequiredOnResume(Z)V

    goto/16 :goto_0

    :cond_12
    const-string/jumbo v18, "People"

    goto :goto_4

    :pswitch_4
    move-object/from16 v4, v23

    sget-boolean v2, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;->mUseCMH:Z

    if-eqz v2, :cond_13

    const-string/jumbo v2, "People"

    :goto_5
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v5, v2}, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;->requestEditCategory(Ljava/util/ArrayList;Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaSet;Ljava/lang/String;)V

    const/4 v2, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setReloadRequiredOnResume(Z)V

    goto/16 :goto_0

    :cond_13
    const-string/jumbo v2, "People"

    goto :goto_5

    :pswitch_5
    move-object/from16 v4, v23

    const/16 v24, 0x0

    if-eqz v4, :cond_14

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/MediaSet;->getKey()Ljava/lang/String;

    move-result-object v24

    :cond_14
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v3, v4, v5, v1}, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;->requestEditCategory(Ljava/util/ArrayList;Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaSet;Ljava/lang/String;)V

    const/4 v2, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setReloadRequiredOnResume(Z)V

    goto/16 :goto_0

    :pswitch_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v2}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v2

    const-string/jumbo v6, "UPDATE_CATEGORY"

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v6, v9}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v22

    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v27

    sget-object v2, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_FACE:Lcom/sec/samsung/gallery/core/TabTagType;

    move-object/from16 v0, v27

    if-ne v0, v2, :cond_16

    move-object/from16 v0, v22

    instance-of v2, v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    if-nez v2, :cond_15

    move-object/from16 v0, v22

    instance-of v2, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    if-eqz v2, :cond_16

    :cond_15
    const-string/jumbo v2, "StartCategoryTagCmd"

    const-string/jumbo v6, "UPDATE_SCREEN_CAHNGE_CATEGORY : CLUSTER_BY_FACE"

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryApplication()Lcom/sec/android/gallery3d/app/GalleryApp;

    move-result-object v2

    const/4 v6, 0x3

    invoke-interface {v2, v6}, Lcom/sec/android/gallery3d/app/GalleryApp;->setRefreshOperation(I)V

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/gallery3d/app/ActivityState;->onDirty()V

    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v6, "content://force_reload"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    const/4 v9, 0x0

    invoke-virtual {v2, v6, v9}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
