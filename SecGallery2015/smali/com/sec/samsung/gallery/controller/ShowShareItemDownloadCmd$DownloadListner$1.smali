.class Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$DownloadListner$1;
.super Ljava/lang/Object;
.source "ShowShareItemDownloadCmd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$DownloadListner;->onFileDownloaded(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$DownloadListner;

.field final synthetic val$fileName:Ljava/lang/String;

.field final synthetic val$localPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$DownloadListner;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$DownloadListner$1;->this$1:Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$DownloadListner;

    iput-object p2, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$DownloadListner$1;->val$fileName:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$DownloadListner$1;->val$localPath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-wide/16 v4, 0x3e8

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$DownloadListner$1;->this$1:Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$DownloadListner;

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$DownloadListner$1;->val$fileName:Ljava/lang/String;

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$DownloadListner$1;->val$localPath:Ljava/lang/String;

    # invokes: Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$DownloadListner;->updateCMHTable(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v4, v5, v6}, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$DownloadListner;->access$1400(Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$DownloadListner;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$DownloadListner$1;->this$1:Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$DownloadListner;

    iget-object v4, v4, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$DownloadListner;->this$0:Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->mSuccessCount:I
    invoke-static {v4}, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->access$1300(Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;)I

    move-result v4

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$DownloadListner$1;->this$1:Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$DownloadListner;

    iget-object v5, v5, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$DownloadListner;->this$0:Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->mTotalCount:I
    invoke-static {v5}, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->access$1500(Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;)I

    move-result v5

    if-ne v4, v5, :cond_2

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$DownloadListner$1;->this$1:Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$DownloadListner;

    iget-object v4, v4, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$DownloadListner;->this$0:Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->mTotalCount:I
    invoke-static {v4}, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->access$1500(Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;)I

    move-result v4

    if-ne v4, v8, :cond_2

    new-array v3, v8, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$DownloadListner$1;->this$1:Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$DownloadListner;

    iget-object v4, v4, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$DownloadListner;->this$0:Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->mShareItems:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->access$900(Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->getCMHFileId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$DownloadListner$1;->this$1:Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$DownloadListner;

    iget-object v4, v4, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$DownloadListner;->this$0:Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->mShareItems:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->access$900(Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->getMimeType()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$DownloadListner$1;->this$1:Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$DownloadListner;

    iget-object v4, v4, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$DownloadListner;->this$0:Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->mIsNeedToVideoPlay:Z
    invoke-static {v4}, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->access$1600(Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v2, :cond_0

    const-string/jumbo v4, "video"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$DownloadListner$1;->this$1:Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$DownloadListner;

    iget-object v4, v4, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$DownloadListner;->this$0:Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->access$200(Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v4

    const-string/jumbo v5, "RESTART_VIDEO_PLAY"

    invoke-virtual {v4, v5, v3}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v4, "ShowShareItmDwnloadCmd"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_1
    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$DownloadListner$1;->this$1:Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$DownloadListner;

    iget-object v4, v4, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$DownloadListner;->this$0:Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->mIsNeedToShare:Z
    invoke-static {v4}, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->access$600(Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$DownloadListner$1;->this$1:Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$DownloadListner;

    iget-object v4, v4, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$DownloadListner;->this$0:Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->access$200(Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;)Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v5, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$DownloadListner$1$1;

    invoke-direct {v5, p0}, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$DownloadListner$1$1;-><init>(Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$DownloadListner$1;)V

    invoke-virtual {v4, v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_2
    if-nez v1, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$DownloadListner$1;->this$1:Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$DownloadListner;

    iget-object v4, v4, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$DownloadListner;->this$0:Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->mIsNeedToShare:Z
    invoke-static {v4}, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->access$600(Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$DownloadListner$1;->this$1:Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$DownloadListner;

    iget-object v4, v4, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$DownloadListner;->this$0:Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->mIsNeedToVideoPlay:Z
    invoke-static {v4}, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->access$1600(Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;)Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_3
    const-string/jumbo v4, "ShowShareItmDwnloadCmd"

    const-string/jumbo v5, "error in updating file"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$DownloadListner$1;->this$1:Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$DownloadListner;

    iget-object v4, v4, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$DownloadListner;->this$0:Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;
    invoke-static {v4}, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->access$300(Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;)Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$DownloadListner$1;->this$1:Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$DownloadListner;

    iget-object v4, v4, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$DownloadListner;->this$0:Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;
    invoke-static {v4}, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->access$300(Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;)Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->dismiss()V

    :cond_4
    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$DownloadListner$1;->this$1:Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$DownloadListner;

    iget-object v4, v4, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$DownloadListner;->this$0:Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->access$200(Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0a0170

    invoke-static {v4, v5}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    goto :goto_1
.end method
