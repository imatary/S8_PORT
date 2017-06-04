.class Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$2;
.super Ljava/lang/Object;
.source "DownloadCommand.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;->onDownloadStarted(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;

.field final synthetic val$shareId:J


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;J)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$2;->this$0:Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;

    iput-wide p2, p0, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$2;->val$shareId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$2;->this$0:Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;

    iget-object v0, v0, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    iget-wide v2, p0, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$2;->val$shareId:J

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->setShareID(J)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$2;->this$0:Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;

    iget-object v0, v0, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;->mNotifier:Lcom/sec/android/gallery3d/eventshare/utils/EventShareNotifier;

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$2;->this$0:Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;

    iget-object v2, v2, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getEventId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareNotifier;->notifyState(II)V

    return-void
.end method
