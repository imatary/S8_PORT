.class public abstract Lcom/sec/ims/volte2/IImsMediaCallProvider$Stub;
.super Landroid/os/Binder;
.source "IImsMediaCallProvider.java"

# interfaces
.implements Lcom/sec/ims/volte2/IImsMediaCallProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/volte2/IImsMediaCallProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ims/volte2/IImsMediaCallProvider$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.sec.ims.volte2.IImsMediaCallProvider"

    invoke-virtual {p0, p0, v0}, Lcom/sec/ims/volte2/IImsMediaCallProvider$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sec/ims/volte2/IImsMediaCallProvider;
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string/jumbo v1, "com.sec.ims.volte2.IImsMediaCallProvider"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/sec/ims/volte2/IImsMediaCallProvider;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/sec/ims/volte2/IImsMediaCallProvider;

    return-object v0

    :cond_1
    new-instance v1, Lcom/sec/ims/volte2/IImsMediaCallProvider$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/sec/ims/volte2/IImsMediaCallProvider$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v9, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v9

    return v9

    :sswitch_0
    const-string/jumbo v10, "com.sec.ims.volte2.IImsMediaCallProvider"

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v9

    :sswitch_1
    const-string/jumbo v10, "com.sec.ims.volte2.IImsMediaCallProvider"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Lcom/sec/ims/volte2/IImsMediaCallCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/volte2/IImsMediaCallCallback;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sec/ims/volte2/IImsMediaCallProvider$Stub;->setCallback(Lcom/sec/ims/volte2/IImsMediaCallCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    :sswitch_2
    const-string/jumbo v10, "com.sec.ims.volte2.IImsMediaCallProvider"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/sec/ims/volte2/IImsMediaCallProvider$Stub;->setCamera(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    :sswitch_3
    const-string/jumbo v10, "com.sec.ims.volte2.IImsMediaCallProvider"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_0

    sget-object v10, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Surface;

    :goto_0
    invoke-virtual {p0, v2}, Lcom/sec/ims/volte2/IImsMediaCallProvider$Stub;->setPreviewSurface(Landroid/view/Surface;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :sswitch_4
    const-string/jumbo v10, "com.sec.ims.volte2.IImsMediaCallProvider"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_1

    sget-object v10, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Surface;

    :goto_1
    invoke-virtual {p0, v2}, Lcom/sec/ims/volte2/IImsMediaCallProvider$Stub;->setDisplaySurface(Landroid/view/Surface;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :sswitch_5
    const-string/jumbo v10, "com.sec.ims.volte2.IImsMediaCallProvider"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/ims/volte2/IImsMediaCallProvider$Stub;->setDeviceOrientation(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    :sswitch_6
    const-string/jumbo v10, "com.sec.ims.volte2.IImsMediaCallProvider"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/ims/volte2/IImsMediaCallProvider$Stub;->setZoom(F)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    :sswitch_7
    const-string/jumbo v10, "com.sec.ims.volte2.IImsMediaCallProvider"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/ims/volte2/IImsMediaCallProvider$Stub;->requestCameraCapabilities()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    :sswitch_8
    const-string/jumbo v10, "com.sec.ims.volte2.IImsMediaCallProvider"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/ims/volte2/IImsMediaCallProvider$Stub;->requestCallDataUsage()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    :sswitch_9
    const-string/jumbo v10, "com.sec.ims.volte2.IImsMediaCallProvider"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/sec/ims/volte2/IImsMediaCallProvider$Stub;->setPauseImage(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    :sswitch_a
    const-string/jumbo v10, "com.sec.ims.volte2.IImsMediaCallProvider"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_2

    sget-object v10, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Surface;

    :goto_2
    invoke-virtual {p0, v2}, Lcom/sec/ims/volte2/IImsMediaCallProvider$Stub;->startCamera(Landroid/view/Surface;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    :sswitch_b
    const-string/jumbo v10, "com.sec.ims.volte2.IImsMediaCallProvider"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/ims/volte2/IImsMediaCallProvider$Stub;->stopCamera()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    :sswitch_c
    const-string/jumbo v10, "com.sec.ims.volte2.IImsMediaCallProvider"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/ims/volte2/IImsMediaCallProvider$Stub;->switchCamera()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    :sswitch_d
    const-string/jumbo v10, "com.sec.ims.volte2.IImsMediaCallProvider"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/ims/volte2/IImsMediaCallProvider$Stub;->resetCameraId()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    :sswitch_e
    const-string/jumbo v10, "com.sec.ims.volte2.IImsMediaCallProvider"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/ims/volte2/IImsMediaCallProvider$Stub;->getCameraInfo(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    :sswitch_f
    const-string/jumbo v10, "com.sec.ims.volte2.IImsMediaCallProvider"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_3

    move v5, v9

    :cond_3
    invoke-virtual {p0, v5}, Lcom/sec/ims/volte2/IImsMediaCallProvider$Stub;->startRender(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    :sswitch_10
    const-string/jumbo v10, "com.sec.ims.volte2.IImsMediaCallProvider"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_4

    sget-object v10, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Surface;

    :goto_3
    invoke-virtual {p0, v2}, Lcom/sec/ims/volte2/IImsMediaCallProvider$Stub;->startVideoRenderer(Landroid/view/Surface;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    :cond_4
    const/4 v2, 0x0

    goto :goto_3

    :sswitch_11
    const-string/jumbo v10, "com.sec.ims.volte2.IImsMediaCallProvider"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/ims/volte2/IImsMediaCallProvider$Stub;->stopVideoRenderer()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    :sswitch_12
    const-string/jumbo v10, "com.sec.ims.volte2.IImsMediaCallProvider"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/ims/volte2/IImsMediaCallProvider$Stub;->swipeVideoSurface()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    :sswitch_13
    const-string/jumbo v10, "com.sec.ims.volte2.IImsMediaCallProvider"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_5

    move v5, v9

    :cond_5
    invoke-virtual {p0, v5}, Lcom/sec/ims/volte2/IImsMediaCallProvider$Stub;->deinitSurface(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    :sswitch_14
    const-string/jumbo v10, "com.sec.ims.volte2.IImsMediaCallProvider"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/ims/volte2/IImsMediaCallProvider$Stub;->getMaxZoom()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    :sswitch_15
    const-string/jumbo v10, "com.sec.ims.volte2.IImsMediaCallProvider"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/ims/volte2/IImsMediaCallProvider$Stub;->getZoom()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    :sswitch_16
    const-string/jumbo v10, "com.sec.ims.volte2.IImsMediaCallProvider"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/ims/volte2/IImsMediaCallProvider$Stub;->sendLiveVideo()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    :sswitch_17
    const-string/jumbo v10, "com.sec.ims.volte2.IImsMediaCallProvider"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_6

    const/4 v6, 0x1

    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v4, v6, v7, v8}, Lcom/sec/ims/volte2/IImsMediaCallProvider$Stub;->captureImage(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    :cond_6
    const/4 v6, 0x0

    goto :goto_4

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
