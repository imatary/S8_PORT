.class Lcom/sec/samsung/gallery/controller/EventAddTagCmd$1;
.super Ljava/lang/Object;
.source "EventAddTagCmd.java"

# interfaces
.implements Lcom/sec/android/gallery3d/data/OnProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/controller/EventAddTagCmd;->handleAddTagMedias()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mOneTagLimitExceeded:Z

.field private mOneTagPresent:Z

.field private mProcessedMediaCount:I

.field private mTagAddedMediaCount:I

.field final synthetic this$0:Lcom/sec/samsung/gallery/controller/EventAddTagCmd;

.field final synthetic val$mediaList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/controller/EventAddTagCmd;Ljava/util/List;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/EventAddTagCmd$1;->this$0:Lcom/sec/samsung/gallery/controller/EventAddTagCmd;

    iput-object p2, p0, Lcom/sec/samsung/gallery/controller/EventAddTagCmd$1;->val$mediaList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/sec/samsung/gallery/controller/EventAddTagCmd$1;->mProcessedMediaCount:I

    iput v0, p0, Lcom/sec/samsung/gallery/controller/EventAddTagCmd$1;->mTagAddedMediaCount:I

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/controller/EventAddTagCmd$1;->mOneTagLimitExceeded:Z

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/controller/EventAddTagCmd$1;->mOneTagPresent:Z

    return-void
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/controller/EventAddTagCmd$1;)Ljava/lang/CharSequence;
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/EventAddTagCmd$1;->getToastText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private getToastText()Ljava/lang/CharSequence;
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/EventAddTagCmd$1;->this$0:Lcom/sec/samsung/gallery/controller/EventAddTagCmd;

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/controller/EventAddTagCmd$1;->mOneTagLimitExceeded:Z

    iget-boolean v2, p0, Lcom/sec/samsung/gallery/controller/EventAddTagCmd$1;->mOneTagPresent:Z

    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/controller/EventAddTagCmd;->access$000(Lcom/sec/samsung/gallery/controller/EventAddTagCmd;ZZ)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/EventAddTagCmd$1;->val$mediaList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v3, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/EventAddTagCmd$1;->this$0:Lcom/sec/samsung/gallery/controller/EventAddTagCmd;

    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/EventAddTagCmd;->access$100(Lcom/sec/samsung/gallery/controller/EventAddTagCmd;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a02d0

    new-array v2, v3, [Ljava/lang/Object;

    iget v3, p0, Lcom/sec/samsung/gallery/controller/EventAddTagCmd$1;->mTagAddedMediaCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-boolean v0, p0, Lcom/sec/samsung/gallery/controller/EventAddTagCmd$1;->mOneTagLimitExceeded:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/EventAddTagCmd$1;->this$0:Lcom/sec/samsung/gallery/controller/EventAddTagCmd;

    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/EventAddTagCmd;->access$100(Lcom/sec/samsung/gallery/controller/EventAddTagCmd;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a04ee

    new-array v2, v3, [Ljava/lang/Object;

    const/16 v3, 0x1e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/sec/samsung/gallery/controller/EventAddTagCmd$1;->mOneTagPresent:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/EventAddTagCmd$1;->this$0:Lcom/sec/samsung/gallery/controller/EventAddTagCmd;

    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/EventAddTagCmd;->access$100(Lcom/sec/samsung/gallery/controller/EventAddTagCmd;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a0444

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/EventAddTagCmd$1;->this$0:Lcom/sec/samsung/gallery/controller/EventAddTagCmd;

    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/EventAddTagCmd;->access$100(Lcom/sec/samsung/gallery/controller/EventAddTagCmd;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a02cf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public handleOperation(Lcom/sec/android/gallery3d/data/MediaObject;)Z
    .locals 11

    const/4 v6, 0x1

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/EventAddTagCmd$1;->this$0:Lcom/sec/samsung/gallery/controller/EventAddTagCmd;

    invoke-static {v5}, Lcom/sec/samsung/gallery/controller/EventAddTagCmd;->access$100(Lcom/sec/samsung/gallery/controller/EventAddTagCmd;)Landroid/content/Context;

    move-result-object v7

    move-object v5, p1

    check-cast v5, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/MediaItem;->getItemId()I

    move-result v5

    invoke-static {v7, v5}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->queryTag(Landroid/content/Context;I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/16 v7, 0x1e

    if-ge v5, v7, :cond_4

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/EventAddTagCmd$1;->this$0:Lcom/sec/samsung/gallery/controller/EventAddTagCmd;

    invoke-static {v5, v0}, Lcom/sec/samsung/gallery/controller/EventAddTagCmd;->access$700(Lcom/sec/samsung/gallery/controller/EventAddTagCmd;Ljava/util/ArrayList;)Z

    move-result v5

    if-eqz v5, :cond_1

    iput-boolean v6, p0, Lcom/sec/samsung/gallery/controller/EventAddTagCmd$1;->mOneTagPresent:Z

    :cond_0
    :goto_0
    return v6

    :cond_1
    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/EventAddTagCmd$1;->this$0:Lcom/sec/samsung/gallery/controller/EventAddTagCmd;

    invoke-static {v5}, Lcom/sec/samsung/gallery/controller/EventAddTagCmd;->access$100(Lcom/sec/samsung/gallery/controller/EventAddTagCmd;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/EventAddTagCmd$1;->this$0:Lcom/sec/samsung/gallery/controller/EventAddTagCmd;

    invoke-static {v5}, Lcom/sec/samsung/gallery/controller/EventAddTagCmd;->access$800(Lcom/sec/samsung/gallery/controller/EventAddTagCmd;)Ljava/lang/String;

    move-result-object v8

    check-cast p1, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getItemId()I

    move-result v9

    iget v5, p0, Lcom/sec/samsung/gallery/controller/EventAddTagCmd$1;->mProcessedMediaCount:I

    iget-object v10, p0, Lcom/sec/samsung/gallery/controller/EventAddTagCmd$1;->val$mediaList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    if-eq v5, v10, :cond_2

    move v5, v6

    :goto_1
    invoke-static {v7, v8, v9, v5}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->insertTag(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "usertag/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v5, v1, v6

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_3

    iget v5, p0, Lcom/sec/samsung/gallery/controller/EventAddTagCmd$1;->mTagAddedMediaCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/sec/samsung/gallery/controller/EventAddTagCmd$1;->mTagAddedMediaCount:I

    :goto_2
    iget v5, p0, Lcom/sec/samsung/gallery/controller/EventAddTagCmd$1;->mProcessedMediaCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/sec/samsung/gallery/controller/EventAddTagCmd$1;->mProcessedMediaCount:I

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    :cond_3
    const-string/jumbo v5, "EventAddTagCmd"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "uri result is error["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    iput-boolean v6, p0, Lcom/sec/samsung/gallery/controller/EventAddTagCmd$1;->mOneTagLimitExceeded:Z

    goto :goto_0
.end method

.method public onCompleted(Z)V
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v0, "EventAddTagCmd"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCompleted: result is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/EventAddTagCmd$1;->this$0:Lcom/sec/samsung/gallery/controller/EventAddTagCmd;

    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/EventAddTagCmd;->access$200(Lcom/sec/samsung/gallery/controller/EventAddTagCmd;)Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/EventAddTagCmd$1;->this$0:Lcom/sec/samsung/gallery/controller/EventAddTagCmd;

    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/EventAddTagCmd;->access$200(Lcom/sec/samsung/gallery/controller/EventAddTagCmd;)Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->closeProgressDialogInstantly()V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/EventAddTagCmd$1;->this$0:Lcom/sec/samsung/gallery/controller/EventAddTagCmd;

    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/EventAddTagCmd;->access$100(Lcom/sec/samsung/gallery/controller/EventAddTagCmd;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryApplication()Lcom/sec/android/gallery3d/app/GalleryApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/gallery3d/app/GalleryApp;->isFestivalMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/EventAddTagCmd$1;->this$0:Lcom/sec/samsung/gallery/controller/EventAddTagCmd;

    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/EventAddTagCmd;->access$100(Lcom/sec/samsung/gallery/controller/EventAddTagCmd;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.sec.android.widget.myeventwidget.intent.action.ACTION_DATASET_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/EventAddTagCmd$1;->this$0:Lcom/sec/samsung/gallery/controller/EventAddTagCmd;

    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/EventAddTagCmd;->access$400(Lcom/sec/samsung/gallery/controller/EventAddTagCmd;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sec/samsung/gallery/controller/EventAddTagCmd$1$1;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/controller/EventAddTagCmd$1$1;-><init>(Lcom/sec/samsung/gallery/controller/EventAddTagCmd$1;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/EventAddTagCmd$1;->this$0:Lcom/sec/samsung/gallery/controller/EventAddTagCmd;

    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/EventAddTagCmd;->access$100(Lcom/sec/samsung/gallery/controller/EventAddTagCmd;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "TAG_UPDATE"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/EventAddTagCmd$1;->this$0:Lcom/sec/samsung/gallery/controller/EventAddTagCmd;

    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/EventAddTagCmd;->access$100(Lcom/sec/samsung/gallery/controller/EventAddTagCmd;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v0

    const-string/jumbo v1, "EXIT_SELECTION_MODE"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/EventAddTagCmd$1;->this$0:Lcom/sec/samsung/gallery/controller/EventAddTagCmd;

    invoke-static {v0, v4}, Lcom/sec/samsung/gallery/controller/EventAddTagCmd;->access$502(Lcom/sec/samsung/gallery/controller/EventAddTagCmd;Lcom/sec/samsung/gallery/util/FileUtil;)Lcom/sec/samsung/gallery/util/FileUtil;

    return-void

    :cond_3
    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/EventAddTagCmd$1;->this$0:Lcom/sec/samsung/gallery/controller/EventAddTagCmd;

    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/EventAddTagCmd;->access$100(Lcom/sec/samsung/gallery/controller/EventAddTagCmd;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isExecuteFromBixby(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/EventAddTagCmd$1;->this$0:Lcom/sec/samsung/gallery/controller/EventAddTagCmd;

    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/EventAddTagCmd;->access$100(Lcom/sec/samsung/gallery/controller/EventAddTagCmd;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "TagSave"

    sget-object v2, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->FAILURE:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;)V

    goto :goto_0
.end method

.method public onProgress(II)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/EventAddTagCmd$1;->this$0:Lcom/sec/samsung/gallery/controller/EventAddTagCmd;

    invoke-static {v0, p1}, Lcom/sec/samsung/gallery/controller/EventAddTagCmd;->access$602(Lcom/sec/samsung/gallery/controller/EventAddTagCmd;I)I

    return-void
.end method
