.class Lcom/sec/android/gallery3d/eventshare/command/UploadCommand$3;
.super Ljava/lang/Object;
.source "UploadCommand.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;->onFileUploaded(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadContentsResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand$3;->this$0:Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand$3;->this$0:Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;

    iget-object v0, v0, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;->mNotifier:Lcom/sec/android/gallery3d/eventshare/utils/EventShareNotifier;

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand$3;->this$0:Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;

    iget v1, v1, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;->mTotalFileCount:I

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand$3;->this$0:Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;

    iget v2, v2, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;->mUploadedFileCount:I

    iget-object v3, p0, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand$3;->this$0:Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;

    iget-object v3, v3, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getEventId()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareNotifier;->notifyUploadCount(III)V

    return-void
.end method
