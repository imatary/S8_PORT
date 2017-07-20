.class public abstract Lcom/android/services/telephony/vt/BaseVideoProvider;
.super Ljava/lang/Object;
.source "BaseVideoProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/services/telephony/vt/BaseVideoProvider$ProviderCallback;
    }
.end annotation


# instance fields
.field private mCameraState:I

.field private mMaxZoom:I

.field private mProviderCallback:Lcom/android/services/telephony/vt/BaseVideoProvider$ProviderCallback;

.field private mProviderState:I

.field private mResolution:Ljava/lang/String;

.field private mRotaton:I

.field private mType:I

.field private mZoom:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/android/services/telephony/vt/BaseVideoProvider;->mProviderState:I

    iput v0, p0, Lcom/android/services/telephony/vt/BaseVideoProvider;->mRotaton:I

    iput v0, p0, Lcom/android/services/telephony/vt/BaseVideoProvider;->mCameraState:I

    iput v0, p0, Lcom/android/services/telephony/vt/BaseVideoProvider;->mMaxZoom:I

    iput v0, p0, Lcom/android/services/telephony/vt/BaseVideoProvider;->mZoom:I

    iput v1, p0, Lcom/android/services/telephony/vt/BaseVideoProvider;->mType:I

    const-string/jumbo v0, "vga"

    iput-object v0, p0, Lcom/android/services/telephony/vt/BaseVideoProvider;->mResolution:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public changeRotation(I)V
    .locals 0

    return-void
.end method

.method public connect(Lcom/android/services/telephony/vt/BaseVideoProvider$ProviderCallback;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/services/telephony/vt/BaseVideoProvider;->mProviderState:I

    iput-object p1, p0, Lcom/android/services/telephony/vt/BaseVideoProvider;->mProviderCallback:Lcom/android/services/telephony/vt/BaseVideoProvider$ProviderCallback;

    return-void
.end method

.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/services/telephony/vt/BaseVideoProvider;->mProviderState:I

    return-void
.end method

.method public disconnect()V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/services/telephony/vt/BaseVideoProvider;->mProviderState:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/services/telephony/vt/BaseVideoProvider;->mProviderCallback:Lcom/android/services/telephony/vt/BaseVideoProvider$ProviderCallback;

    return-void
.end method

.method public getCameraCapabilities(Ljava/lang/String;)Landroid/telecom/VideoProfile$CameraCapabilities;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCameraState()I
    .locals 1

    iget v0, p0, Lcom/android/services/telephony/vt/BaseVideoProvider;->mCameraState:I

    return v0
.end method

.method public getProviderCallback()Lcom/android/services/telephony/vt/BaseVideoProvider$ProviderCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/services/telephony/vt/BaseVideoProvider;->mProviderCallback:Lcom/android/services/telephony/vt/BaseVideoProvider$ProviderCallback;

    return-object v0
.end method

.method public getRotation()I
    .locals 1

    iget v0, p0, Lcom/android/services/telephony/vt/BaseVideoProvider;->mRotaton:I

    return v0
.end method

.method public initialize(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/services/telephony/vt/BaseVideoProvider;->mProviderState:I

    return-void
.end method

.method public isConnected()Z
    .locals 2

    iget v0, p0, Lcom/android/services/telephony/vt/BaseVideoProvider;->mProviderState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIdle()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/services/telephony/vt/BaseVideoProvider;->mProviderState:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public sendDTMF(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public abstract setCamera(I)V
.end method

.method public setCameraState(I)V
    .locals 0

    iput p1, p0, Lcom/android/services/telephony/vt/BaseVideoProvider;->mCameraState:I

    return-void
.end method

.method public abstract setDeviceRotatoin(I)V
.end method

.method public abstract setDisplaySurface(Landroid/view/Surface;)V
.end method

.method public abstract setPauseImage(Landroid/net/Uri;)V
.end method

.method public abstract setPreviewSurface(Landroid/view/Surface;)V
.end method

.method public setResolution(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/services/telephony/vt/BaseVideoProvider;->mResolution:Ljava/lang/String;

    return-void
.end method

.method public setRotaton(I)V
    .locals 0

    iput p1, p0, Lcom/android/services/telephony/vt/BaseVideoProvider;->mRotaton:I

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/android/services/telephony/vt/BaseVideoProvider;->mType:I

    return-void
.end method

.method public abstract setZoom(I)V
.end method

.method public startRecord(Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public startService()V
    .locals 0

    return-void
.end method

.method public stopRecord()V
    .locals 0

    return-void
.end method

.method public stopService()V
    .locals 0

    return-void
.end method
