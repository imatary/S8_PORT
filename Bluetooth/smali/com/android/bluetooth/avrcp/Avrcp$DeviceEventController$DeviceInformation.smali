.class public Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController$DeviceInformation;
.super Ljava/lang/Object;
.source "Avrcp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DeviceInformation"
.end annotation


# instance fields
.field private mAddressedPlayerChanged:I

.field private mAvailablePlayersChanged:I

.field private mFeature:I

.field private mInitialRemoteVolume:I

.field private mNowPlayingContentChanged:I

.field private mPlayPosChanged:I

.field private mPlayStatusChanged:I

.field private mPlayerSettingChanged:I

.field private mRemoteVolume:I

.field private mTrackChanged:I

.field final synthetic this$1:Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;)V
    .locals 3

    const/4 v2, -0x1

    const/4 v1, 0x1

    iput-object p1, p0, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController$DeviceInformation;->this$1:Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController$DeviceInformation;->mFeature:I

    iput v1, p0, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController$DeviceInformation;->mTrackChanged:I

    iput v1, p0, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController$DeviceInformation;->mPlayStatusChanged:I

    iput v1, p0, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController$DeviceInformation;->mPlayPosChanged:I

    iput v1, p0, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController$DeviceInformation;->mPlayerSettingChanged:I

    iput v1, p0, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController$DeviceInformation;->mNowPlayingContentChanged:I

    iput v1, p0, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController$DeviceInformation;->mAvailablePlayersChanged:I

    iput v1, p0, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController$DeviceInformation;->mAddressedPlayerChanged:I

    iput v2, p0, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController$DeviceInformation;->mInitialRemoteVolume:I

    iput v2, p0, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController$DeviceInformation;->mRemoteVolume:I

    return-void
.end method


# virtual methods
.method public getAddressedPlayerChangedNT()I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController$DeviceInformation;->mAddressedPlayerChanged:I

    return v0
.end method

.method public getAvailablePlayersChangedNT()I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController$DeviceInformation;->mAvailablePlayersChanged:I

    return v0
.end method

.method public getFeature()I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController$DeviceInformation;->mFeature:I

    return v0
.end method

.method public getInitialRemoteVolume()I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController$DeviceInformation;->mInitialRemoteVolume:I

    return v0
.end method

.method public getNowPlayingContentChangedNT()I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController$DeviceInformation;->mNowPlayingContentChanged:I

    return v0
.end method

.method public getPlayPosChangedNT()I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController$DeviceInformation;->mPlayPosChanged:I

    return v0
.end method

.method public getPlayStatusChangedNT()I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController$DeviceInformation;->mPlayStatusChanged:I

    return v0
.end method

.method public getPlayerSettingChangedNT()I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController$DeviceInformation;->mPlayerSettingChanged:I

    return v0
.end method

.method public getRemoteVolume()I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController$DeviceInformation;->mRemoteVolume:I

    return v0
.end method

.method public getTrackChangedNT()I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController$DeviceInformation;->mTrackChanged:I

    return v0
.end method

.method public setAddressedPlayerChangedNT(I)V
    .locals 0

    iput p1, p0, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController$DeviceInformation;->mAddressedPlayerChanged:I

    return-void
.end method

.method public setAvailablePlayersChangedNT(I)V
    .locals 0

    iput p1, p0, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController$DeviceInformation;->mAvailablePlayersChanged:I

    return-void
.end method

.method public setFeature(I)V
    .locals 0

    iput p1, p0, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController$DeviceInformation;->mFeature:I

    return-void
.end method

.method public setInitialRemoteVolume(I)V
    .locals 0

    iput p1, p0, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController$DeviceInformation;->mInitialRemoteVolume:I

    return-void
.end method

.method public setNowPlayingContentChangedNT(I)V
    .locals 0

    iput p1, p0, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController$DeviceInformation;->mNowPlayingContentChanged:I

    return-void
.end method

.method public setPlayPosChangedNT(I)V
    .locals 0

    iput p1, p0, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController$DeviceInformation;->mPlayPosChanged:I

    return-void
.end method

.method public setPlayStatusChangedNT(I)V
    .locals 0

    iput p1, p0, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController$DeviceInformation;->mPlayStatusChanged:I

    return-void
.end method

.method public setPlayerSettingChangedNT(I)V
    .locals 0

    iput p1, p0, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController$DeviceInformation;->mPlayerSettingChanged:I

    return-void
.end method

.method public setRemoteVolume(I)V
    .locals 0

    iput p1, p0, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController$DeviceInformation;->mRemoteVolume:I

    return-void
.end method

.method public setTrackChangedNT(I)V
    .locals 0

    iput p1, p0, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController$DeviceInformation;->mTrackChanged:I

    return-void
.end method
