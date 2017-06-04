.class public Lcom/sec/samsung/gallery/controller/StartFaceTagCmd;
.super Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;
.source "StartFaceTagCmd.java"

# interfaces
.implements Lorg/puremvc/java/multicore/interfaces/ICommand;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/controller/StartFaceTagCmd$FaceTagAction;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "StartFaceTagCmd"


# instance fields
.field private mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;-><init>()V

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

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/StartFaceTagCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

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

.method private removeTag(Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaSet;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/StartFaceTagCmd;->getSelectedList()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    instance-of v2, p2, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;

    if-eqz v2, :cond_2

    check-cast p2, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/StartFaceTagCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {p2, v2, v0}, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->removeClusterName(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Ljava/util/ArrayList;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/StartFaceTagCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v2}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v2

    const-string/jumbo v3, "EXIT_SELECTION_MODE"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    instance-of v2, p2, Lcom/sec/android/gallery3d/data/ClusterAlbum;

    if-eqz v2, :cond_1

    check-cast p2, Lcom/sec/android/gallery3d/data/ClusterAlbum;

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v5, v2, p3}, Lcom/sec/android/gallery3d/data/ClusterAlbum;->updateOperation(Ljava/util/ArrayList;ILjava/lang/String;Lcom/sec/android/gallery3d/data/MediaSet;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/StartFaceTagCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v2}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v2

    const-string/jumbo v3, "EXIT_SELECTION_MODE"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/StartFaceTagCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setReloadRequiredOnResume(Z)V

    goto :goto_0
.end method

.method private requestAssignName(Landroid/content/Intent;Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaSet;)V
    .locals 20

    const/16 v16, 0x0

    const/4 v14, 0x0

    const/4 v12, 0x0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "profile"

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/controller/StartFaceTagCmd;->getSelectedList()Ljava/util/ArrayList;

    move-result-object v19

    if-eqz p1, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    move-object/from16 v0, p2

    instance-of v5, v0, Lcom/sec/android/gallery3d/data/ClusterAlbum;

    if-eqz v5, :cond_0

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/samsung/gallery/controller/StartFaceTagCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v10, 0x0

    const/4 v5, 0x2

    :try_start_0
    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "lookup"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string/jumbo v7, "display_name"

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string/jumbo v9, "StartFaceTagCmd"

    invoke-static/range {v3 .. v9}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    if-eqz v10, :cond_1

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x0

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string/jumbo v16, "Me"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    invoke-static {v10}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :cond_2
    if-nez v16, :cond_5

    const-string/jumbo v5, "FaceScan"

    const-string/jumbo v6, "name is null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    return-void

    :cond_4
    const/4 v5, 0x1

    :try_start_1
    invoke-interface {v10, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v16

    goto :goto_0

    :catchall_0
    move-exception v5

    invoke-static {v10}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v5

    :cond_5
    const-string/jumbo v5, "."

    invoke-virtual {v14, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    move-object v12, v14

    const-string/jumbo v5, "\\."

    invoke-virtual {v14, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v14, v5, v6

    :cond_6
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x2f

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    if-eqz v12, :cond_8

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x2f

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    :goto_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v11, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/samsung/gallery/controller/StartFaceTagCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0a049b

    invoke-static {v6, v7}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/samsung/gallery/controller/StartFaceTagCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0a003d

    const v7, 0x7f0a003e

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6, v7}, Lcom/sec/samsung/gallery/controller/StartFaceTagCmd;->showAlertDialog(Landroid/content/Context;II)V

    :cond_7
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    if-eqz p3, :cond_3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/samsung/gallery/controller/StartFaceTagCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v5

    instance-of v5, v5, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    if-eqz v5, :cond_9

    move-object/from16 v0, p3

    instance-of v5, v0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;

    if-eqz v5, :cond_9

    check-cast p3, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/samsung/gallery/controller/StartFaceTagCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v15, v11, v13}, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->updateClusterName(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "FaceScan"

    const-string/jumbo v6, "AlbumViewState"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_8
    const-string/jumbo v13, ""

    goto :goto_2

    :cond_9
    move-object/from16 v0, p2

    instance-of v5, v0, Lcom/sec/android/gallery3d/data/ClusterAlbum;

    if-eqz v5, :cond_a

    check-cast p2, Lcom/sec/android/gallery3d/data/ClusterAlbum;

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v11, v13, v2}, Lcom/sec/android/gallery3d/data/ClusterAlbum;->updateSlotName(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/gallery3d/data/MediaSet;)V

    :cond_a
    const-string/jumbo v5, "FaceScan"

    const-string/jumbo v6, "not an AlbumViewState"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private showAlertDialog(Landroid/content/Context;II)V
    .locals 4

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a02f4

    new-instance v3, Lcom/sec/samsung/gallery/controller/StartFaceTagCmd$1;

    invoke-direct {v3, p0}, Lcom/sec/samsung/gallery/controller/StartFaceTagCmd$1;-><init>(Lcom/sec/samsung/gallery/controller/StartFaceTagCmd;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public execute(Lorg/puremvc/java/multicore/interfaces/INotification;)V
    .locals 13

    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getBody()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/Object;

    move-object v8, v10

    check-cast v8, [Ljava/lang/Object;

    const/4 v10, 0x0

    aget-object v10, v8, v10

    check-cast v10, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iput-object v10, p0, Lcom/sec/samsung/gallery/controller/StartFaceTagCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const/4 v10, 0x1

    aget-object v2, v8, v10

    check-cast v2, Ljava/util/ArrayList;

    const/4 v10, 0x2

    aget-object v0, v8, v10

    check-cast v0, Lcom/sec/samsung/gallery/controller/StartFaceTagCmd$FaceTagAction;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v7, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_2

    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/gallery3d/data/MediaSet;

    const/4 v10, 0x1

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/gallery3d/data/MediaSet;

    :cond_2
    iget-object v10, p0, Lcom/sec/samsung/gallery/controller/StartFaceTagCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v10}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v4

    iget-object v10, p0, Lcom/sec/samsung/gallery/controller/StartFaceTagCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v10}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v3

    sget-object v10, Lcom/sec/samsung/gallery/controller/StartFaceTagCmd$2;->$SwitchMap$com$sec$samsung$gallery$controller$StartFaceTagCmd$FaceTagAction:[I

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/controller/StartFaceTagCmd$FaceTagAction;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_0

    :goto_1
    iget-object v10, p0, Lcom/sec/samsung/gallery/controller/StartFaceTagCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v10}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v10

    const-string/jumbo v11, "EXIT_SELECTION_MODE"

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_0
    const-string/jumbo v10, "FaceScan"

    const-string/jumbo v11, "ASSIGN_TAG"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x3

    aget-object v5, v8, v10

    check-cast v5, Landroid/content/Intent;

    invoke-direct {p0, v5, v6, v7}, Lcom/sec/samsung/gallery/controller/StartFaceTagCmd;->requestAssignName(Landroid/content/Intent;Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaSet;)V

    goto :goto_1

    :pswitch_1
    const/4 v10, 0x3

    aget-object v10, v8, v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_0

    instance-of v10, v4, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    if-eqz v10, :cond_5

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/data/MediaSet;->getSubMediaSetCount()I

    move-result v10

    if-eqz v10, :cond_3

    move-object v1, v7

    :cond_3
    const/4 v7, 0x0

    :cond_4
    :goto_2
    invoke-direct {p0, v6, v1, v7}, Lcom/sec/samsung/gallery/controller/StartFaceTagCmd;->removeTag(Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaSet;)V

    const/4 v10, 0x1

    invoke-virtual {v3, v10}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setReloadRequiredOnResume(Z)V

    const/4 v10, 0x1

    invoke-virtual {v3, v10}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setUpdateRequiredForRemoveTag(Z)V

    goto :goto_0

    :cond_5
    instance-of v10, v4, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    if-nez v10, :cond_6

    instance-of v10, v4, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    if-eqz v10, :cond_4

    :cond_6
    move-object v1, v6

    const/4 v6, 0x0

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
