.class Lcom/sec/android/gallery3d/eventshare/command/StopContentsUploadCommand$1;
.super Ljava/lang/Object;
.source "StopContentsUploadCommand.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/eventshare/command/StopContentsUploadCommand;->excute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/eventshare/command/StopContentsUploadCommand;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/eventshare/command/StopContentsUploadCommand;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/eventshare/command/StopContentsUploadCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/StopContentsUploadCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/StopContentsUploadCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/StopContentsUploadCommand;

    iget-object v0, v0, Lcom/sec/android/gallery3d/eventshare/command/StopContentsUploadCommand;->mNotifier:Lcom/sec/android/gallery3d/eventshare/utils/EventShareNotifier;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/command/StopContentsUploadCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/StopContentsUploadCommand;

    iget-object v2, v2, Lcom/sec/android/gallery3d/eventshare/command/StopContentsUploadCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getEventId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareNotifier;->notifyState(II)V

    return-void
.end method
