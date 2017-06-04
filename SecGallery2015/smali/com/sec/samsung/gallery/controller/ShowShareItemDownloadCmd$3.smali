.class Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$3;
.super Ljava/lang/Object;
.source "ShowShareItemDownloadCmd.java"

# interfaces
.implements Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$OnChannelDownloadProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->prepareDownload(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getDownloadedString(Z)Ljava/lang/String;
    .locals 3

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;

    const/4 v2, 0x1

    # invokes: Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->getString(Z)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->access$700(Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;Z)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->access$200(Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0480

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public onCompleted(Z)V
    .locals 8

    const/4 v7, 0x0

    const-string/jumbo v4, "ShowShareItmDwnloadCmd"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onCompleted : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;
    invoke-static {v4}, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->access$300(Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;)Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;
    invoke-static {v4}, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->access$300(Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;)Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->closeCustomProgressDialog()V

    :cond_0
    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;

    const/4 v5, 0x0

    # setter for: Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->mOnProgressListener:Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$OnChannelDownloadProgressListener;
    invoke-static {v4, v5}, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->access$402(Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$OnChannelDownloadProgressListener;)Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$OnChannelDownloadProgressListener;

    new-instance v1, Lcom/sec/samsung/gallery/lib/factory/MediaScannerFactory;

    invoke-direct {v1}, Lcom/sec/samsung/gallery/lib/factory/MediaScannerFactory;-><init>()V

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->access$200(Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/sec/samsung/gallery/lib/factory/LibFactory;->create(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/samsung/gallery/lib/libinterface/MediaScannerInterface;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->EXTERNAL_SD_DIRECTORY:Ljava/lang/String;
    invoke-static {}, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->access$500()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "Download"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    aput-object v0, v4, v7

    invoke-interface {v2, v4}, Lcom/sec/samsung/gallery/lib/libinterface/MediaScannerInterface;->scanDirectories([Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->mIsNeedToShare:Z
    invoke-static {v4}, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->access$600(Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->access$200(Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v4

    const-string/jumbo v5, "EXIT_SELECTION_MODE"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$3;->getDownloadedString(Z)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->access$200(Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public onProgress(JZ)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;
    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->access$300(Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;)Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->increaseProgress(JZ)V

    return-void
.end method
