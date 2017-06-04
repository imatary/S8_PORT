.class Lcom/sec/android/gallery3d/eventshare/command/UploadFolderCommand$2;
.super Ljava/lang/Object;
.source "UploadFolderCommand.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/eventshare/command/UploadFolderCommand;->onSuccess(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadCompletedResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/eventshare/command/UploadFolderCommand;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/eventshare/command/UploadFolderCommand;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/eventshare/command/UploadFolderCommand$2;->this$0:Lcom/sec/android/gallery3d/eventshare/command/UploadFolderCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/UploadFolderCommand$2;->this$0:Lcom/sec/android/gallery3d/eventshare/command/UploadFolderCommand;

    iget-object v0, v0, Lcom/sec/android/gallery3d/eventshare/command/UploadFolderCommand;->mShareNotiManager:Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/command/UploadFolderCommand$2;->this$0:Lcom/sec/android/gallery3d/eventshare/command/UploadFolderCommand;

    iget-object v1, v1, Lcom/sec/android/gallery3d/eventshare/command/UploadFolderCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getEventId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;->cancel(I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/UploadFolderCommand$2;->this$0:Lcom/sec/android/gallery3d/eventshare/command/UploadFolderCommand;

    iget-object v0, v0, Lcom/sec/android/gallery3d/eventshare/command/UploadFolderCommand;->mEventState:Lcom/sec/android/gallery3d/eventshare/EventState;

    sget-object v1, Lcom/sec/android/gallery3d/eventshare/EventState$RunningType;->IDLE:Lcom/sec/android/gallery3d/eventshare/EventState$RunningType;

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/eventshare/EventState;->setRunningType(Lcom/sec/android/gallery3d/eventshare/EventState$RunningType;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/UploadFolderCommand$2;->this$0:Lcom/sec/android/gallery3d/eventshare/command/UploadFolderCommand;

    # invokes: Lcom/sec/android/gallery3d/eventshare/command/UploadFolderCommand;->showUploadedFilesCount()V
    invoke-static {v0}, Lcom/sec/android/gallery3d/eventshare/command/UploadFolderCommand;->access$000(Lcom/sec/android/gallery3d/eventshare/command/UploadFolderCommand;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/UploadFolderCommand$2;->this$0:Lcom/sec/android/gallery3d/eventshare/command/UploadFolderCommand;

    iget-object v0, v0, Lcom/sec/android/gallery3d/eventshare/command/UploadFolderCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->setShareID(J)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/UploadFolderCommand$2;->this$0:Lcom/sec/android/gallery3d/eventshare/command/UploadFolderCommand;

    iget-object v0, v0, Lcom/sec/android/gallery3d/eventshare/command/UploadFolderCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->setUploadedFileCount(I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/UploadFolderCommand$2;->this$0:Lcom/sec/android/gallery3d/eventshare/command/UploadFolderCommand;

    iget-object v0, v0, Lcom/sec/android/gallery3d/eventshare/command/UploadFolderCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->setUpdatedTime(J)V

    new-instance v0, Lcom/sec/android/gallery3d/eventshare/command/HostAddMemberCommand;

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/command/UploadFolderCommand$2;->this$0:Lcom/sec/android/gallery3d/eventshare/command/UploadFolderCommand;

    iget-object v1, v1, Lcom/sec/android/gallery3d/eventshare/command/UploadFolderCommand;->mEventState:Lcom/sec/android/gallery3d/eventshare/EventState;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/android/gallery3d/eventshare/command/HostAddMemberCommand;-><init>(Lcom/sec/android/gallery3d/eventshare/EventState;Landroid/content/Intent;)V

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/command/HostAddMemberCommand;->excute()V

    const-string/jumbo v0, "UploadFolderCommand"

    const-string/jumbo v1, "UploadFolderCommand END"

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
