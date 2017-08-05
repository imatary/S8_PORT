.class Lcom/sec/android/app/camera/engine/CommonEngine$26;
.super Ljava/lang/Object;
.source "CommonEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/engine/CommonEngine;->makeAndUpdateThumbnail([B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

.field final synthetic val$intData:[I


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/engine/CommonEngine;[I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$26;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iput-object p2, p0, Lcom/sec/android/app/camera/engine/CommonEngine$26;->val$intData:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$26;->val$intData:[I

    iget-object v4, p0, Lcom/sec/android/app/camera/engine/CommonEngine$26;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-static {v4}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$4700(Lcom/sec/android/app/camera/engine/CommonEngine;)I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/engine/CommonEngine$26;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-static {v5}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$4800(Lcom/sec/android/app/camera/engine/CommonEngine;)I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$26;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v4, p0, Lcom/sec/android/app/camera/engine/CommonEngine$26;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-static {v4}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$3800(Lcom/sec/android/app/camera/engine/CommonEngine;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/engine/CommonEngine;->calculateOrientationForPicture(I)I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$26;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-static {v3}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$4900(Lcom/sec/android/app/camera/engine/CommonEngine;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$26;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-static {v3}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$5000(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/app/camera/interfaces/Engine$BurstCaptureEventListener;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$26;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-static {v3}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$5000(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/app/camera/interfaces/Engine$BurstCaptureEventListener;

    move-result-object v3

    invoke-interface {v3, v0, v2}, Lcom/sec/android/app/camera/interfaces/Engine$BurstCaptureEventListener;->onBurstCaptureThumbnailTaken(Landroid/graphics/Bitmap;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$26;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-static {v3}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$800(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$26;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-static {v3}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$800(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSelfFlip()I

    move-result v3

    if-ne v3, v1, :cond_6

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$26;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/engine/CommonEngine;->isPostProcessedThumbnailPictureCallbackAvailable()Z

    move-result v3

    if-nez v3, :cond_6

    sget-boolean v3, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_LIVE_BEAUTY:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$26;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-static {v3}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$800(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getBeautyLevel()I

    move-result v3

    if-nez v3, :cond_6

    :cond_2
    sget-boolean v3, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_LIVE_BEAUTY_EYEENLARGE:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$26;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-static {v3}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$800(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getEyeEnlargeLevel()I

    move-result v3

    if-nez v3, :cond_6

    :cond_3
    sget-boolean v3, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_LIVE_BEAUTY_SLIMFACE:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$26;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-static {v3}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$800(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSlimFaceLevel()I

    move-result v3

    if-nez v3, :cond_6

    :cond_4
    sget-boolean v3, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_LIVE_BEAUTY_SKINCOLOR:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$26;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-static {v3}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$800(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSkinColorLevel()I

    move-result v3

    if-nez v3, :cond_6

    :cond_5
    :goto_1
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$26;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-static {v3}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$400(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v3

    invoke-interface {v3, v0, v2, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->updateThumbnail(Landroid/graphics/Bitmap;IZ)V

    goto :goto_0

    :cond_6
    const/4 v1, 0x0

    goto :goto_1
.end method
