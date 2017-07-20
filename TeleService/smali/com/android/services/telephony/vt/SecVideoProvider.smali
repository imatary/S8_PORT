.class public Lcom/android/services/telephony/vt/SecVideoProvider;
.super Landroid/telecom/Connection$VideoProvider;
.source "SecVideoProvider.java"


# instance fields
.field private mCameraCapabilities:Landroid/telecom/VideoProfile$CameraCapabilities;

.field private mCameraId:Ljava/lang/String;

.field private mDisplaySurface:Landroid/view/Surface;

.field private final mHandler:Landroid/os/Handler;

.field private mPreviewSurface:Landroid/view/Surface;

.field private mPstnVideoProvier:Lcom/android/services/telephony/vt/BaseVideoProvider;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/telecom/Connection$VideoProvider;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/services/telephony/vt/SecVideoProvider;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "PSTNVT-SecVideoProvider"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setCameraCapabilities(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Set camera capabilities "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/services/telephony/vt/SecVideoProvider;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/services/telephony/vt/SecVideoProvider;->mPstnVideoProvier:Lcom/android/services/telephony/vt/BaseVideoProvider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/services/telephony/vt/SecVideoProvider;->mPstnVideoProvier:Lcom/android/services/telephony/vt/BaseVideoProvider;

    invoke-virtual {v0, p1}, Lcom/android/services/telephony/vt/BaseVideoProvider;->getCameraCapabilities(Ljava/lang/String;)Landroid/telecom/VideoProfile$CameraCapabilities;

    move-result-object v0

    iput-object v0, p0, Lcom/android/services/telephony/vt/SecVideoProvider;->mCameraCapabilities:Landroid/telecom/VideoProfile$CameraCapabilities;

    :cond_0
    return-void
.end method


# virtual methods
.method public getPstnVideoProvider()Lcom/android/services/telephony/vt/BaseVideoProvider;
    .locals 1

    iget-object v0, p0, Lcom/android/services/telephony/vt/SecVideoProvider;->mPstnVideoProvier:Lcom/android/services/telephony/vt/BaseVideoProvider;

    return-object v0
.end method

.method public handleCallSessionMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/android/services/utils/SecTelecomAdapter;->getInstance()Lcom/android/services/utils/SecTelecomAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/services/utils/SecTelecomAdapter;->handleCallSessionMessage(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onRequestCameraCapabilities()V
    .locals 1

    const-string/jumbo v0, "Requested camera capabilities"

    invoke-static {v0}, Lcom/android/services/telephony/vt/SecVideoProvider;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/services/telephony/vt/SecVideoProvider;->mCameraCapabilities:Landroid/telecom/VideoProfile$CameraCapabilities;

    invoke-virtual {p0, v0}, Lcom/android/services/telephony/vt/SecVideoProvider;->changeCameraCapabilities(Landroid/telecom/VideoProfile$CameraCapabilities;)V

    return-void
.end method

.method public onRequestConnectionDataUsage()V
    .locals 1

    const-string/jumbo v0, "Requested connection data usage"

    invoke-static {v0}, Lcom/android/services/telephony/vt/SecVideoProvider;->log(Ljava/lang/String;)V

    return-void
.end method

.method public onSendSessionModifyRequest(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    .locals 4

    const-string/jumbo v0, "Sent session modify request"

    invoke-static {v0}, Lcom/android/services/telephony/vt/SecVideoProvider;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/services/telephony/vt/SecVideoProvider;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/services/telephony/vt/SecVideoProvider$1;

    invoke-direct {v1, p0, p2}, Lcom/android/services/telephony/vt/SecVideoProvider$1;-><init>(Lcom/android/services/telephony/vt/SecVideoProvider;Landroid/telecom/VideoProfile;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onSendSessionModifyResponse(Landroid/telecom/VideoProfile;)V
    .locals 0

    return-void
.end method

.method public onSetCamera(Ljava/lang/String;)V
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Set camera to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/services/telephony/vt/SecVideoProvider;->log(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/services/telephony/vt/SecVideoProvider;->mCameraId:Ljava/lang/String;

    const/4 v0, -0x1

    if-eqz p1, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :cond_0
    iget-object v1, p0, Lcom/android/services/telephony/vt/SecVideoProvider;->mPstnVideoProvier:Lcom/android/services/telephony/vt/BaseVideoProvider;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/services/telephony/vt/SecVideoProvider;->mPstnVideoProvier:Lcom/android/services/telephony/vt/BaseVideoProvider;

    invoke-virtual {v1, v0}, Lcom/android/services/telephony/vt/BaseVideoProvider;->setCamera(I)V

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/services/telephony/vt/SecVideoProvider;->setCameraCapabilities(Ljava/lang/String;)V

    return-void
.end method

.method public onSetDeviceOrientation(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Set device orientation "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/services/telephony/vt/SecVideoProvider;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/services/telephony/vt/SecVideoProvider;->mPstnVideoProvier:Lcom/android/services/telephony/vt/BaseVideoProvider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/services/telephony/vt/SecVideoProvider;->mPstnVideoProvier:Lcom/android/services/telephony/vt/BaseVideoProvider;

    invoke-virtual {v0, p1}, Lcom/android/services/telephony/vt/BaseVideoProvider;->setDeviceRotatoin(I)V

    :cond_0
    return-void
.end method

.method public onSetDisplaySurface(Landroid/view/Surface;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Set display surface "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez p1, :cond_1

    const-string/jumbo v0, "unset"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/services/telephony/vt/SecVideoProvider;->log(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/services/telephony/vt/SecVideoProvider;->mDisplaySurface:Landroid/view/Surface;

    iget-object v0, p0, Lcom/android/services/telephony/vt/SecVideoProvider;->mPstnVideoProvier:Lcom/android/services/telephony/vt/BaseVideoProvider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/services/telephony/vt/SecVideoProvider;->mPstnVideoProvier:Lcom/android/services/telephony/vt/BaseVideoProvider;

    invoke-virtual {v0, p1}, Lcom/android/services/telephony/vt/BaseVideoProvider;->setDisplaySurface(Landroid/view/Surface;)V

    :cond_0
    return-void

    :cond_1
    const-string/jumbo v0, "set"

    goto :goto_0
.end method

.method public onSetPauseImage(Landroid/net/Uri;)V
    .locals 1

    iget-object v0, p0, Lcom/android/services/telephony/vt/SecVideoProvider;->mPstnVideoProvier:Lcom/android/services/telephony/vt/BaseVideoProvider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/services/telephony/vt/SecVideoProvider;->mPstnVideoProvier:Lcom/android/services/telephony/vt/BaseVideoProvider;

    invoke-virtual {v0, p1}, Lcom/android/services/telephony/vt/BaseVideoProvider;->setPauseImage(Landroid/net/Uri;)V

    :cond_0
    return-void
.end method

.method public onSetPreviewSurface(Landroid/view/Surface;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Set preview surface "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez p1, :cond_1

    const-string/jumbo v0, "unset"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/services/telephony/vt/SecVideoProvider;->log(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/services/telephony/vt/SecVideoProvider;->mPreviewSurface:Landroid/view/Surface;

    iget-object v0, p0, Lcom/android/services/telephony/vt/SecVideoProvider;->mPstnVideoProvier:Lcom/android/services/telephony/vt/BaseVideoProvider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/services/telephony/vt/SecVideoProvider;->mPstnVideoProvier:Lcom/android/services/telephony/vt/BaseVideoProvider;

    invoke-virtual {v0, p1}, Lcom/android/services/telephony/vt/BaseVideoProvider;->setPreviewSurface(Landroid/view/Surface;)V

    :cond_0
    return-void

    :cond_1
    const-string/jumbo v0, "set"

    goto :goto_0
.end method

.method public onSetZoom(F)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Set zoom to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/services/telephony/vt/SecVideoProvider;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/services/telephony/vt/SecVideoProvider;->mPstnVideoProvier:Lcom/android/services/telephony/vt/BaseVideoProvider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/services/telephony/vt/SecVideoProvider;->mPstnVideoProvier:Lcom/android/services/telephony/vt/BaseVideoProvider;

    const/high16 v1, 0x41200000    # 10.0f

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/android/services/telephony/vt/BaseVideoProvider;->setZoom(I)V

    :cond_0
    return-void
.end method

.method public setPstnVideoProvider(Lcom/android/services/telephony/vt/BaseVideoProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/android/services/telephony/vt/SecVideoProvider;->mPstnVideoProvier:Lcom/android/services/telephony/vt/BaseVideoProvider;

    return-void
.end method

.method public setResolution(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/services/telephony/vt/SecVideoProvider;->mPstnVideoProvier:Lcom/android/services/telephony/vt/BaseVideoProvider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/services/telephony/vt/SecVideoProvider;->mPstnVideoProvier:Lcom/android/services/telephony/vt/BaseVideoProvider;

    invoke-virtual {v0, p1}, Lcom/android/services/telephony/vt/BaseVideoProvider;->setResolution(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
