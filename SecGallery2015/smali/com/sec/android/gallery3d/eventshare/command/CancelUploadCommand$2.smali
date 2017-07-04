.class Lcom/sec/android/gallery3d/eventshare/command/CancelUploadCommand$2;
.super Ljava/lang/Object;
.source "CancelUploadCommand.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/eventshare/command/CancelUploadCommand;->onError(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/eventshare/command/CancelUploadCommand;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/eventshare/command/CancelUploadCommand;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/eventshare/command/CancelUploadCommand$2;->this$0:Lcom/sec/android/gallery3d/eventshare/command/CancelUploadCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/CancelUploadCommand$2;->this$0:Lcom/sec/android/gallery3d/eventshare/command/CancelUploadCommand;

    invoke-static {v0}, Lcom/sec/android/gallery3d/eventshare/command/CancelUploadCommand;->access$000(Lcom/sec/android/gallery3d/eventshare/command/CancelUploadCommand;)Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/command/CancelUploadCommand$2;->this$0:Lcom/sec/android/gallery3d/eventshare/command/CancelUploadCommand;

    iget-object v1, v1, Lcom/sec/android/gallery3d/eventshare/command/CancelUploadCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;->notifyState(Lcom/sec/android/gallery3d/eventshare/SharedEvent;I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/CancelUploadCommand$2;->this$0:Lcom/sec/android/gallery3d/eventshare/command/CancelUploadCommand;

    iget-object v0, v0, Lcom/sec/android/gallery3d/eventshare/command/CancelUploadCommand;->mNotifier:Lcom/sec/android/gallery3d/eventshare/utils/EventShareNotifier;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/command/CancelUploadCommand$2;->this$0:Lcom/sec/android/gallery3d/eventshare/command/CancelUploadCommand;

    iget-object v2, v2, Lcom/sec/android/gallery3d/eventshare/command/CancelUploadCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getEventId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareNotifier;->notifyState(II)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/CancelUploadCommand$2;->this$0:Lcom/sec/android/gallery3d/eventshare/command/CancelUploadCommand;

    iget-object v0, v0, Lcom/sec/android/gallery3d/eventshare/command/CancelUploadCommand;->mEventState:Lcom/sec/android/gallery3d/eventshare/EventState;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/EventState;->onFail()V

    return-void
.end method
