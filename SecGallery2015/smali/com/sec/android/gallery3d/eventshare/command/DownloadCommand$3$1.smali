.class Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$3$1;
.super Ljava/lang/Object;
.source "DownloadCommand.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$3;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$3;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$3$1;->this$1:Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$3$1;->this$1:Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$3;

    iget-object v0, v0, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$3;->this$0:Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;

    iget-object v0, v0, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;->mNotifier:Lcom/sec/android/gallery3d/eventshare/utils/EventShareNotifier;

    const/16 v1, 0xd

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$3$1;->this$1:Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$3;

    iget-object v2, v2, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$3;->this$0:Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;

    iget-object v2, v2, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getEventId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareNotifier;->notifyState(II)V

    const-string/jumbo v0, "DownloadCommand"

    const-string/jumbo v1, "onError, no network connection returned."

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$3$1;->this$1:Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$3;

    iget-object v0, v0, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$3;->this$0:Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;

    iget-object v0, v0, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;->mEventState:Lcom/sec/android/gallery3d/eventshare/EventState;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/EventState;->onFail()V

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$3$1;->this$1:Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$3;

    iget-object v0, v0, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$3;->this$0:Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;

    iget-object v0, v0, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;->mEventState:Lcom/sec/android/gallery3d/eventshare/EventState;

    sget-object v1, Lcom/sec/android/gallery3d/eventshare/EventState$RunningType;->IDLE:Lcom/sec/android/gallery3d/eventshare/EventState$RunningType;

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/eventshare/EventState;->setRunningType(Lcom/sec/android/gallery3d/eventshare/EventState$RunningType;)V

    return-void
.end method
