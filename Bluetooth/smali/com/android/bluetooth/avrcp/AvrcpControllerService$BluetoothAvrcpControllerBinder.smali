.class Lcom/android/bluetooth/avrcp/AvrcpControllerService$BluetoothAvrcpControllerBinder;
.super Landroid/bluetooth/IBluetoothAvrcpController$Stub;
.source "AvrcpControllerService.java"

# interfaces
.implements Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/avrcp/AvrcpControllerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BluetoothAvrcpControllerBinder"
.end annotation


# instance fields
.field private mService:Lcom/android/bluetooth/avrcp/AvrcpControllerService;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/avrcp/AvrcpControllerService;)V
    .locals 0

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothAvrcpController$Stub;-><init>()V

    iput-object p1, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$BluetoothAvrcpControllerBinder;->mService:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    return-void
.end method

.method private getService()Lcom/android/bluetooth/avrcp/AvrcpControllerService;
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "AvrcpControllerService"

    const-string/jumbo v1, "AVRCP call not allowed for non-active user"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$BluetoothAvrcpControllerBinder;->mService:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$BluetoothAvrcpControllerBinder;->mService:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    invoke-static {v0}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->-wrap3(Lcom/android/bluetooth/avrcp/AvrcpControllerService;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$BluetoothAvrcpControllerBinder;->mService:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    return-object v0

    :cond_1
    return-object v2
.end method


# virtual methods
.method public cleanup()Z
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$BluetoothAvrcpControllerBinder;->mService:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    const/4 v0, 0x1

    return v0
.end method

.method public getConnectedDevices()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$BluetoothAvrcpControllerBinder;->getService()Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2

    invoke-direct {p0}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$BluetoothAvrcpControllerBinder;->getService()Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    return v1
.end method

.method public getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$BluetoothAvrcpControllerBinder;->getService()Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    return-object v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getMetadata(Landroid/bluetooth/BluetoothDevice;)Landroid/media/MediaMetadata;
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v1, "AvrcpControllerService"

    const-string/jumbo v2, "Binder Call: getMetaData "

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$BluetoothAvrcpControllerBinder;->getService()Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v3

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->getMetaData(Landroid/bluetooth/BluetoothDevice;)Landroid/media/MediaMetadata;

    move-result-object v1

    return-object v1
.end method

.method public getPlaybackState(Landroid/bluetooth/BluetoothDevice;)Landroid/media/session/PlaybackState;
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v1, "AvrcpControllerService"

    const-string/jumbo v2, "Binder Call: getPlaybackState"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$BluetoothAvrcpControllerBinder;->getService()Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v3

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->getPlaybackState(Landroid/bluetooth/BluetoothDevice;)Landroid/media/session/PlaybackState;

    move-result-object v1

    return-object v1
.end method

.method public getPlayerSettings(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothAvrcpPlayerSettings;
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v1, "AvrcpControllerService"

    const-string/jumbo v2, "Binder Call: getPlayerApplicationSetting "

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$BluetoothAvrcpControllerBinder;->getService()Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v3

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->getPlayerSettings(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothAvrcpPlayerSettings;

    move-result-object v1

    return-object v1
.end method

.method public sendGroupNavigationCmd(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 3

    const-string/jumbo v1, "AvrcpControllerService"

    const-string/jumbo v2, "Binder Call: sendGroupNavigationCmd"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$BluetoothAvrcpControllerBinder;->getService()Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->sendGroupNavigationCmd(Landroid/bluetooth/BluetoothDevice;II)V

    return-void
.end method

.method public sendPassThroughCmd(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 3

    const-string/jumbo v1, "AvrcpControllerService"

    const-string/jumbo v2, "Binder Call: sendPassThroughCmd"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$BluetoothAvrcpControllerBinder;->getService()Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->sendPassThroughCmd(Landroid/bluetooth/BluetoothDevice;II)V

    return-void
.end method

.method public setPlayerApplicationSetting(Landroid/bluetooth/BluetoothAvrcpPlayerSettings;)Z
    .locals 3

    const-string/jumbo v1, "AvrcpControllerService"

    const-string/jumbo v2, "Binder Call: setPlayerApplicationSetting "

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$BluetoothAvrcpControllerBinder;->getService()Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->setPlayerApplicationSetting(Landroid/bluetooth/BluetoothAvrcpPlayerSettings;)Z

    move-result v1

    return v1
.end method
