.class public Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;
.super Lcom/samsung/android/sdk/rcl/RclExpansionFragment;
.source "RclCameraFragment.java"

# interfaces
.implements Lcom/samsung/android/sdk/rclcamera/interfaces/RclCameraFragmentAPIs;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/rclcamera/RclCameraFragment$OnCameraListener;
    }
.end annotation


# static fields
.field private static final CAMERA_PROVIDER_CAMERA_OPENED:I = 0x3eb

.field private static final CAMERA_PROVIDER_ERROR:I = 0x3ea

.field private static final CAMERA_PROVIDER_GALLERY_BUTTON_CLICKED:I = 0x3ec

.field private static final CAMERA_PROVIDER_IMAGE_CAPTURED:I = 0x3e8

.field private static final CAMERA_PROVIDER_VIDEO_RECORDED:I = 0x3e9

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private IMPL:Lcom/samsung/android/sdk/rclcamera/interfaces/RclCameraFragmentAbstractImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RCL/2.0.56/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/sdk/rcl/RclExpansionFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;->IMPL:Lcom/samsung/android/sdk/rclcamera/interfaces/RclCameraFragmentAbstractImpl;

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;->TAG:Ljava/lang/String;

    const-string v1, "RclCameraFragment 2.0.56"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;->TAG:Ljava/lang/String;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ValidFragment"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/sdk/rcl/RclExpansionFragment;-><init>()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;->IMPL:Lcom/samsung/android/sdk/rclcamera/interfaces/RclCameraFragmentAbstractImpl;

    sget-object v1, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;->TAG:Ljava/lang/String;

    const-string v2, "RclCameraFragment 2.0.56"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;->TAG:Ljava/lang/String;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "context is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/samsung/android/sdk/rclcamera/interfaces/utils/PlatformUtils;->isSemDevice(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "com.samsung.android.camera.core.SemCamera"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {p1}, Lcom/samsung/android/sdk/rclcamera/interfaces/utils/PlatformUtils;->isSemDevice(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;->getExpansionHelper()Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    move-result-object v2

    invoke-direct {v1, p1, p0, v2}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;-><init>(Landroid/content/Context;Landroid/app/Fragment;Lcom/samsung/android/sdk/rcl/RclExpansionHelper;)V

    iput-object v1, p0, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;->IMPL:Lcom/samsung/android/sdk/rclcamera/interfaces/RclCameraFragmentAbstractImpl;

    :goto_1
    return-void

    :cond_1
    :try_start_1
    const-string v1, "com.sec.android.seccamera.SecCamera"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const-string v1, "com.sec.android.secmediarecorder.SecMediaRecorder"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;->TAG:Ljava/lang/String;

    const-string v2, "Required library does not exist."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Required library does not exist."

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    new-instance v1, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;->getExpansionHelper()Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    move-result-object v2

    invoke-direct {v1, p1, p0, v2}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;-><init>(Landroid/content/Context;Landroid/app/Fragment;Lcom/samsung/android/sdk/rcl/RclExpansionHelper;)V

    iput-object v1, p0, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;->IMPL:Lcom/samsung/android/sdk/rclcamera/interfaces/RclCameraFragmentAbstractImpl;

    goto :goto_1
.end method


# virtual methods
.method public forceSwitchCamera(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;->IMPL:Lcom/samsung/android/sdk/rclcamera/interfaces/RclCameraFragmentAbstractImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/rclcamera/interfaces/RclCameraFragmentAbstractImpl;->forceSwitchCamera(I)V

    return-void
.end method

.method public getCameraId()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;->IMPL:Lcom/samsung/android/sdk/rclcamera/interfaces/RclCameraFragmentAbstractImpl;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/rclcamera/interfaces/RclCameraFragmentAbstractImpl;->getCameraId()I

    move-result v0

    return v0
.end method

.method public getSupportedFacing()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;->IMPL:Lcom/samsung/android/sdk/rclcamera/interfaces/RclCameraFragmentAbstractImpl;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/rclcamera/interfaces/RclCameraFragmentAbstractImpl;->getSupportedFacing()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedPictureSizes(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;->IMPL:Lcom/samsung/android/sdk/rclcamera/interfaces/RclCameraFragmentAbstractImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/rclcamera/interfaces/RclCameraFragmentAbstractImpl;->getSupportedPictureSizes(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedVideoSizes(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;->IMPL:Lcom/samsung/android/sdk/rclcamera/interfaces/RclCameraFragmentAbstractImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/rclcamera/interfaces/RclCameraFragmentAbstractImpl;->getSupportedVideoSizes(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public initialize(ZII)V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fragment is already added."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;->IMPL:Lcom/samsung/android/sdk/rclcamera/interfaces/RclCameraFragmentAbstractImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/sdk/rclcamera/interfaces/RclCameraFragmentAbstractImpl;->initialize(ZII)V

    return-void
.end method

.method public notifyCoverStateChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;->IMPL:Lcom/samsung/android/sdk/rclcamera/interfaces/RclCameraFragmentAbstractImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/rclcamera/interfaces/RclCameraFragmentAbstractImpl;->notifyCoverStateChanged(Z)V

    return-void
.end method

.method public notifyDexModeState(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;->IMPL:Lcom/samsung/android/sdk/rclcamera/interfaces/RclCameraFragmentAbstractImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/rclcamera/interfaces/RclCameraFragmentAbstractImpl;->notifyDexModeState(Z)V

    return-void
.end method

.method public notifyMultiWindowStateChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;->IMPL:Lcom/samsung/android/sdk/rclcamera/interfaces/RclCameraFragmentAbstractImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/rclcamera/interfaces/RclCameraFragmentAbstractImpl;->notifyMultiWindowStateChanged(Z)V

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/rcl/RclExpansionFragment;->onAttach(Landroid/app/Activity;)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;->getParentFragment()Landroid/app/Fragment;

    move-result-object v1

    instance-of v1, v1, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment$OnCameraListener;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment$OnCameraListener;

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;->IMPL:Lcom/samsung/android/sdk/rclcamera/interfaces/RclCameraFragmentAbstractImpl;

    if-nez v1, :cond_0

    invoke-static {p1}, Lcom/samsung/android/sdk/rclcamera/interfaces/utils/PlatformUtils;->isSemDevice(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;->getExpansionHelper()Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    move-result-object v2

    invoke-direct {v1, p1, p0, v2}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;-><init>(Landroid/content/Context;Landroid/app/Fragment;Lcom/samsung/android/sdk/rcl/RclExpansionHelper;)V

    iput-object v1, p0, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;->IMPL:Lcom/samsung/android/sdk/rclcamera/interfaces/RclCameraFragmentAbstractImpl;

    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;->IMPL:Lcom/samsung/android/sdk/rclcamera/interfaces/RclCameraFragmentAbstractImpl;

    new-instance v2, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment$1;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment$1;-><init>(Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;Lcom/samsung/android/sdk/rclcamera/RclCameraFragment$OnCameraListener;)V

    invoke-virtual {v1, p1, v2}, Lcom/samsung/android/sdk/rclcamera/interfaces/RclCameraFragmentAbstractImpl;->perform_onAttach(Landroid/app/Activity;Lcom/samsung/android/sdk/rclcamera/interfaces/RclCameraFragmentInterface$OnCameraBridgeListener;)V

    return-void

    :cond_1
    instance-of v1, p1, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment$OnCameraListener;

    if-eqz v1, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment$OnCameraListener;

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;->getParentFragment()Landroid/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_3

    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Activity("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") must implement OnCameraListener."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Either Activity("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") or ParentFragment("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;->getParentFragment()Landroid/app/Fragment;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") must implement OnCameraListener."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    new-instance v1, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;->getExpansionHelper()Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    move-result-object v2

    invoke-direct {v1, p1, p0, v2}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;-><init>(Landroid/content/Context;Landroid/app/Fragment;Lcom/samsung/android/sdk/rcl/RclExpansionHelper;)V

    iput-object v1, p0, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;->IMPL:Lcom/samsung/android/sdk/rclcamera/interfaces/RclCameraFragmentAbstractImpl;

    goto :goto_1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/rcl/RclExpansionFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;->IMPL:Lcom/samsung/android/sdk/rclcamera/interfaces/RclCameraFragmentAbstractImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/rclcamera/interfaces/RclCameraFragmentAbstractImpl;->perform_onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/rcl/RclExpansionFragment;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;->IMPL:Lcom/samsung/android/sdk/rclcamera/interfaces/RclCameraFragmentAbstractImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/rclcamera/interfaces/RclCameraFragmentAbstractImpl;->perform_onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView2(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;->IMPL:Lcom/samsung/android/sdk/rclcamera/interfaces/RclCameraFragmentAbstractImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/sdk/rclcamera/interfaces/RclCameraFragmentAbstractImpl;->perform_onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/sdk/rcl/RclExpansionFragment;->onDestroy()V

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;->IMPL:Lcom/samsung/android/sdk/rclcamera/interfaces/RclCameraFragmentAbstractImpl;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/rclcamera/interfaces/RclCameraFragmentAbstractImpl;->perform_onDestroy()V

    return-void
.end method

.method public onDetach()V
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/sdk/rcl/RclExpansionFragment;->onDetach()V

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;->IMPL:Lcom/samsung/android/sdk/rclcamera/interfaces/RclCameraFragmentAbstractImpl;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/rclcamera/interfaces/RclCameraFragmentAbstractImpl;->perform_onDetach()V

    return-void
.end method

.method protected onExpansionFinish(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;->IMPL:Lcom/samsung/android/sdk/rclcamera/interfaces/RclCameraFragmentAbstractImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/rclcamera/interfaces/RclCameraFragmentAbstractImpl;->perform_onExpansionFinish(Z)V

    return-void
.end method

.method protected onExpansionStart(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;->IMPL:Lcom/samsung/android/sdk/rclcamera/interfaces/RclCameraFragmentAbstractImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/rclcamera/interfaces/RclCameraFragmentAbstractImpl;->perform_onExpansionStart(Z)V

    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/sdk/rcl/RclExpansionFragment;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;->IMPL:Lcom/samsung/android/sdk/rclcamera/interfaces/RclCameraFragmentAbstractImpl;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/rclcamera/interfaces/RclCameraFragmentAbstractImpl;->perform_onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/sdk/rcl/RclExpansionFragment;->onResume()V

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;->IMPL:Lcom/samsung/android/sdk/rclcamera/interfaces/RclCameraFragmentAbstractImpl;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/rclcamera/interfaces/RclCameraFragmentAbstractImpl;->perform_onResume()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/rcl/RclExpansionFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;->IMPL:Lcom/samsung/android/sdk/rclcamera/interfaces/RclCameraFragmentAbstractImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/rclcamera/interfaces/RclCameraFragmentAbstractImpl;->perform_onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/sdk/rcl/RclExpansionFragment;->onStart()V

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;->IMPL:Lcom/samsung/android/sdk/rclcamera/interfaces/RclCameraFragmentAbstractImpl;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/rclcamera/interfaces/RclCameraFragmentAbstractImpl;->perform_onStart()V

    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/sdk/rcl/RclExpansionFragment;->onStop()V

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;->IMPL:Lcom/samsung/android/sdk/rclcamera/interfaces/RclCameraFragmentAbstractImpl;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/rclcamera/interfaces/RclCameraFragmentAbstractImpl;->perform_onStop()V

    return-void
.end method

.method public pauseRecord()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;->IMPL:Lcom/samsung/android/sdk/rclcamera/interfaces/RclCameraFragmentAbstractImpl;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/rclcamera/interfaces/RclCameraFragmentAbstractImpl;->pauseRecord()V

    return-void
.end method

.method public requestEnableCapture(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;->IMPL:Lcom/samsung/android/sdk/rclcamera/interfaces/RclCameraFragmentAbstractImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/rclcamera/interfaces/RclCameraFragmentAbstractImpl;->requestEnableCapture(Z)V

    return-void
.end method

.method public requestEnableRecord(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;->IMPL:Lcom/samsung/android/sdk/rclcamera/interfaces/RclCameraFragmentAbstractImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/rclcamera/interfaces/RclCameraFragmentAbstractImpl;->requestEnableRecord(Z)V

    return-void
.end method

.method public requestEnableSwitchButton(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;->IMPL:Lcom/samsung/android/sdk/rclcamera/interfaces/RclCameraFragmentAbstractImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/rclcamera/interfaces/RclCameraFragmentAbstractImpl;->requestEnableSwitchButton(Z)V

    return-void
.end method

.method public requestStartPreview()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;->IMPL:Lcom/samsung/android/sdk/rclcamera/interfaces/RclCameraFragmentAbstractImpl;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/rclcamera/interfaces/RclCameraFragmentAbstractImpl;->requestStartPreview()V

    return-void
.end method

.method public requestStopPreview()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;->IMPL:Lcom/samsung/android/sdk/rclcamera/interfaces/RclCameraFragmentAbstractImpl;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/rclcamera/interfaces/RclCameraFragmentAbstractImpl;->requestStopPreview()V

    return-void
.end method

.method public requestStopRecording()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;->IMPL:Lcom/samsung/android/sdk/rclcamera/interfaces/RclCameraFragmentAbstractImpl;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/rclcamera/interfaces/RclCameraFragmentAbstractImpl;->requestStopRecording()V

    return-void
.end method

.method public setAudioBitrate(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;->IMPL:Lcom/samsung/android/sdk/rclcamera/interfaces/RclCameraFragmentAbstractImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/rclcamera/interfaces/RclCameraFragmentAbstractImpl;->setAudioBitrate(I)V

    return-void
.end method

.method public setAudioChannels(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;->IMPL:Lcom/samsung/android/sdk/rclcamera/interfaces/RclCameraFragmentAbstractImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/rclcamera/interfaces/RclCameraFragmentAbstractImpl;->setAudioChannels(I)V

    return-void
.end method

.method public setAudioEncoder(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;->IMPL:Lcom/samsung/android/sdk/rclcamera/interfaces/RclCameraFragmentAbstractImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/rclcamera/interfaces/RclCameraFragmentAbstractImpl;->setAudioEncoder(I)V

    return-void
.end method

.method public setAudioSamplingRate(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;->IMPL:Lcom/samsung/android/sdk/rclcamera/interfaces/RclCameraFragmentAbstractImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/rclcamera/interfaces/RclCameraFragmentAbstractImpl;->setAudioSamplingRate(I)V

    return-void
.end method

.method public setFlashState(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;->IMPL:Lcom/samsung/android/sdk/rclcamera/interfaces/RclCameraFragmentAbstractImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/rclcamera/interfaces/RclCameraFragmentAbstractImpl;->setFlashState(Ljava/lang/String;)V

    return-void
.end method

.method public setMaxContainerSize(Landroid/util/Size;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;->IMPL:Lcom/samsung/android/sdk/rclcamera/interfaces/RclCameraFragmentAbstractImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/rclcamera/interfaces/RclCameraFragmentAbstractImpl;->setMaxContainerSize(Landroid/util/Size;)V

    return-void
.end method

.method public setMaxVideoFileSize(J)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;->IMPL:Lcom/samsung/android/sdk/rclcamera/interfaces/RclCameraFragmentAbstractImpl;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/rclcamera/interfaces/RclCameraFragmentAbstractImpl;->setMaxVideoFileSize(J)V

    return-void
.end method

.method public setMultiwindowState(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;->IMPL:Lcom/samsung/android/sdk/rclcamera/interfaces/RclCameraFragmentAbstractImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/rclcamera/interfaces/RclCameraFragmentAbstractImpl;->setMultiwindowState(Z)V

    return-void
.end method

.method public setNeedToStartPreview(Ljava/lang/Boolean;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;->TAG:Ljava/lang/String;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;->IMPL:Lcom/samsung/android/sdk/rclcamera/interfaces/RclCameraFragmentAbstractImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/rclcamera/interfaces/RclCameraFragmentAbstractImpl;->setNeedToStartPreview(Ljava/lang/Boolean;)V

    return-void
.end method

.method public setPictureSize(III)V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fragment is already added."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;->IMPL:Lcom/samsung/android/sdk/rclcamera/interfaces/RclCameraFragmentAbstractImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/sdk/rclcamera/interfaces/RclCameraFragmentAbstractImpl;->setPictureSize(III)V

    return-void
.end method

.method public setShutterBoxExtraMargin(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;->IMPL:Lcom/samsung/android/sdk/rclcamera/interfaces/RclCameraFragmentAbstractImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/rclcamera/interfaces/RclCameraFragmentAbstractImpl;->setShutterBoxExtraMargin(I)V

    return-void
.end method

.method public setVideoBitrate(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;->IMPL:Lcom/samsung/android/sdk/rclcamera/interfaces/RclCameraFragmentAbstractImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/rclcamera/interfaces/RclCameraFragmentAbstractImpl;->setVideoBitrate(I)V

    return-void
.end method

.method public setVideoEncoder(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;->IMPL:Lcom/samsung/android/sdk/rclcamera/interfaces/RclCameraFragmentAbstractImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/rclcamera/interfaces/RclCameraFragmentAbstractImpl;->setVideoEncoder(I)V

    return-void
.end method

.method public setVideoFrameRate(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;->IMPL:Lcom/samsung/android/sdk/rclcamera/interfaces/RclCameraFragmentAbstractImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/rclcamera/interfaces/RclCameraFragmentAbstractImpl;->setVideoFrameRate(I)V

    return-void
.end method

.method public setVideoMaxDuration(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;->IMPL:Lcom/samsung/android/sdk/rclcamera/interfaces/RclCameraFragmentAbstractImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/rclcamera/interfaces/RclCameraFragmentAbstractImpl;->setVideoMaxDuration(I)V

    return-void
.end method

.method public setVideoOutputFormat(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;->IMPL:Lcom/samsung/android/sdk/rclcamera/interfaces/RclCameraFragmentAbstractImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/rclcamera/interfaces/RclCameraFragmentAbstractImpl;->setVideoOutputFormat(I)V

    return-void
.end method

.method public setVideoSize(III)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;->IMPL:Lcom/samsung/android/sdk/rclcamera/interfaces/RclCameraFragmentAbstractImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/sdk/rclcamera/interfaces/RclCameraFragmentAbstractImpl;->setVideoSize(III)V

    return-void
.end method

.method public startRecord()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;->IMPL:Lcom/samsung/android/sdk/rclcamera/interfaces/RclCameraFragmentAbstractImpl;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/rclcamera/interfaces/RclCameraFragmentAbstractImpl;->startRecord()V

    return-void
.end method

.method public stopRecord()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;->IMPL:Lcom/samsung/android/sdk/rclcamera/interfaces/RclCameraFragmentAbstractImpl;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/rclcamera/interfaces/RclCameraFragmentAbstractImpl;->stopRecord()V

    return-void
.end method

.method public takePicture()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;->IMPL:Lcom/samsung/android/sdk/rclcamera/interfaces/RclCameraFragmentAbstractImpl;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/rclcamera/interfaces/RclCameraFragmentAbstractImpl;->takePicture()V

    return-void
.end method
