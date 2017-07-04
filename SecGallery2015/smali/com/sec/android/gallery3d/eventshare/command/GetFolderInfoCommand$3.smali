.class Lcom/sec/android/gallery3d/eventshare/command/GetFolderInfoCommand$3;
.super Ljava/lang/Object;
.source "GetFolderInfoCommand.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/eventshare/command/GetFolderInfoCommand;->onSuccess(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/CloudResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/eventshare/command/GetFolderInfoCommand;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/eventshare/command/GetFolderInfoCommand;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/eventshare/command/GetFolderInfoCommand$3;->this$0:Lcom/sec/android/gallery3d/eventshare/command/GetFolderInfoCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v4, p0, Lcom/sec/android/gallery3d/eventshare/command/GetFolderInfoCommand$3;->this$0:Lcom/sec/android/gallery3d/eventshare/command/GetFolderInfoCommand;

    iget-object v4, v4, Lcom/sec/android/gallery3d/eventshare/command/GetFolderInfoCommand;->mEventState:Lcom/sec/android/gallery3d/eventshare/EventState;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/eventshare/EventState;->isCanceled()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/gallery3d/eventshare/command/GetFolderInfoCommand$3;->this$0:Lcom/sec/android/gallery3d/eventshare/command/GetFolderInfoCommand;

    iget-object v4, v4, Lcom/sec/android/gallery3d/eventshare/command/GetFolderInfoCommand;->mIntent:Landroid/content/Intent;

    const-string/jumbo v5, "SHARE_EVENT_REQUEST_NOTI"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iget-object v4, p0, Lcom/sec/android/gallery3d/eventshare/command/GetFolderInfoCommand$3;->this$0:Lcom/sec/android/gallery3d/eventshare/command/GetFolderInfoCommand;

    iget-object v4, v4, Lcom/sec/android/gallery3d/eventshare/command/GetFolderInfoCommand;->mIntent:Landroid/content/Intent;

    const-string/jumbo v5, "SHARE_EVENT_FILE_SENDER_DUID"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Lcom/sec/android/gallery3d/eventshare/command/DownloadFolderCommand;

    iget-object v5, p0, Lcom/sec/android/gallery3d/eventshare/command/GetFolderInfoCommand$3;->this$0:Lcom/sec/android/gallery3d/eventshare/command/GetFolderInfoCommand;

    iget-object v5, v5, Lcom/sec/android/gallery3d/eventshare/command/GetFolderInfoCommand;->mEventState:Lcom/sec/android/gallery3d/eventshare/EventState;

    iget-object v6, p0, Lcom/sec/android/gallery3d/eventshare/command/GetFolderInfoCommand$3;->this$0:Lcom/sec/android/gallery3d/eventshare/command/GetFolderInfoCommand;

    iget-object v6, v6, Lcom/sec/android/gallery3d/eventshare/command/GetFolderInfoCommand;->mCandi:Ljava/util/ArrayList;

    invoke-direct {v4, v5, v6, v0, v1}, Lcom/sec/android/gallery3d/eventshare/command/DownloadFolderCommand;-><init>(Lcom/sec/android/gallery3d/eventshare/EventState;Ljava/util/ArrayList;ZLjava/lang/String;)V

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/eventshare/command/DownloadFolderCommand;->excute()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/sec/android/gallery3d/eventshare/command/GetFolderInfoCommand$3;->this$0:Lcom/sec/android/gallery3d/eventshare/command/GetFolderInfoCommand;

    iget-object v5, p0, Lcom/sec/android/gallery3d/eventshare/command/GetFolderInfoCommand$3;->this$0:Lcom/sec/android/gallery3d/eventshare/command/GetFolderInfoCommand;

    iget-object v5, v5, Lcom/sec/android/gallery3d/eventshare/command/GetFolderInfoCommand;->mCandi:Ljava/util/ArrayList;

    invoke-static {v4, v5}, Lcom/sec/android/gallery3d/eventshare/command/GetFolderInfoCommand;->access$100(Lcom/sec/android/gallery3d/eventshare/command/GetFolderInfoCommand;Ljava/util/ArrayList;)V

    const-string/jumbo v4, "GetFolderInfoCommand"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "elipsed time : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sec/android/gallery3d/eventshare/command/GetFolderInfoCommand$3;->this$0:Lcom/sec/android/gallery3d/eventshare/command/GetFolderInfoCommand;

    iget-object v4, v4, Lcom/sec/android/gallery3d/eventshare/command/GetFolderInfoCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->setUpdatedTime(J)V

    :cond_0
    return-void
.end method
