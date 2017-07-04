.class Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$1;
.super Ljava/lang/Object;
.source "DownloadCommand.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;->onFileDownloaded(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;

.field final synthetic val$data:Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$ProcessEventData;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$ProcessEventData;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;

    iput-object p2, p0, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$1;->val$data:Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$ProcessEventData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$1;->val$data:Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$ProcessEventData;

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;->access$100(Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$ProcessEventData;)V

    return-void
.end method
