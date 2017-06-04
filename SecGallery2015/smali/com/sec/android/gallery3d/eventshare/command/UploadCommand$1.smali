.class Lcom/sec/android/gallery3d/eventshare/command/UploadCommand$1;
.super Ljava/lang/Object;
.source "UploadCommand.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;->onShareStarted(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;

.field final synthetic val$shareId:J


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;J)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;

    iput-wide p2, p0, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand$1;->val$shareId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;

    iget-object v0, v0, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    iget-wide v2, p0, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand$1;->val$shareId:J

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->setShareID(J)V

    sput v4, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;->mUploadingPercentage:I

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;

    iget-object v0, v0, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;->mShareNotiManager:Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;

    iget-object v1, v1, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v0, v1, v4}, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;->notifyState(Lcom/sec/android/gallery3d/eventshare/SharedEvent;I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;

    iget-object v0, v0, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;->mNotifier:Lcom/sec/android/gallery3d/eventshare/utils/EventShareNotifier;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;

    iget-object v2, v2, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getEventId()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;

    iget v3, v3, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;->mTotalFileCount:I

    iget-object v4, p0, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;

    iget v4, v4, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;->mUploadedFileCount:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareNotifier;->notifyState(IIII)V

    return-void
.end method
