.class Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd$1;
.super Ljava/lang/Object;
.source "SCloudRecycleBinFileProcessingCmd.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd$1;->this$0:Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 8

    const-string/jumbo v1, "SCloudRecycleBinFP"

    const-string/jumbo v4, "Recycle bin file process is cancelled"

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd$1;->this$0:Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;->mTask:Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd$SCloudFileProcessingTask;
    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;->access$000(Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;)Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd$SCloudFileProcessingTask;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd$1;->this$0:Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;->mTask:Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd$SCloudFileProcessingTask;
    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;->access$000(Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;)Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd$SCloudFileProcessingTask;

    move-result-object v1

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd$SCloudFileProcessingTask;->cancel(Z)Z

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd$1;->this$0:Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;->access$100(Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/scloud/cloudagent/CloudStore$API;->cancelRevertClear(Landroid/content/Context;)Z

    const-string/jumbo v1, "SCloudRecycleBinFP"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "cancel revert or clear in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SCloudRecycleBinFP"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
