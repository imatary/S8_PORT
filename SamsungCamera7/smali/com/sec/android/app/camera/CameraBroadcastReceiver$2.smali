.class Lcom/sec/android/app/camera/CameraBroadcastReceiver$2;
.super Landroid/content/BroadcastReceiver;
.source "CameraBroadcastReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/CameraBroadcastReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/CameraBroadcastReceiver;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/CameraBroadcastReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/CameraBroadcastReceiver$2;->this$0:Lcom/sec/android/app/camera/CameraBroadcastReceiver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    const/16 v9, 0x16

    const/4 v8, 0x4

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "CameraBroadcastReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "reason"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraBroadcastReceiver$2;->this$0:Lcom/sec/android/app/camera/CameraBroadcastReceiver;

    iget-object v3, v3, Lcom/sec/android/app/camera/CameraBroadcastReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isEasyCamera()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "CameraBroadcastReceiver"

    const-string v4, "as easy camera camera enabled, previous camera finish"

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraBroadcastReceiver$2;->this$0:Lcom/sec/android/app/camera/CameraBroadcastReceiver;

    iget-object v3, v3, Lcom/sec/android/app/camera/CameraBroadcastReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    const/16 v4, 0x7e6

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/Camera;->finishActivity(I)V

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraBroadcastReceiver$2;->this$0:Lcom/sec/android/app/camera/CameraBroadcastReceiver;

    iget-object v3, v3, Lcom/sec/android/app/camera/CameraBroadcastReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->finishAndRemoveTask()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraBroadcastReceiver$2;->this$0:Lcom/sec/android/app/camera/CameraBroadcastReceiver;

    iget-object v3, v3, Lcom/sec/android/app/camera/CameraBroadcastReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->onScreenOff()V

    goto :goto_0

    :cond_2
    const-string v3, "GalleryOnLockscreen"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraBroadcastReceiver$2;->this$0:Lcom/sec/android/app/camera/CameraBroadcastReceiver;

    iget-object v3, v3, Lcom/sec/android/app/camera/CameraBroadcastReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->semIsResumed()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "CameraBroadcastReceiver"

    const-string v4, "do not invisible surfaceView because activity is resumed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraBroadcastReceiver$2;->this$0:Lcom/sec/android/app/camera/CameraBroadcastReceiver;

    iget-object v3, v3, Lcom/sec/android/app/camera/CameraBroadcastReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getGLSurfaceView()Landroid/opengl/GLSurfaceView;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraBroadcastReceiver$2;->this$0:Lcom/sec/android/app/camera/CameraBroadcastReceiver;

    iget-object v3, v3, Lcom/sec/android/app/camera/CameraBroadcastReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getGLSurfaceView()Landroid/opengl/GLSurfaceView;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/opengl/GLSurfaceView;->setVisibility(I)V

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraBroadcastReceiver$2;->this$0:Lcom/sec/android/app/camera/CameraBroadcastReceiver;

    iget-object v3, v3, Lcom/sec/android/app/camera/CameraBroadcastReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getGLSurfaceView()Landroid/opengl/GLSurfaceView;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/opengl/GLSurfaceView;->setVisibility(I)V

    :cond_4
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraBroadcastReceiver$2;->this$0:Lcom/sec/android/app/camera/CameraBroadcastReceiver;

    iget-object v3, v3, Lcom/sec/android/app/camera/CameraBroadcastReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraBroadcastReceiver$2;->this$0:Lcom/sec/android/app/camera/CameraBroadcastReceiver;

    iget-object v3, v3, Lcom/sec/android/app/camera/CameraBroadcastReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getPreviewSurface()Landroid/view/SurfaceView;

    move-result-object v3

    if-eqz v3, :cond_5

    const-string v3, "CameraBroadcastReceiver"

    const-string v4, "mGalleryOnLockscreenReceiver : invisible surfaceView when transparent gallery completed image loading."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraBroadcastReceiver$2;->this$0:Lcom/sec/android/app/camera/CameraBroadcastReceiver;

    iget-object v3, v3, Lcom/sec/android/app/camera/CameraBroadcastReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getPreviewSurface()Landroid/view/SurfaceView;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/view/SurfaceView;->setVisibility(I)V

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraBroadcastReceiver$2;->this$0:Lcom/sec/android/app/camera/CameraBroadcastReceiver;

    iget-object v3, v3, Lcom/sec/android/app/camera/CameraBroadcastReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/Engine;->resetOriginalViewFinderSize()V

    :cond_5
    sget-boolean v3, Lcom/sec/android/app/camera/feature/Feature;->NEED_GRAPHIC_CONFIG_SET:Z

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->changeGraphicConfig()V

    goto/16 :goto_0

    :cond_6
    const-string v3, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraBroadcastReceiver$2;->this$0:Lcom/sec/android/app/camera/CameraBroadcastReceiver;

    iget-object v3, v3, Lcom/sec/android/app/camera/CameraBroadcastReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-static {v3}, Lcom/sec/android/app/camera/util/StorageUtils;->setExternalSDStorageVolume(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraBroadcastReceiver$2;->this$0:Lcom/sec/android/app/camera/CameraBroadcastReceiver;

    iget-object v3, v3, Lcom/sec/android/app/camera/CameraBroadcastReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->semIsResumed()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraBroadcastReceiver$2;->this$0:Lcom/sec/android/app/camera/CameraBroadcastReceiver;

    iget-object v3, v3, Lcom/sec/android/app/camera/CameraBroadcastReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/Engine;->isRecording()Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraBroadcastReceiver$2;->this$0:Lcom/sec/android/app/camera/CameraBroadcastReceiver;

    iget-object v3, v3, Lcom/sec/android/app/camera/CameraBroadcastReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-static {}, Lcom/sec/android/app/camera/util/StorageUtils;->isExternalSDStorageMounted()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/Camera;->updateStorage(Z)V

    :goto_1
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraBroadcastReceiver$2;->this$0:Lcom/sec/android/app/camera/CameraBroadcastReceiver;

    iget-object v3, v3, Lcom/sec/android/app/camera/CameraBroadcastReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->updateLatestMedia()V

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraBroadcastReceiver$2;->this$0:Lcom/sec/android/app/camera/CameraBroadcastReceiver;

    iget-object v3, v3, Lcom/sec/android/app/camera/CameraBroadcastReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->updateThumbnail()V

    goto/16 :goto_0

    :cond_7
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraBroadcastReceiver$2;->this$0:Lcom/sec/android/app/camera/CameraBroadcastReceiver;

    iget-object v3, v3, Lcom/sec/android/app/camera/CameraBroadcastReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3, v9, v6}, Lcom/sec/android/app/camera/Camera;->setButtonDim(II)V

    goto :goto_1

    :cond_8
    const-string v3, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string v3, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string v3, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    :cond_9
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraBroadcastReceiver$2;->this$0:Lcom/sec/android/app/camera/CameraBroadcastReceiver;

    iget-object v3, v3, Lcom/sec/android/app/camera/CameraBroadcastReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStorage()I

    move-result v3

    if-ne v3, v7, :cond_a

    new-instance v3, Landroid/content/Intent;

    const-string v4, "camera.action.MEDIA_UNMOUNTED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v3}, Lcom/sec/android/app/camera/provider/CameraLocalBroadcastManager;->send(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_a
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraBroadcastReceiver$2;->this$0:Lcom/sec/android/app/camera/CameraBroadcastReceiver;

    iget-object v3, v3, Lcom/sec/android/app/camera/CameraBroadcastReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->semIsResumed()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraBroadcastReceiver$2;->this$0:Lcom/sec/android/app/camera/CameraBroadcastReceiver;

    iget-object v3, v3, Lcom/sec/android/app/camera/CameraBroadcastReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v3

    invoke-interface {v3, v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setStorage(I)V

    invoke-static {v6}, Lcom/sec/android/app/camera/util/StorageUtils;->getUpdatedStorageStatus(I)I

    move-result v3

    if-ne v3, v7, :cond_b

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraBroadcastReceiver$2;->this$0:Lcom/sec/android/app/camera/CameraBroadcastReceiver;

    iget-object v3, v3, Lcom/sec/android/app/camera/CameraBroadcastReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3, v9, v6}, Lcom/sec/android/app/camera/Camera;->setButtonDim(II)V

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraBroadcastReceiver$2;->this$0:Lcom/sec/android/app/camera/CameraBroadcastReceiver;

    iget-object v3, v3, Lcom/sec/android/app/camera/CameraBroadcastReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraDialog;->resetChangeStorageSettingDialogEnabled(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraBroadcastReceiver$2;->this$0:Lcom/sec/android/app/camera/CameraBroadcastReceiver;

    iget-object v3, v3, Lcom/sec/android/app/camera/CameraBroadcastReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    sget-object v4, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->CHANGE_STORAGE_SETTING:Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/Camera;->dismissCameraDialog(Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;)V

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraBroadcastReceiver$2;->this$0:Lcom/sec/android/app/camera/CameraBroadcastReceiver;

    iget-object v3, v3, Lcom/sec/android/app/camera/CameraBroadcastReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->updateLatestMedia()V

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraBroadcastReceiver$2;->this$0:Lcom/sec/android/app/camera/CameraBroadcastReceiver;

    iget-object v3, v3, Lcom/sec/android/app/camera/CameraBroadcastReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->updateThumbnail()V

    goto/16 :goto_0

    :cond_b
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraBroadcastReceiver$2;->this$0:Lcom/sec/android/app/camera/CameraBroadcastReceiver;

    iget-object v3, v3, Lcom/sec/android/app/camera/CameraBroadcastReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    sget-object v4, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->STORAGE_STATUS:Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/Camera;->isCameraDialogVisible(Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraBroadcastReceiver$2;->this$0:Lcom/sec/android/app/camera/CameraBroadcastReceiver;

    iget-object v3, v3, Lcom/sec/android/app/camera/CameraBroadcastReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    sget-object v4, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->STORAGE_STATUS:Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/Camera;->showCameraDialog(Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;)V

    goto/16 :goto_0

    :cond_c
    const-string v3, "com.samsung.intent.action.SET_SCREEN_RATIO_VALUE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "screenratiovalue"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "CameraBroadcastReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Camera should be recreate because screen ratio is changed to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraBroadcastReceiver$2;->this$0:Lcom/sec/android/app/camera/CameraBroadcastReceiver;

    iget-object v3, v3, Lcom/sec/android/app/camera/CameraBroadcastReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->recreate()V

    goto/16 :goto_0
.end method
