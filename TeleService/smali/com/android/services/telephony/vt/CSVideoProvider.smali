.class public Lcom/android/services/telephony/vt/CSVideoProvider;
.super Lcom/android/services/telephony/vt/BaseVideoProvider;
.source "CSVideoProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/services/telephony/vt/CSVideoProvider$CSMediaListener;
    }
.end annotation


# instance fields
.field private mCSMediaListener:Lcom/android/services/telephony/vt/CSVideoProvider$CSMediaListener;

.field private mCameraEffect:I

.field private mContext:Landroid/content/Context;

.field private mCurrentRotation:I

.field private mDisplaySurface:Landroid/view/Surface;

.field private mFarEndRecordTime:J

.field private mIsCSVTInitialize:Z

.field private mIsCSVTStart:Z

.field private mIsLivePreview:Z

.field private mIsRecording:Z

.field private mPreviewSurface:Landroid/view/Surface;

.field private mRecordStartSuccess:Z

.field private mRecordingFileName:Ljava/lang/String;

.field private mVTManager:Lsiso/vt/VTManager;


# direct methods
.method static synthetic -set0(Lcom/android/services/telephony/vt/CSVideoProvider;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/services/telephony/vt/CSVideoProvider;->mRecordStartSuccess:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/services/telephony/vt/CSVideoProvider;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/services/telephony/vt/CSVideoProvider;->cleanupService()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/services/telephony/vt/CSVideoProvider;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/services/telephony/vt/CSVideoProvider;->deinitializeStack()V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/services/telephony/vt/BaseVideoProvider;-><init>()V

    iput-object v1, p0, Lcom/android/services/telephony/vt/CSVideoProvider;->mContext:Landroid/content/Context;

    iput-object v1, p0, Lcom/android/services/telephony/vt/CSVideoProvider;->mCSMediaListener:Lcom/android/services/telephony/vt/CSVideoProvider$CSMediaListener;

    iput-object v1, p0, Lcom/android/services/telephony/vt/CSVideoProvider;->mVTManager:Lsiso/vt/VTManager;

    iput-object v1, p0, Lcom/android/services/telephony/vt/CSVideoProvider;->mPreviewSurface:Landroid/view/Surface;

    iput-object v1, p0, Lcom/android/services/telephony/vt/CSVideoProvider;->mDisplaySurface:Landroid/view/Surface;

    iput v2, p0, Lcom/android/services/telephony/vt/CSVideoProvider;->mCameraEffect:I

    iput-boolean v2, p0, Lcom/android/services/telephony/vt/CSVideoProvider;->mIsCSVTStart:Z

    iput-boolean v2, p0, Lcom/android/services/telephony/vt/CSVideoProvider;->mIsCSVTInitialize:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/services/telephony/vt/CSVideoProvider;->mCurrentRotation:I

    iput-object v1, p0, Lcom/android/services/telephony/vt/CSVideoProvider;->mRecordingFileName:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/android/services/telephony/vt/CSVideoProvider;->mIsRecording:Z

    iput-boolean v2, p0, Lcom/android/services/telephony/vt/CSVideoProvider;->mRecordStartSuccess:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/services/telephony/vt/CSVideoProvider;->mFarEndRecordTime:J

    iput-boolean v2, p0, Lcom/android/services/telephony/vt/CSVideoProvider;->mIsLivePreview:Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/services/telephony/vt/CSVideoProvider;->setType(I)V

    return-void
.end method

.method private cleanupService()V
    .locals 1

    iget-object v0, p0, Lcom/android/services/telephony/vt/CSVideoProvider;->mVTManager:Lsiso/vt/VTManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/services/telephony/vt/CSVideoProvider;->mVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v0}, Lsiso/vt/VTManager;->cleanupCall()V

    :cond_0
    return-void
.end method

.method private deinitializeStack()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/services/telephony/vt/CSVideoProvider;->mIsCSVTInitialize:Z

    iget-object v0, p0, Lcom/android/services/telephony/vt/CSVideoProvider;->mVTManager:Lsiso/vt/VTManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/services/telephony/vt/CSVideoProvider;->mVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v0}, Lsiso/vt/VTManager;->releaseVTManager()V

    iget-object v0, p0, Lcom/android/services/telephony/vt/CSVideoProvider;->mVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v0}, Lsiso/vt/VTManager;->deinitVTManager()V

    iget-object v0, p0, Lcom/android/services/telephony/vt/CSVideoProvider;->mVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v0, v1}, Lsiso/vt/VTManager;->setStackStateListener(Lsiso/vt/VTManager$VTStackStateListener;)V

    iput-object v1, p0, Lcom/android/services/telephony/vt/CSVideoProvider;->mVTManager:Lsiso/vt/VTManager;

    iput-object v1, p0, Lcom/android/services/telephony/vt/CSVideoProvider;->mCSMediaListener:Lcom/android/services/telephony/vt/CSVideoProvider$CSMediaListener;

    :cond_0
    return-void
.end method

.method private initializeStack(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/android/services/telephony/vt/CSVideoProvider;->mIsCSVTInitialize:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "PSTNVT-CSVideoProvider"

    const-string/jumbo v1, "initializeStack - VTManager was already iniailized"

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    return-void

    :cond_0
    iput-boolean v2, p0, Lcom/android/services/telephony/vt/CSVideoProvider;->mIsCSVTInitialize:Z

    iget-object v0, p0, Lcom/android/services/telephony/vt/CSVideoProvider;->mCSMediaListener:Lcom/android/services/telephony/vt/CSVideoProvider$CSMediaListener;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/services/telephony/vt/CSVideoProvider$CSMediaListener;

    invoke-direct {v0, p0}, Lcom/android/services/telephony/vt/CSVideoProvider$CSMediaListener;-><init>(Lcom/android/services/telephony/vt/CSVideoProvider;)V

    iput-object v0, p0, Lcom/android/services/telephony/vt/CSVideoProvider;->mCSMediaListener:Lcom/android/services/telephony/vt/CSVideoProvider$CSMediaListener;

    :cond_1
    iget-object v0, p0, Lcom/android/services/telephony/vt/CSVideoProvider;->mVTManager:Lsiso/vt/VTManager;

    if-nez v0, :cond_2

    invoke-static {}, Lsiso/vt/VTManager;->getInstance()Lsiso/vt/VTManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/services/telephony/vt/CSVideoProvider;->mVTManager:Lsiso/vt/VTManager;

    iget-object v0, p0, Lcom/android/services/telephony/vt/CSVideoProvider;->mVTManager:Lsiso/vt/VTManager;

    iget-object v1, p0, Lcom/android/services/telephony/vt/CSVideoProvider;->mCSMediaListener:Lcom/android/services/telephony/vt/CSVideoProvider$CSMediaListener;

    invoke-virtual {v0, v1}, Lsiso/vt/VTManager;->setStackStateListener(Lsiso/vt/VTManager$VTStackStateListener;)V

    iget-object v0, p0, Lcom/android/services/telephony/vt/CSVideoProvider;->mVTManager:Lsiso/vt/VTManager;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lsiso/vt/VTManager;->setEmotionalAnimation(I)V

    :cond_2
    return-void
.end method

.method private stopCamera()V
    .locals 3

    const-string/jumbo v0, "PSTNVT-CSVideoProvider"

    const-string/jumbo v1, "stopCamera : "

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/services/telephony/vt/CSVideoProvider;->setCameraState(I)V

    iget-object v0, p0, Lcom/android/services/telephony/vt/CSVideoProvider;->mVTManager:Lsiso/vt/VTManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/services/telephony/vt/CSVideoProvider;->mVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v0}, Lsiso/vt/VTManager;->stopCamera()V

    :cond_0
    return-void
.end method

.method private switchCamera(I)V
    .locals 5

    const/4 v4, 0x3

    const/4 v3, 0x1

    const-string/jumbo v0, "PSTNVT-CSVideoProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "switchCamera : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v0, p0, Lcom/android/services/telephony/vt/CSVideoProvider;->mVTManager:Lsiso/vt/VTManager;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/services/telephony/vt/CSVideoProvider;->mVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v0, v4, v3}, Lsiso/vt/VTManager;->SetCameraParams(II)I

    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/services/telephony/vt/CSVideoProvider;->setCameraState(I)V

    return-void

    :cond_1
    if-ne p1, v3, :cond_0

    iget-object v0, p0, Lcom/android/services/telephony/vt/CSVideoProvider;->mVTManager:Lsiso/vt/VTManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v4, v1}, Lsiso/vt/VTManager;->SetCameraParams(II)I

    goto :goto_0
.end method


# virtual methods
.method public changeRotation(I)V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/android/services/telephony/vt/CSVideoProvider;->mVTManager:Lsiso/vt/VTManager;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/services/telephony/vt/CSVideoProvider;->mCurrentRotation:I

    if-eq v0, p1, :cond_0

    const-string/jumbo v0, "PSTNVT-CSVideoProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "changeRotation-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    packed-switch p1, :pswitch_data_0

    iget-object v0, p0, Lcom/android/services/telephony/vt/CSVideoProvider;->mVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v0, v3}, Lsiso/vt/VTManager;->setOrientation(I)V

    const-string/jumbo v0, "PSTNVT-CSVideoProvider"

    const-string/jumbo v1, "VTManager.VT_ORIENTATION_PORTAIT_TOP"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iput p1, p0, Lcom/android/services/telephony/vt/CSVideoProvider;->mCurrentRotation:I

    :cond_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/services/telephony/vt/CSVideoProvider;->mVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v0, v3}, Lsiso/vt/VTManager;->setOrientation(I)V

    const-string/jumbo v0, "PSTNVT-CSVideoProvider"

    const-string/jumbo v1, "VTManager.VT_ORIENTATION_PORTAIT_TOP"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/services/telephony/vt/CSVideoProvider;->mVTManager:Lsiso/vt/VTManager;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lsiso/vt/VTManager;->setOrientation(I)V

    const-string/jumbo v0, "PSTNVT-CSVideoProvider"

    const-string/jumbo v1, "VTManager.VT_ORIENTATION_LANDSCAPE_BOTTOM"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/services/telephony/vt/CSVideoProvider;->mVTManager:Lsiso/vt/VTManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lsiso/vt/VTManager;->setOrientation(I)V

    const-string/jumbo v0, "PSTNVT-CSVideoProvider"

    const-string/jumbo v1, "VTManager.VT_ORIENTATION_PORTAIT_BOTTOM"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/services/telephony/vt/CSVideoProvider;->mVTManager:Lsiso/vt/VTManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lsiso/vt/VTManager;->setOrientation(I)V

    const-string/jumbo v0, "PSTNVT-CSVideoProvider"

    const-string/jumbo v1, "VTManager.VT_ORIENTATION_LANDSCAPE_TOP"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public cleanSurface()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/services/telephony/vt/CSVideoProvider;->mDisplaySurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/services/telephony/vt/CSVideoProvider;->setDisplaySurface(Landroid/view/Surface;)V

    :cond_0
    iget-object v0, p0, Lcom/android/services/telephony/vt/CSVideoProvider;->mPreviewSurface:Landroid/view/Surface;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/services/telephony/vt/CSVideoProvider;->setPreviewSurface(Landroid/view/Surface;)V

    :cond_1
    return-void
.end method

.method public connect(Lcom/android/services/telephony/vt/BaseVideoProvider$ProviderCallback;)V
    .locals 3

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/services/telephony/vt/CSVideoProvider;->disconnect()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/services/telephony/vt/CSVideoProvider;->getProviderCallback()Lcom/android/services/telephony/vt/BaseVideoProvider$ProviderCallback;

    move-result-object v0

    if-eq v0, p1, :cond_1

    const-string/jumbo v0, "PSTNVT-CSVideoProvider"

    const-string/jumbo v1, "connect"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v0, p0, Lcom/android/services/telephony/vt/CSVideoProvider;->mCSMediaListener:Lcom/android/services/telephony/vt/CSVideoProvider$CSMediaListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/services/telephony/vt/CSVideoProvider;->mCSMediaListener:Lcom/android/services/telephony/vt/CSVideoProvider$CSMediaListener;

    invoke-virtual {v0, p1}, Lcom/android/services/telephony/vt/CSVideoProvider$CSMediaListener;->registerCallback(Lcom/android/services/telephony/vt/BaseVideoProvider$ProviderCallback;)V

    :cond_1
    invoke-super {p0, p1}, Lcom/android/services/telephony/vt/BaseVideoProvider;->connect(Lcom/android/services/telephony/vt/BaseVideoProvider$ProviderCallback;)V

    return-void
.end method

.method public destroy()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/services/telephony/vt/CSVideoProvider;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/services/telephony/vt/CSVideoProvider;->disconnect()V

    :cond_0
    const-string/jumbo v0, "PSTNVT-CSVideoProvider"

    const-string/jumbo v1, "onDestroy"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    invoke-super {p0}, Lcom/android/services/telephony/vt/BaseVideoProvider;->destroy()V

    return-void
.end method

.method public disconnect()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, -0x1

    const-string/jumbo v0, "PSTNVT-CSVideoProvider"

    const-string/jumbo v1, "disconnect"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v0, p0, Lcom/android/services/telephony/vt/CSVideoProvider;->mCSMediaListener:Lcom/android/services/telephony/vt/CSVideoProvider$CSMediaListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/services/telephony/vt/CSVideoProvider;->mCSMediaListener:Lcom/android/services/telephony/vt/CSVideoProvider$CSMediaListener;

    invoke-virtual {v0}, Lcom/android/services/telephony/vt/CSVideoProvider$CSMediaListener;->unRegisterCallback()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/services/telephony/vt/CSVideoProvider;->stopRecord()V

    invoke-virtual {p0, v3}, Lcom/android/services/telephony/vt/CSVideoProvider;->setRotaton(I)V

    invoke-virtual {p0}, Lcom/android/services/telephony/vt/CSVideoProvider;->cleanSurface()V

    iget v0, p0, Lcom/android/services/telephony/vt/CSVideoProvider;->mCameraEffect:I

    if-eqz v0, :cond_1

    invoke-virtual {p0, v4}, Lcom/android/services/telephony/vt/CSVideoProvider;->setCameraEffect(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/services/telephony/vt/CSVideoProvider;->getCameraState()I

    move-result v0

    if-eq v0, v3, :cond_2

    invoke-direct {p0}, Lcom/android/services/telephony/vt/CSVideoProvider;->stopCamera()V

    :cond_2
    invoke-super {p0}, Lcom/android/services/telephony/vt/BaseVideoProvider;->disconnect()V

    return-void
.end method

.method public getCameraCapabilities(Ljava/lang/String;)Landroid/telecom/VideoProfile$CameraCapabilities;
    .locals 3

    new-instance v0, Landroid/telecom/VideoProfile$CameraCapabilities;

    const/16 v1, 0xb0

    const/16 v2, 0x90

    invoke-direct {v0, v1, v2}, Landroid/telecom/VideoProfile$CameraCapabilities;-><init>(II)V

    return-object v0
.end method

.method public initialize(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x1

    const-string/jumbo v0, "PSTNVT-CSVideoProvider"

    const-string/jumbo v1, "initialize"

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    invoke-direct {p0, p1}, Lcom/android/services/telephony/vt/CSVideoProvider;->initializeStack(Landroid/content/Context;)V

    invoke-super {p0, p1}, Lcom/android/services/telephony/vt/BaseVideoProvider;->initialize(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/services/telephony/vt/CSVideoProvider;->mContext:Landroid/content/Context;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/services/telephony/vt/CSVideoProvider;->mCurrentRotation:I

    iput-boolean v2, p0, Lcom/android/services/telephony/vt/CSVideoProvider;->mIsLivePreview:Z

    return-void
.end method

.method public sendDTMF(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/services/telephony/vt/CSVideoProvider;->mVTManager:Lsiso/vt/VTManager;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "PSTNVT-CSVideoProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendDTMF - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/services/telephony/vt/CSVideoProvider;->mVTManager:Lsiso/vt/VTManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lsiso/vt/VTManager;->sendDTMF(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public setCamera(I)V
    .locals 4

    const/4 v3, -0x1

    const-string/jumbo v0, "PSTNVT-CSVideoProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCamera id : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    if-ne p1, v3, :cond_1

    invoke-virtual {p0}, Lcom/android/services/telephony/vt/CSVideoProvider;->getCameraState()I

    move-result v0

    if-eq v0, v3, :cond_0

    invoke-direct {p0}, Lcom/android/services/telephony/vt/CSVideoProvider;->stopCamera()V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/services/telephony/vt/CSVideoProvider;->getCameraState()I

    move-result v0

    if-eq v0, v3, :cond_2

    invoke-virtual {p0}, Lcom/android/services/telephony/vt/CSVideoProvider;->getCameraState()I

    move-result v0

    if-eq v0, p1, :cond_2

    invoke-direct {p0, p1}, Lcom/android/services/telephony/vt/CSVideoProvider;->switchCamera(I)V

    return-void

    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/services/telephony/vt/CSVideoProvider;->setCameraState(I)V

    return-void
.end method

.method public setCameraEffect(I)V
    .locals 3

    const-string/jumbo v0, "PSTNVT-CSVideoProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCameraEffect type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iput p1, p0, Lcom/android/services/telephony/vt/CSVideoProvider;->mCameraEffect:I

    return-void
.end method

.method public setDeviceRotatoin(I)V
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/android/services/telephony/vt/CSVideoProvider;->getRotation()I

    move-result v0

    if-ne p1, v0, :cond_0

    const-string/jumbo v0, "PSTNVT-CSVideoProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDeviceRotatoin - return because of the same with before "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    return-void

    :cond_0
    const-string/jumbo v0, "PSTNVT-CSVideoProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDeviceRotatoin : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    return-void
.end method

.method public setDisplayOrientation()V
    .locals 5

    iget-object v2, p0, Lcom/android/services/telephony/vt/CSVideoProvider;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v1

    const-string/jumbo v2, "PSTNVT-CSVideoProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setDisplayOrientation  display rotation["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "] mCurrentRotation["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/services/telephony/vt/CSVideoProvider;->mCurrentRotation:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Lcom/android/services/telephony/vt/CSVideoProvider;->mCurrentRotation:I

    if-eq v2, v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/services/telephony/vt/CSVideoProvider;->changeRotation(I)V

    :cond_0
    return-void
.end method

.method public setDisplaySurface(Landroid/view/Surface;)V
    .locals 3

    const-string/jumbo v0, "PSTNVT-CSVideoProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDisplaySurface : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/services/telephony/vt/CSVideoProvider;->mVTManager:Lsiso/vt/VTManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/services/telephony/vt/CSVideoProvider;->mDisplaySurface:Landroid/view/Surface;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/services/telephony/vt/CSVideoProvider;->mVTManager:Lsiso/vt/VTManager;

    const/16 v1, 0xb0

    const/16 v2, 0x90

    invoke-virtual {v0, p1, v1, v2}, Lsiso/vt/VTManager;->setPreviewDisplay(Landroid/view/Surface;II)V

    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/android/services/telephony/vt/CSVideoProvider;->mDisplaySurface:Landroid/view/Surface;

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/services/telephony/vt/CSVideoProvider;->mVTManager:Lsiso/vt/VTManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/services/telephony/vt/CSVideoProvider;->mVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v0}, Lsiso/vt/VTManager;->ResetPreviewDisplay()V

    goto :goto_0
.end method

.method public setPauseImage(Landroid/net/Uri;)V
    .locals 14

    const/4 v13, 0x1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v10, "PSTNVT-CSVideoProvider"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "sendStillImage:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/services/telephony/vt/CSVideoProvider;->mIsLivePreview:Z

    iget-object v10, p0, Lcom/android/services/telephony/vt/CSVideoProvider;->mVTManager:Lsiso/vt/VTManager;

    if-eqz v10, :cond_0

    const-string/jumbo v10, ".3gp"

    invoke-virtual {v7, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/android/services/telephony/vt/CSVideoProvider;->mVTManager:Lsiso/vt/VTManager;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lsiso/vt/VTManager;->sendVideo(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v6, ""

    iget-object v10, p0, Lcom/android/services/telephony/vt/CSVideoProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v0, 0x0

    :try_start_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/android/services/telephony/vt/CSVideoProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_2

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    :cond_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "stillimage.jpg"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v8

    invoke-static {v8}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    sget-object v10, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v11, 0x64

    invoke-virtual {v0, v10, v11, v9}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v10, p0, Lcom/android/services/telephony/vt/CSVideoProvider;->mVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v10, v6}, Lsiso/vt/VTManager;->sendStillImage(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v4

    const-string/jumbo v10, "PSTNVT-CSVideoProvider"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "IOException caught in sendStillImage:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v13}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_1

    :catch_1
    move-exception v3

    const-string/jumbo v10, "PSTNVT-CSVideoProvider"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "FileNotFoundException caught in sendStillImage:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v13}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_1

    :cond_3
    const-string/jumbo v10, "PSTNVT-CSVideoProvider"

    const-string/jumbo v11, "sendLiveVideo"

    invoke-static {v10, v11, v13}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    iput-boolean v13, p0, Lcom/android/services/telephony/vt/CSVideoProvider;->mIsLivePreview:Z

    iget-object v10, p0, Lcom/android/services/telephony/vt/CSVideoProvider;->mVTManager:Lsiso/vt/VTManager;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/services/telephony/vt/CSVideoProvider;->mVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v10}, Lsiso/vt/VTManager;->sendLiveVideo()V

    goto/16 :goto_0
.end method

.method public setPreviewSurface(Landroid/view/Surface;)V
    .locals 10

    const/4 v9, 0x1

    const-string/jumbo v0, "PSTNVT-CSVideoProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPreviewSurface : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v9}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/android/services/telephony/vt/CSVideoProvider;->setDisplayOrientation()V

    iget-object v0, p0, Lcom/android/services/telephony/vt/CSVideoProvider;->mVTManager:Lsiso/vt/VTManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/services/telephony/vt/CSVideoProvider;->mPreviewSurface:Landroid/view/Surface;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/services/telephony/vt/CSVideoProvider;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager;

    invoke-static {}, Landroid/app/ActivityManager;->semGetCurrentUser()I

    move-result v8

    if-eqz v8, :cond_2

    const/4 v6, 0x1

    :goto_0
    const/16 v0, 0x3e9

    invoke-static {v8, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    iget-object v0, p0, Lcom/android/services/telephony/vt/CSVideoProvider;->mVTManager:Lsiso/vt/VTManager;

    const/16 v2, 0xb0

    const/16 v3, 0x90

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lsiso/vt/VTManager;->startCameraAsUser(Landroid/view/Surface;IIIIZ)V

    iget-boolean v0, p0, Lcom/android/services/telephony/vt/CSVideoProvider;->mIsLivePreview:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/services/telephony/vt/CSVideoProvider;->mVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v0}, Lsiso/vt/VTManager;->sendLiveVideo()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/services/telephony/vt/CSVideoProvider;->getCameraState()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, v9}, Lcom/android/services/telephony/vt/CSVideoProvider;->setCameraState(I)V

    :cond_1
    :goto_1
    iput-object p1, p0, Lcom/android/services/telephony/vt/CSVideoProvider;->mPreviewSurface:Landroid/view/Surface;

    return-void

    :cond_2
    const/4 v6, 0x0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/services/telephony/vt/CSVideoProvider;->mVTManager:Lsiso/vt/VTManager;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/services/telephony/vt/CSVideoProvider;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "PSTNVT-CSVideoProvider"

    const-string/jumbo v1, "setPreviewSurface don\'t stop preview while call is alive"

    invoke-static {v0, v1, v9}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    :goto_2
    iget-object v0, p0, Lcom/android/services/telephony/vt/CSVideoProvider;->mVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v0}, Lsiso/vt/VTManager;->ResetNearEndDisplay()V

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/android/services/telephony/vt/CSVideoProvider;->stopCamera()V

    goto :goto_2
.end method

.method public setZoom(I)V
    .locals 3

    const-string/jumbo v0, "PSTNVT-CSVideoProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setZoom ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    return-void
.end method

.method public startRecord(Ljava/lang/String;Z)V
    .locals 5

    const/4 v4, 0x1

    const-string/jumbo v1, "PSTNVT-CSVideoProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startRecord-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v1, p0, Lcom/android/services/telephony/vt/CSVideoProvider;->mVTManager:Lsiso/vt/VTManager;

    if-eqz v1, :cond_0

    iput-object p1, p0, Lcom/android/services/telephony/vt/CSVideoProvider;->mRecordingFileName:Ljava/lang/String;

    iput-boolean v4, p0, Lcom/android/services/telephony/vt/CSVideoProvider;->mIsRecording:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/services/telephony/vt/CSVideoProvider;->mRecordStartSuccess:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/services/telephony/vt/CSVideoProvider;->mFarEndRecordTime:J

    const/16 v0, 0xa

    iget-object v1, p0, Lcom/android/services/telephony/vt/CSVideoProvider;->mVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v1, p1, v0}, Lsiso/vt/VTManager;->StartRecording(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public startService()V
    .locals 2

    iget-object v0, p0, Lcom/android/services/telephony/vt/CSVideoProvider;->mVTManager:Lsiso/vt/VTManager;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/services/telephony/vt/CSVideoProvider;->mIsCSVTStart:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/services/telephony/vt/CSVideoProvider;->mIsCSVTStart:Z

    iget-object v0, p0, Lcom/android/services/telephony/vt/CSVideoProvider;->mVTManager:Lsiso/vt/VTManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lsiso/vt/VTManager;->StartVTCall(Z)V

    :cond_0
    return-void
.end method

.method public stopRecord()V
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    const-string/jumbo v3, "PSTNVT-CSVideoProvider"

    const-string/jumbo v4, "stopRecord"

    invoke-static {v3, v4, v10}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-boolean v3, p0, Lcom/android/services/telephony/vt/CSVideoProvider;->mIsRecording:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/services/telephony/vt/CSVideoProvider;->mVTManager:Lsiso/vt/VTManager;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/services/telephony/vt/CSVideoProvider;->mVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v3, v8}, Lsiso/vt/VTManager;->StopRecording(Z)V

    iput-boolean v8, p0, Lcom/android/services/telephony/vt/CSVideoProvider;->mIsRecording:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/services/telephony/vt/CSVideoProvider;->mFarEndRecordTime:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    cmp-long v3, v4, v6

    if-ltz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/services/telephony/vt/CSVideoProvider;->mRecordStartSuccess:Z

    if-nez v3, :cond_1

    :cond_0
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/android/services/telephony/vt/CSVideoProvider;->mRecordingFileName:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v0

    :cond_1
    iget-object v3, p0, Lcom/android/services/telephony/vt/CSVideoProvider;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_2

    new-array v2, v10, [Ljava/lang/String;

    iget-object v3, p0, Lcom/android/services/telephony/vt/CSVideoProvider;->mRecordingFileName:Ljava/lang/String;

    aput-object v3, v2, v8

    iget-object v3, p0, Lcom/android/services/telephony/vt/CSVideoProvider;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/services/telephony/vt/CSVideoProvider$1;

    invoke-direct {v4, p0}, Lcom/android/services/telephony/vt/CSVideoProvider$1;-><init>(Lcom/android/services/telephony/vt/CSVideoProvider;)V

    invoke-static {v3, v2, v9, v4}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    :cond_2
    return-void
.end method

.method public stopService()V
    .locals 1

    iget-object v0, p0, Lcom/android/services/telephony/vt/CSVideoProvider;->mVTManager:Lsiso/vt/VTManager;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/services/telephony/vt/CSVideoProvider;->mIsCSVTStart:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/services/telephony/vt/CSVideoProvider;->mVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v0}, Lsiso/vt/VTManager;->StopVTCall()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/services/telephony/vt/CSVideoProvider;->mIsCSVTStart:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/services/telephony/vt/CSVideoProvider;->mIsCSVTInitialize:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/services/telephony/vt/CSVideoProvider;->cleanupService()V

    invoke-direct {p0}, Lcom/android/services/telephony/vt/CSVideoProvider;->deinitializeStack()V

    goto :goto_0
.end method
