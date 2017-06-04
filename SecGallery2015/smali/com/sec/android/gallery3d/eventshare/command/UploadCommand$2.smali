.class Lcom/sec/android/gallery3d/eventshare/command/UploadCommand$2;
.super Ljava/lang/Object;
.source "UploadCommand.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;->onProgress(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ProgressResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;

.field final synthetic val$progress:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ProgressResponse;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ProgressResponse;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand$2;->this$0:Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;

    iput-object p2, p0, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand$2;->val$progress:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ProgressResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v5, p0, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand$2;->val$progress:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ProgressResponse;

    invoke-virtual {v5}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ProgressResponse;->getOverallTotalBytes()J

    move-result-wide v2

    iget-object v5, p0, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand$2;->val$progress:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ProgressResponse;

    invoke-virtual {v5}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ProgressResponse;->getOverallProgressBytes()J

    move-result-wide v0

    long-to-float v5, v0

    long-to-float v6, v2

    div-float/2addr v5, v6

    const/high16 v6, 0x42c80000    # 100.0f

    mul-float/2addr v5, v6

    float-to-int v4, v5

    iget-object v5, p0, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand$2;->this$0:Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;

    iget-object v5, v5, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;->mShareNotiManager:Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;

    iget-object v6, p0, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand$2;->this$0:Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;

    iget-object v6, v6, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v5, v6, v4}, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;->notifyProgress(Lcom/sec/android/gallery3d/eventshare/SharedEvent;I)V

    iget-object v5, p0, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand$2;->this$0:Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;

    iget-object v5, v5, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;->mNotifier:Lcom/sec/android/gallery3d/eventshare/utils/EventShareNotifier;

    iget-object v6, p0, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand$2;->this$0:Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;

    iget-object v6, v6, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getEventId()I

    move-result v6

    invoke-virtual {v5, v4, v6}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareNotifier;->notifyProgress(II)V

    sput v4, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;->mUploadingPercentage:I

    return-void
.end method
