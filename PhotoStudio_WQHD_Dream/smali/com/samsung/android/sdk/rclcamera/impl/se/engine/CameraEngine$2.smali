.class Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$2;
.super Ljava/lang/Object;
.source "CameraEngine.java"

# interfaces
.implements Lcom/samsung/android/camera/core/SemCamera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$2;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLcom/samsung/android/camera/core/SemCamera;)V
    .locals 11

    const/high16 v10, 0x42c80000    # 100.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const-wide/16 v8, 0x0

    const/4 v6, 0x2

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$2;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCamera:Lcom/samsung/android/camera/core/SemCamera;
    invoke-static {v1}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->access$200(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;)Lcom/samsung/android/camera/core/SemCamera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/camera/core/SemCamera;->cancelAutoFocus()V

    if-nez p1, :cond_0

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    aget-object v3, v3, v6

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": data is null!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    aget-object v3, v3, v6

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mCameraInfo.facing : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$2;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraInfo:Lcom/samsung/android/camera/core/SemCamera$CameraInfo;
    invoke-static {v3}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->access$300(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;)Lcom/samsung/android/camera/core/SemCamera$CameraInfo;

    move-result-object v3

    iget v3, v3, Lcom/samsung/android/camera/core/SemCamera$CameraInfo;->facing:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", width : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$2;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;
    invoke-static {v3}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->access$400(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;)Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->getCameraResolution()Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;->width()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", height : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$2;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;
    invoke-static {v3}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->access$400(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;)Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->getCameraResolution()Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;->height()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", legnth : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Start ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    aget-object v1, v1, v6

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Visible area, width= "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$2;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;
    invoke-static {v1}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->access$500(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;)Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->getVisibleAreaRatio()Landroid/util/Pair;

    move-result-object v1

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    mul-float/2addr v1, v10

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "%"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " height= "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$2;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;
    invoke-static {v1}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->access$500(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;)Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->getVisibleAreaRatio()Landroid/util/Pair;

    move-result-object v1

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    mul-float/2addr v1, v10

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "%"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$2;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;

    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$2;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;

    const/4 v3, -0x1

    # setter for: Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCroppedWidth:I
    invoke-static {v2, v3}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->access$702(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;I)I

    move-result v2

    # setter for: Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCroppedHeight:I
    invoke-static {v1, v2}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->access$602(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;I)I

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$2;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;
    invoke-static {v1}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->access$500(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;)Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->getVisibleAreaRatio()Landroid/util/Pair;

    move-result-object v1

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    float-to-double v2, v1

    cmpl-double v1, v2, v8

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$2;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;
    invoke-static {v1}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->access$500(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;)Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->getVisibleAreaRatio()Landroid/util/Pair;

    move-result-object v1

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    cmpg-float v1, v1, v7

    if-ltz v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$2;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;
    invoke-static {v1}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->access$500(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;)Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->getVisibleAreaRatio()Landroid/util/Pair;

    move-result-object v1

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    float-to-double v2, v1

    cmpl-double v1, v2, v8

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$2;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;
    invoke-static {v1}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->access$500(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;)Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->getVisibleAreaRatio()Landroid/util/Pair;

    move-result-object v1

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    cmpg-float v1, v1, v7

    if-gez v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$2;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;

    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$2;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;
    invoke-static {v2}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->access$500(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;)Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->getVisibleAreaRatio()Landroid/util/Pair;

    move-result-object v2

    # invokes: Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->cropJpegData([BLandroid/util/Pair;)[B
    invoke-static {v1, p1, v2}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->access$800(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;[BLandroid/util/Pair;)[B

    move-result-object p1

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$2;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;
    invoke-static {v1}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->access$500(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;)Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->abandonAudioFocus()V

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$2;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;

    # invokes: Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->saveAndRegisterImage([B)Landroid/net/Uri;
    invoke-static {v1, p1}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->access$900(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;[B)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$2;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;
    invoke-static {v1}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->access$500(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;)Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->onImageStoringComplete(Landroid/net/Uri;)V

    :goto_1
    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$2;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mEngineHandler:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$EngineHandler;
    invoke-static {v1}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->access$100(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;)Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$EngineHandler;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$ENGINE_MESSAGE;->TAKE_PICTURE_COMPLETE:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$ENGINE_MESSAGE;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$EngineHandler;->sendMessage(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$ENGINE_MESSAGE;)V

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    aget-object v3, v3, v6

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", End ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/16 :goto_0

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$2;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;
    invoke-static {v1}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->access$500(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;)Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->onErrorOccurred(I)V

    goto :goto_1
.end method
