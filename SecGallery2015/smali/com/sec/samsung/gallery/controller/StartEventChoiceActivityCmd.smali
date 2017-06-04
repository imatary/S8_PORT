.class public Lcom/sec/samsung/gallery/controller/StartEventChoiceActivityCmd;
.super Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;
.source "StartEventChoiceActivityCmd.java"

# interfaces
.implements Lorg/puremvc/java/multicore/interfaces/ICommand;


# static fields
.field private static final LIMITED_FILE_SIZE:J = 0x78L

.field private static final REQUEST_EVENT_LIST:I = 0xc6f

.field private static final TAG:Ljava/lang/String; = "EventChoiceActivity"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;-><init>()V

    return-void
.end method

.method private checkEnableAddToEvent()Z
    .locals 18

    const/4 v9, 0x1

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/samsung/gallery/controller/StartEventChoiceActivityCmd;->mContext:Landroid/content/Context;

    check-cast v11, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v11}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getTotalSelectedItems()I

    move-result v11

    const/16 v12, 0x1f4

    if-le v11, v12, :cond_0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/samsung/gallery/controller/StartEventChoiceActivityCmd;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a0255

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    const/16 v15, 0x1f4

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v11, v12, v13}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/samsung/gallery/controller/StartEventChoiceActivityCmd;->mContext:Landroid/content/Context;

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v11, 0x0

    :goto_0
    return v11

    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getMediaList()Ljava/util/LinkedList;

    move-result-object v11

    invoke-direct {v5, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_1
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/gallery3d/data/MediaObject;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/MediaObject;->getSize()J

    move-result-wide v2

    const-wide/32 v12, 0x7800000

    cmp-long v12, v2, v12

    if-lez v12, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/controller/StartEventChoiceActivityCmd;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0a0252

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-wide/16 v16, 0x78

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const-string/jumbo v16, "MB"

    aput-object v16, v14, v15

    invoke-virtual {v12, v13, v14}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    if-eqz v9, :cond_2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/controller/StartEventChoiceActivityCmd;->mContext:Landroid/content/Context;

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v9, 0x0

    :cond_2
    invoke-virtual {v7, v6}, Lcom/sec/android/gallery3d/ui/SelectionManager;->remove(Lcom/sec/android/gallery3d/data/MediaObject;)V

    goto :goto_1

    :cond_3
    instance-of v12, v6, Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v12, :cond_1

    move-object v4, v6

    check-cast v4, Lcom/sec/android/gallery3d/data/MediaItem;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/controller/StartEventChoiceActivityCmd;->mContext:Landroid/content/Context;

    invoke-static {v12, v4}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isAvailableDrm(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/MediaItem;->isDrm()Z

    move-result v12

    if-nez v12, :cond_1

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/MediaItem;->isBroken()Z

    move-result v12

    if-eqz v12, :cond_1

    :cond_4
    if-eqz v8, :cond_5

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/controller/StartEventChoiceActivityCmd;->mContext:Landroid/content/Context;

    const v13, 0x7f0a049e

    invoke-static {v12, v13}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    const/4 v8, 0x0

    :cond_5
    invoke-virtual {v7, v6}, Lcom/sec/android/gallery3d/ui/SelectionManager;->remove(Lcom/sec/android/gallery3d/data/MediaObject;)V

    goto :goto_1

    :cond_6
    invoke-virtual {v7}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getTotalSelectedItems()I

    move-result v11

    if-nez v11, :cond_7

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/samsung/gallery/controller/StartEventChoiceActivityCmd;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v11

    const-string/jumbo v12, "EXIT_SELECTION_MODE"

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v11, 0x0

    goto/16 :goto_0

    :cond_7
    const/4 v11, 0x1

    goto/16 :goto_0
.end method


# virtual methods
.method public execute(Lorg/puremvc/java/multicore/interfaces/INotification;)V
    .locals 6

    const/4 v5, 0x3

    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getBody()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    move-object v2, v4

    check-cast v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aget-object v4, v2, v4

    check-cast v4, Landroid/content/Context;

    iput-object v4, p0, Lcom/sec/samsung/gallery/controller/StartEventChoiceActivityCmd;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/StartEventChoiceActivityCmd;->mContext:Landroid/content/Context;

    check-cast v4, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isMultiWindow()Z

    move-result v1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/StartEventChoiceActivityCmd;->checkEnableAddToEvent()Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "EventChoiceActivity"

    const-string/jumbo v5, "Add to Event is impossible"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    array-length v4, v2

    if-le v4, v5, :cond_1

    aget-object v3, v2, v5

    check-cast v3, Ljava/lang/String;

    :cond_1
    new-instance v0, Landroid/content/Intent;

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/StartEventChoiceActivityCmd;->mContext:Landroid/content/Context;

    const-class v5, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v4, "topPath"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "isMultiWindow"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/StartEventChoiceActivityCmd;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isExecuteFromBixby(Landroid/content/Context;)Z

    move-result v4

    invoke-static {v0, v4}, Lcom/samsung/android/devicecog/gallery/DCUtils;->setExtraExecuteFromBixby(Landroid/content/Intent;Z)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/StartEventChoiceActivityCmd;->mContext:Landroid/content/Context;

    check-cast v4, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const/16 v5, 0xc6f

    invoke-virtual {v4, v0, v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
