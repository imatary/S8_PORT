.class Lcom/sec/android/app/camera/Camera$14;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/Camera;->onImageStoringCompleted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/Camera;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/Camera;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/Camera$14;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    iget-object v6, p0, Lcom/sec/android/app/camera/Camera$14;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-static {v6}, Lcom/sec/android/app/camera/Camera;->access$400(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object v6

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/Engine;->isRecording()Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/sec/android/app/camera/Camera$14;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-static {v6}, Lcom/sec/android/app/camera/Camera;->access$400(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object v6

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/Engine;->waitForPictureSavingThread()V

    const-string v6, "Camera7"

    const-string v7, "review picture : start"

    invoke-static {v6, v7}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/sec/android/app/camera/Camera$14;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-static {v6}, Lcom/sec/android/app/camera/Camera;->access$400(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object v6

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/Engine;->getLastContentData()Lcom/sec/android/app/camera/interfaces/Engine$ContentData;

    move-result-object v1

    iget-object v6, p0, Lcom/sec/android/app/camera/Camera$14;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-static {v6}, Lcom/sec/android/app/camera/Camera;->access$400(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object v6

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/Engine;->getLastContentFilePath()Ljava/lang/String;

    move-result-object v2

    iget-object v6, p0, Lcom/sec/android/app/camera/Camera$14;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-static {v6}, Lcom/sec/android/app/camera/Camera;->access$400(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object v6

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/Engine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v3

    iget-object v6, p0, Lcom/sec/android/app/camera/Camera$14;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-static {v6}, Lcom/sec/android/app/camera/Camera;->access$400(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object v6

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/Engine;->getLastContentData()Lcom/sec/android/app/camera/interfaces/Engine$ContentData;

    move-result-object v6

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/Engine$ContentData;->getCaptureData()[B

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/camera/Camera$14;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-static {v7}, Lcom/sec/android/app/camera/Camera;->access$3000(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/LatestMediaContent;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/camera/LatestMediaContent;->getWidth()I

    move-result v7

    iget-object v8, p0, Lcom/sec/android/app/camera/Camera$14;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-static {v8}, Lcom/sec/android/app/camera/Camera;->access$3000(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/LatestMediaContent;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/camera/LatestMediaContent;->getHeight()I

    move-result v8

    invoke-static {v6, v7, v8}, Lcom/sec/android/app/camera/util/ImageUtils;->getReviewBitmap([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    const-string v6, "Camera7"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "review picture : getReviewBitmap "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ms"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/sec/android/app/camera/Camera$14;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine$ContentData;->getOrientation()I

    move-result v7

    invoke-static {v6, v0, v7, v2, v3}, Lcom/sec/android/app/camera/Camera;->access$3100(Lcom/sec/android/app/camera/Camera;Landroid/graphics/Bitmap;ILjava/lang/String;Landroid/net/Uri;)V

    const-string v6, "Camera7"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "review picture : end "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ms"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string v6, "Camera7"

    const-string v7, "review picture : ignore review. recording"

    invoke-static {v6, v7}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
