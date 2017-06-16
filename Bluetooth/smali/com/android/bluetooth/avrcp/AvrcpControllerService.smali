.class public Lcom/android/bluetooth/avrcp/AvrcpControllerService;
.super Lcom/android/bluetooth/btservice/ProfileService;
.source "AvrcpControllerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/avrcp/AvrcpControllerService$1;,
        Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;,
        Lcom/android/bluetooth/avrcp/AvrcpControllerService$BluetoothAvrcpControllerBinder;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "AvrcpControllerService"

.field private static final VDBG:Z = true

.field private static mAudioManager:Landroid/media/AudioManager;

.field private static sAvrcpControllerService:Lcom/android/bluetooth/avrcp/AvrcpControllerService;


# instance fields
.field mAvrcpRemoteDevice:Lcom/android/bluetooth/avrcp/RemoteDevice;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mConnectedDevices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

.field mRemoteMediaPlayers:Lcom/android/bluetooth/avrcp/RemoteMediaPlayers;

.field mRemoteNowPlayingList:Lcom/android/bluetooth/avrcp/NowPlaying;


# direct methods
.method static synthetic -get0()Landroid/media/AudioManager;
    .locals 1

    sget-object v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/bluetooth/avrcp/AvrcpControllerService;)Landroid/content/BroadcastReceiver;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/bluetooth/avrcp/AvrcpControllerService;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mConnectedDevices:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/bluetooth/avrcp/AvrcpControllerService;)Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mHandler:Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/bluetooth/avrcp/AvrcpControllerService;)Landroid/bluetooth/BluetoothAvrcpPlayerSettings;
    .locals 1

    invoke-direct {p0}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->getCurrentPlayerAppSetting()Landroid/bluetooth/BluetoothAvrcpPlayerSettings;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/bluetooth/avrcp/AvrcpControllerService;II)Landroid/media/MediaMetadata;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->getCurrentMetaData(II)Landroid/media/MediaMetadata;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap10(Lcom/android/bluetooth/avrcp/AvrcpControllerService;[BBII)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->sendRegisterAbsVolRspNative([BBII)V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/bluetooth/avrcp/AvrcpControllerService;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->setAbsVolume(II)V

    return-void
.end method

.method static synthetic -wrap12(Lcom/android/bluetooth/avrcp/AvrcpControllerService;[BB[B[B)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->setPlayerApplicationSettingValuesNative([BB[B[B)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/bluetooth/avrcp/AvrcpControllerService;)Landroid/media/session/PlaybackState;
    .locals 1

    invoke-direct {p0}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->getCurrentPlayBackState()Landroid/media/session/PlaybackState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(Lcom/android/bluetooth/avrcp/AvrcpControllerService;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->isAvailable()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Lcom/android/bluetooth/avrcp/AvrcpControllerService;[BII)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->sendGroupNavigationCommandNative([BII)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap5(Lcom/android/bluetooth/avrcp/AvrcpControllerService;[BII)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->sendPassThroughCommandNative([BII)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap6(Lcom/android/bluetooth/avrcp/AvrcpControllerService;Landroid/bluetooth/BluetoothDevice;)[B
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap7(Lcom/android/bluetooth/avrcp/AvrcpControllerService;Landroid/media/MediaMetadata;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->broadcastMetaDataChanged(Landroid/media/MediaMetadata;)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/bluetooth/avrcp/AvrcpControllerService;Landroid/media/session/PlaybackState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->broadcastPlayBackStateChanged(Landroid/media/session/PlaybackState;)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/bluetooth/avrcp/AvrcpControllerService;Landroid/bluetooth/BluetoothAvrcpPlayerSettings;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->broadcastPlayerAppSettingChanged(Landroid/bluetooth/BluetoothAvrcpPlayerSettings;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->classInitNative()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/bluetooth/btservice/ProfileService;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mConnectedDevices:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$1;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$1;-><init>(Lcom/android/bluetooth/avrcp/AvrcpControllerService;)V

    iput-object v0, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct {p0}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->initNative()V

    return-void
.end method

.method private asciiToInt(I[B)I
    .locals 1

    invoke-direct {p0, p2}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->utf8ToString([B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private broadcastMetaDataChanged(Landroid/media/MediaMetadata;)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.bluetooth.avrcp-controller.profile.action.TRACK_EVENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "android.bluetooth.avrcp-controller.profile.extra.METADATA"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v1, "AvrcpControllerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " broadcastMetaDataChanged = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/android/bluetooth/avrcp/AvrcpUtils;->displayMetaData(Landroid/media/MediaMetadata;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "android.permission.BLUETOOTH"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method private broadcastPlayBackStateChanged(Landroid/media/session/PlaybackState;)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.bluetooth.avrcp-controller.profile.action.TRACK_EVENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "android.bluetooth.avrcp-controller.profile.extra.PLAYBACK"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v1, "AvrcpControllerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " broadcastPlayBackStateChanged = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "android.permission.BLUETOOTH"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method private broadcastPlayerAppSettingChanged(Landroid/bluetooth/BluetoothAvrcpPlayerSettings;)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.bluetooth.avrcp-controller.profile.action.PLAYER_SETTING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "android.bluetooth.avrcp-controller.profile.extra.PLAYER_SETTING"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v1, "AvrcpControllerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " broadcastPlayerAppSettingChanged = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/android/bluetooth/avrcp/AvrcpUtils;->displayBluetoothAvrcpSettings(Landroid/bluetooth/BluetoothAvrcpPlayerSettings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "android.permission.BLUETOOTH"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method private static native classInitNative()V
.end method

.method private native cleanupNative()V
.end method

.method private static declared-synchronized clearAvrcpControllerService()V
    .locals 2

    const-class v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->sAvrcpControllerService:Lcom/android/bluetooth/avrcp/AvrcpControllerService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getAvrcpControllerService()Lcom/android/bluetooth/avrcp/AvrcpControllerService;
    .locals 4

    const/4 v3, 0x0

    const-class v1, Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->sAvrcpControllerService:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->sAvrcpControllerService:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    invoke-virtual {v0}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "AvrcpControllerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getAvrcpControllerService(): returning "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->sAvrcpControllerService:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->sAvrcpControllerService:Lcom/android/bluetooth/avrcp/AvrcpControllerService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->sAvrcpControllerService:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    if-nez v0, :cond_2

    const-string/jumbo v0, "AvrcpControllerService"

    const-string/jumbo v2, "getAvrcpControllerService(): service is NULL"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_0
    monitor-exit v1

    return-object v3

    :cond_2
    :try_start_2
    sget-object v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->sAvrcpControllerService:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    invoke-virtual {v0}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "AvrcpControllerService"

    const-string/jumbo v2, "getAvrcpControllerService(): service is not available"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B
    .locals 1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/Utils;->getBytesFromAddress(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method private getCurrentMetaData(II)Landroid/media/MediaMetadata;
    .locals 3

    const/4 v2, 0x0

    if-nez p1, :cond_2

    iget-object v1, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteNowPlayingList:Lcom/android/bluetooth/avrcp/NowPlaying;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteNowPlayingList:Lcom/android/bluetooth/avrcp/NowPlaying;

    invoke-virtual {v1, p2}, Lcom/android/bluetooth/avrcp/NowPlaying;->getTrackFromId(I)Lcom/android/bluetooth/avrcp/TrackInfo;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    return-object v2

    :cond_1
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteNowPlayingList:Lcom/android/bluetooth/avrcp/NowPlaying;

    invoke-virtual {v1, p2}, Lcom/android/bluetooth/avrcp/NowPlaying;->getTrackFromId(I)Lcom/android/bluetooth/avrcp/TrackInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/avrcp/AvrcpUtils;->getMediaMetaData(Lcom/android/bluetooth/avrcp/TrackInfo;)Landroid/media/MediaMetadata;

    move-result-object v1

    return-object v1

    :cond_2
    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    :cond_3
    return-object v2
.end method

.method private getCurrentPlayBackState()Landroid/media/session/PlaybackState;
    .locals 6

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteMediaPlayers:Lcom/android/bluetooth/avrcp/RemoteMediaPlayers;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteMediaPlayers:Lcom/android/bluetooth/avrcp/RemoteMediaPlayers;

    invoke-virtual {v0}, Lcom/android/bluetooth/avrcp/RemoteMediaPlayers;->getAddressedPlayer()Lcom/android/bluetooth/avrcp/PlayerInfo;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Landroid/media/session/PlaybackState$Builder;

    invoke-direct {v0}, Landroid/media/session/PlaybackState$Builder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x7

    const-wide/16 v4, -0x1

    invoke-virtual {v0, v2, v4, v5, v1}, Landroid/media/session/PlaybackState$Builder;->setState(IJF)Landroid/media/session/PlaybackState$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/session/PlaybackState$Builder;->build()Landroid/media/session/PlaybackState;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteMediaPlayers:Lcom/android/bluetooth/avrcp/RemoteMediaPlayers;

    invoke-virtual {v0}, Lcom/android/bluetooth/avrcp/RemoteMediaPlayers;->getAddressedPlayer()Lcom/android/bluetooth/avrcp/PlayerInfo;

    move-result-object v0

    iget-byte v0, v0, Lcom/android/bluetooth/avrcp/PlayerInfo;->mPlayStatus:B

    iget-object v1, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteMediaPlayers:Lcom/android/bluetooth/avrcp/RemoteMediaPlayers;

    invoke-virtual {v1}, Lcom/android/bluetooth/avrcp/RemoteMediaPlayers;->getAddressedPlayer()Lcom/android/bluetooth/avrcp/PlayerInfo;

    move-result-object v1

    iget-wide v2, v1, Lcom/android/bluetooth/avrcp/PlayerInfo;->mPlayTime:J

    invoke-static {v0, v2, v3}, Lcom/android/bluetooth/avrcp/AvrcpUtils;->mapBtPlayStatustoPlayBackState(BJ)Landroid/media/session/PlaybackState;

    move-result-object v0

    return-object v0
.end method

.method private getCurrentPlayerAppSetting()Landroid/bluetooth/BluetoothAvrcpPlayerSettings;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteMediaPlayers:Lcom/android/bluetooth/avrcp/RemoteMediaPlayers;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteMediaPlayers:Lcom/android/bluetooth/avrcp/RemoteMediaPlayers;

    invoke-virtual {v0}, Lcom/android/bluetooth/avrcp/RemoteMediaPlayers;->getAddressedPlayer()Lcom/android/bluetooth/avrcp/PlayerInfo;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    return-object v1

    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteMediaPlayers:Lcom/android/bluetooth/avrcp/RemoteMediaPlayers;

    invoke-virtual {v0}, Lcom/android/bluetooth/avrcp/RemoteMediaPlayers;->getAddressedPlayer()Lcom/android/bluetooth/avrcp/PlayerInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/bluetooth/avrcp/PlayerInfo;->getSupportedPlayerAppSetting()Landroid/bluetooth/BluetoothAvrcpPlayerSettings;

    move-result-object v0

    return-object v0
.end method

.method private getRcFeatures([BI)V
    .locals 5

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    invoke-static {p1}, Lcom/android/bluetooth/Utils;->getAddressStringFromByte([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    iget-object v2, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mHandler:Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    const/16 v3, 0x44c

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p2, v4, v0}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mHandler:Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    invoke-virtual {v2, v1}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private handleGroupNavigationRsp(II)V
    .locals 3

    const-string/jumbo v0, "AvrcpControllerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "group navigation response received as: key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private handlePassthroughRsp([BII)V
    .locals 3

    const-string/jumbo v0, "AvrcpControllerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "passthrough response received as: key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private handlePlayerAppSetting([B[BI)V
    .locals 7

    const/4 v6, 0x0

    const-string/jumbo v3, "AvrcpControllerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handlePlayerAppSetting rspLen = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    invoke-static {p1}, Lcom/android/bluetooth/Utils;->getAddressStringFromByte([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    iget-object v3, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mConnectedDevices:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    invoke-static {p2, v6, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v3, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mHandler:Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    const/16 v4, 0x65

    invoke-virtual {v3, v4, v6, v6, v0}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mHandler:Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    invoke-virtual {v3, v2}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private handleRegisterNotificationAbsVol([BB)V
    .locals 5

    const-string/jumbo v2, "AvrcpControllerService"

    const-string/jumbo v3, "handleRegisterNotificationAbsVol "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    invoke-static {p1}, Lcom/android/bluetooth/Utils;->getAddressStringFromByte([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    iget-object v2, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mConnectedDevices:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mHandler:Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    const/16 v3, 0x68

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p2, v4}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mHandler:Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    invoke-virtual {v2, v1}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private handleSetAbsVolume([BBB)V
    .locals 4

    const-string/jumbo v2, "AvrcpControllerService"

    const-string/jumbo v3, "handleSetAbsVolume "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    invoke-static {p1}, Lcom/android/bluetooth/Utils;->getAddressStringFromByte([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    iget-object v2, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mConnectedDevices:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mHandler:Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    const/16 v3, 0x67

    invoke-virtual {v2, v3, p2, p3}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mHandler:Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    invoke-virtual {v2, v1}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private native initNative()V
.end method

.method private onConnectionStateChanged(Z[B)V
    .locals 8

    const/16 v7, 0x4b0

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v4

    invoke-static {p2}, Lcom/android/bluetooth/Utils;->getAddressStringFromByte([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    const-string/jumbo v4, "AvrcpControllerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onConnectionStateChanged "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " size "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mConnectedDevices:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v4, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mConnectedDevices:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x2

    :goto_0
    if-eqz p1, :cond_2

    const/4 v2, 0x2

    :goto_1
    if-eqz p1, :cond_5

    if-nez v3, :cond_5

    iget-object v4, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mConnectedDevices:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_3

    const-string/jumbo v4, "AvrcpControllerService"

    const-string/jumbo v5, "A Connection already exists, returning"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mConnectedDevices:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mHandler:Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    invoke-virtual {v4, v7, v2, v3, v0}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v4, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mHandler:Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    invoke-virtual {v4, v1}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_4
    :goto_2
    return-void

    :cond_5
    if-nez p1, :cond_4

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    iget-object v4, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mConnectedDevices:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mHandler:Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    invoke-virtual {v4, v7, v2, v3, v0}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v4, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mHandler:Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    invoke-virtual {v4, v1}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2
.end method

.method private onPlayPositionChanged([BII)V
    .locals 4

    const-string/jumbo v2, "AvrcpControllerService"

    const-string/jumbo v3, "onPlayPositionChanged "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    invoke-static {p1}, Lcom/android/bluetooth/Utils;->getAddressStringFromByte([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    iget-object v2, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mConnectedDevices:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mHandler:Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    const/16 v3, 0x6a

    invoke-virtual {v2, v3, p2, p3}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mHandler:Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    invoke-virtual {v2, v1}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private onPlayStatusChanged([BB)V
    .locals 5

    const-string/jumbo v2, "AvrcpControllerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onPlayStatusChanged "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    invoke-static {p1}, Lcom/android/bluetooth/Utils;->getAddressStringFromByte([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    iget-object v2, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mConnectedDevices:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mHandler:Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    const/16 v3, 0x6b

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p2, v4}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mHandler:Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    invoke-virtual {v2, v1}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private onPlayerAppSettingChanged([B[BI)V
    .locals 6

    const/4 v5, 0x0

    const-string/jumbo v3, "AvrcpControllerService"

    const-string/jumbo v4, "onPlayerAppSettingChanged "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    invoke-static {p1}, Lcom/android/bluetooth/Utils;->getAddressStringFromByte([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    iget-object v3, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mConnectedDevices:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    invoke-static {p2, v5, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v3, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mHandler:Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    const/16 v4, 0x66

    invoke-virtual {v3, v4, v5, v5, v0}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mHandler:Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    invoke-virtual {v3, v2}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private onTrackChanged([BB[I[Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    const-string/jumbo v3, "AvrcpControllerService"

    const-string/jumbo v4, "onTrackChanged "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    invoke-static {p1}, Lcom/android/bluetooth/Utils;->getAddressStringFromByte([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    iget-object v3, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mConnectedDevices:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/android/bluetooth/avrcp/TrackInfo;

    invoke-direct {v1, v5, p2, p3, p4}, Lcom/android/bluetooth/avrcp/TrackInfo;-><init>(IB[I[Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mHandler:Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    const/16 v4, 0x69

    invoke-virtual {v3, v4, p2, v5, v1}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mHandler:Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    invoke-virtual {v3, v2}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private native sendAbsVolRspNative([BII)V
.end method

.method private native sendGroupNavigationCommandNative([BII)Z
.end method

.method private native sendPassThroughCommandNative([BII)Z
.end method

.method private native sendRegisterAbsVolRspNative([BBII)V
.end method

.method private setAbsVolume(II)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x3

    sget-object v3, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v6}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    sget-object v3, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v6}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iget-object v3, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mAvrcpRemoteDevice:Lcom/android/bluetooth/avrcp/RemoteDevice;

    iget-boolean v3, v3, Lcom/android/bluetooth/avrcp/RemoteDevice;->mFirstAbsVolCmdRecvd:Z

    if-eqz v3, :cond_1

    mul-int v3, v1, p1

    div-int/lit8 v2, v3, 0x7f

    const-string/jumbo v3, "AvrcpControllerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " setAbsVolume ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " maxVol = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " cur = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " new = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v2, v0, :cond_0

    sget-object v3, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v6, v2, v7}, Landroid/media/AudioManager;->setStreamVolume(III)V

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mAvrcpRemoteDevice:Lcom/android/bluetooth/avrcp/RemoteDevice;

    iget-object v3, v3, Lcom/android/bluetooth/avrcp/RemoteDevice;->mBTDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v3}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v3

    invoke-direct {p0, v3, p1, p2}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->sendAbsVolRspNative([BII)V

    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mAvrcpRemoteDevice:Lcom/android/bluetooth/avrcp/RemoteDevice;

    iput-boolean v7, v3, Lcom/android/bluetooth/avrcp/RemoteDevice;->mFirstAbsVolCmdRecvd:Z

    mul-int/lit8 v3, v0, 0x7f

    div-int p1, v3, v1

    const-string/jumbo v3, "AvrcpControllerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " SetAbsVol recvd for first time, respond with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static declared-synchronized setAvrcpControllerService(Lcom/android/bluetooth/avrcp/AvrcpControllerService;)V
    .locals 4

    const-class v1, Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    monitor-enter v1

    if-eqz p0, :cond_1

    :try_start_0
    invoke-virtual {p0}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "AvrcpControllerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setAvrcpControllerService(): set to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->sAvrcpControllerService:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-object p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->sAvrcpControllerService:Lcom/android/bluetooth/avrcp/AvrcpControllerService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :cond_1
    :try_start_1
    sget-object v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->sAvrcpControllerService:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    if-nez v0, :cond_2

    const-string/jumbo v0, "AvrcpControllerService"

    const-string/jumbo v2, "setAvrcpControllerService(): service not available"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_2
    :try_start_2
    sget-object v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->sAvrcpControllerService:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    invoke-virtual {v0}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "AvrcpControllerService"

    const-string/jumbo v2, "setAvrcpControllerService(): service is cleaning up"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private setPlayerAppSettingRsp([BB)V
    .locals 0

    return-void
.end method

.method private native setPlayerApplicationSettingValuesNative([BB[B[B)V
.end method

.method private utf8ToString([B)Ljava/lang/String;
    .locals 2

    const-string/jumbo v1, "UTF-8"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v1
.end method


# virtual methods
.method protected cleanup()Z
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mHandler:Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mHandler:Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mHandler:Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    invoke-virtual {v1}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->resetRemoteData()V

    invoke-static {}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->clearAvrcpControllerService()V

    invoke-direct {p0}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->cleanupNative()V

    const/4 v1, 0x1

    return v1
.end method

.method public dump(Ljava/lang/StringBuilder;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/bluetooth/btservice/ProfileService;->dump(Ljava/lang/StringBuilder;)V

    return-void
.end method

.method public getConnectedDevices()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "android.permission.BLUETOOTH"

    const-string/jumbo v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mConnectedDevices:Ljava/util/ArrayList;

    return-object v0
.end method

.method getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2

    const-string/jumbo v0, "android.permission.BLUETOOTH"

    const-string/jumbo v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mConnectedDevices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getDevicesMatchingConnectionStates([I)Ljava/util/List;
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

    const-string/jumbo v1, "android.permission.BLUETOOTH"

    const-string/jumbo v2, "Need BLUETOOTH permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    aget v1, p1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mConnectedDevices:Ljava/util/ArrayList;

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1
.end method

.method public getMetaData(Landroid/bluetooth/BluetoothDevice;)Landroid/media/MediaMetadata;
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    const-string/jumbo v0, "AvrcpControllerService"

    const-string/jumbo v1, "getMetaData = "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "android.permission.BLUETOOTH"

    const-string/jumbo v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteNowPlayingList:Lcom/android/bluetooth/avrcp/NowPlaying;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteNowPlayingList:Lcom/android/bluetooth/avrcp/NowPlaying;

    invoke-virtual {v0}, Lcom/android/bluetooth/avrcp/NowPlaying;->getCurrentTrack()Lcom/android/bluetooth/avrcp/TrackInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v3, v3}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->getCurrentMetaData(II)Landroid/media/MediaMetadata;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v2
.end method

.method protected getName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "AvrcpControllerService"

    return-object v0
.end method

.method public getPlaybackState(Landroid/bluetooth/BluetoothDevice;)Landroid/media/session/PlaybackState;
    .locals 3

    const-string/jumbo v0, "AvrcpControllerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getPlayBackState device = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "android.permission.BLUETOOTH"

    const-string/jumbo v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->getCurrentPlayBackState()Landroid/media/session/PlaybackState;

    move-result-object v0

    return-object v0
.end method

.method public getPlayerSettings(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothAvrcpPlayerSettings;
    .locals 2

    const-string/jumbo v0, "AvrcpControllerService"

    const-string/jumbo v1, "getPlayerApplicationSetting "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "android.permission.BLUETOOTH"

    const-string/jumbo v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->getCurrentPlayerAppSetting()Landroid/bluetooth/BluetoothAvrcpPlayerSettings;

    move-result-object v0

    return-object v0
.end method

.method protected initBinder()Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;
    .locals 1

    new-instance v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$BluetoothAvrcpControllerBinder;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$BluetoothAvrcpControllerBinder;-><init>(Lcom/android/bluetooth/avrcp/AvrcpControllerService;)V

    return-object v0
.end method

.method protected resetRemoteData()V
    .locals 4

    const/4 v3, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mAvrcpRemoteDevice:Lcom/android/bluetooth/avrcp/RemoteDevice;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mAvrcpRemoteDevice:Lcom/android/bluetooth/avrcp/RemoteDevice;

    invoke-virtual {v1}, Lcom/android/bluetooth/avrcp/RemoteDevice;->cleanup()V

    iput-object v3, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mAvrcpRemoteDevice:Lcom/android/bluetooth/avrcp/RemoteDevice;

    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteMediaPlayers:Lcom/android/bluetooth/avrcp/RemoteMediaPlayers;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteMediaPlayers:Lcom/android/bluetooth/avrcp/RemoteMediaPlayers;

    invoke-virtual {v1}, Lcom/android/bluetooth/avrcp/RemoteMediaPlayers;->cleanup()V

    iput-object v3, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteMediaPlayers:Lcom/android/bluetooth/avrcp/RemoteMediaPlayers;

    :cond_1
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteNowPlayingList:Lcom/android/bluetooth/avrcp/NowPlaying;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteNowPlayingList:Lcom/android/bluetooth/avrcp/NowPlaying;

    invoke-virtual {v1}, Lcom/android/bluetooth/avrcp/NowPlaying;->cleanup()V

    iput-object v3, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteNowPlayingList:Lcom/android/bluetooth/avrcp/NowPlaying;

    :cond_2
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "AvrcpControllerService"

    const-string/jumbo v2, "Receiver not registered"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendGroupNavigationCmd(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 6

    const-string/jumbo v3, "AvrcpControllerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sendGroupNavigationCmd keyCode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " keyState: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    new-instance v3, Ljava/lang/NullPointerException;

    const-string/jumbo v4, "device == null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    iget-object v3, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mConnectedDevices:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mConnectedDevices:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    const-string/jumbo v3, "AvrcpControllerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Device: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string/jumbo v3, "AvrcpControllerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " Device does not match "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const-string/jumbo v3, "android.permission.BLUETOOTH"

    const-string/jumbo v4, "Need BLUETOOTH permission"

    invoke-virtual {p0, v3, v4}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mHandler:Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4, p2, p3, p1}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mHandler:Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    invoke-virtual {v3, v2}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendPassThroughCmd(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const-string/jumbo v2, "AvrcpControllerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendPassThroughCmd keyCode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " keyState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "device == null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mConnectedDevices:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "AvrcpControllerService"

    const-string/jumbo v3, " Device does not match"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mAvrcpRemoteDevice:Lcom/android/bluetooth/avrcp/RemoteDevice;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mAvrcpRemoteDevice:Lcom/android/bluetooth/avrcp/RemoteDevice;

    iget v2, v2, Lcom/android/bluetooth/avrcp/RemoteDevice;->mRemoteFeatures:I

    if-nez v2, :cond_3

    :cond_2
    const-string/jumbo v2, "AvrcpControllerService"

    const-string/jumbo v3, " Device connected but PlayState not present "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "android.permission.BLUETOOTH"

    const-string/jumbo v3, "Need BLUETOOTH permission"

    invoke-virtual {p0, v2, v3}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mHandler:Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    invoke-virtual {v2, v5, p2, p3, p1}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v2, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mHandler:Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    invoke-virtual {v2, v0}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_3
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteMediaPlayers:Lcom/android/bluetooth/avrcp/RemoteMediaPlayers;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteMediaPlayers:Lcom/android/bluetooth/avrcp/RemoteMediaPlayers;

    invoke-virtual {v2}, Lcom/android/bluetooth/avrcp/RemoteMediaPlayers;->getAddressedPlayer()Lcom/android/bluetooth/avrcp/PlayerInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    const/4 v1, 0x0

    packed-switch p2, :pswitch_data_0

    :goto_0
    :pswitch_0
    if-eqz v1, :cond_d

    const-string/jumbo v2, "android.permission.BLUETOOTH"

    const-string/jumbo v3, "Need BLUETOOTH permission"

    invoke-virtual {p0, v2, v3}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mHandler:Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    invoke-virtual {v2, v5, p2, p3, p1}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v2, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mHandler:Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    invoke-virtual {v2, v0}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->sendMessage(Landroid/os/Message;)Z

    :goto_1
    return-void

    :pswitch_1
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteMediaPlayers:Lcom/android/bluetooth/avrcp/RemoteMediaPlayers;

    invoke-virtual {v2}, Lcom/android/bluetooth/avrcp/RemoteMediaPlayers;->getPlayStatus()B

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteMediaPlayers:Lcom/android/bluetooth/avrcp/RemoteMediaPlayers;

    invoke-virtual {v2}, Lcom/android/bluetooth/avrcp/RemoteMediaPlayers;->getPlayStatus()B

    move-result v2

    if-ne v2, v6, :cond_5

    :cond_4
    const/4 v1, 0x1

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteMediaPlayers:Lcom/android/bluetooth/avrcp/RemoteMediaPlayers;

    invoke-virtual {v2}, Lcom/android/bluetooth/avrcp/RemoteMediaPlayers;->getPlayStatus()B

    move-result v2

    if-ne v2, v5, :cond_6

    const/4 v1, 0x1

    goto :goto_0

    :cond_6
    const/4 v1, 0x0

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteMediaPlayers:Lcom/android/bluetooth/avrcp/RemoteMediaPlayers;

    invoke-virtual {v2}, Lcom/android/bluetooth/avrcp/RemoteMediaPlayers;->getPlayStatus()B

    move-result v2

    if-eq v2, v5, :cond_7

    iget-object v2, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteMediaPlayers:Lcom/android/bluetooth/avrcp/RemoteMediaPlayers;

    invoke-virtual {v2}, Lcom/android/bluetooth/avrcp/RemoteMediaPlayers;->getPlayStatus()B

    move-result v2

    if-ne v2, v7, :cond_8

    :cond_7
    const/4 v1, 0x1

    goto :goto_0

    :cond_8
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteMediaPlayers:Lcom/android/bluetooth/avrcp/RemoteMediaPlayers;

    invoke-virtual {v2}, Lcom/android/bluetooth/avrcp/RemoteMediaPlayers;->getPlayStatus()B

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteMediaPlayers:Lcom/android/bluetooth/avrcp/RemoteMediaPlayers;

    invoke-virtual {v2}, Lcom/android/bluetooth/avrcp/RemoteMediaPlayers;->getPlayStatus()B

    move-result v2

    if-eq v2, v6, :cond_7

    iget-object v2, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteMediaPlayers:Lcom/android/bluetooth/avrcp/RemoteMediaPlayers;

    invoke-virtual {v2}, Lcom/android/bluetooth/avrcp/RemoteMediaPlayers;->getPlayStatus()B

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_9

    const/4 v1, 0x1

    goto :goto_0

    :cond_9
    const/4 v1, 0x0

    goto :goto_0

    :pswitch_3
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteMediaPlayers:Lcom/android/bluetooth/avrcp/RemoteMediaPlayers;

    invoke-virtual {v2}, Lcom/android/bluetooth/avrcp/RemoteMediaPlayers;->getPlayStatus()B

    move-result v2

    if-eq v2, v5, :cond_a

    iget-object v2, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteMediaPlayers:Lcom/android/bluetooth/avrcp/RemoteMediaPlayers;

    invoke-virtual {v2}, Lcom/android/bluetooth/avrcp/RemoteMediaPlayers;->getPlayStatus()B

    move-result v2

    if-ne v2, v7, :cond_b

    :cond_a
    const/4 v1, 0x1

    goto :goto_0

    :cond_b
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteMediaPlayers:Lcom/android/bluetooth/avrcp/RemoteMediaPlayers;

    invoke-virtual {v2}, Lcom/android/bluetooth/avrcp/RemoteMediaPlayers;->getPlayStatus()B

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_a

    iget-object v2, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteMediaPlayers:Lcom/android/bluetooth/avrcp/RemoteMediaPlayers;

    invoke-virtual {v2}, Lcom/android/bluetooth/avrcp/RemoteMediaPlayers;->getPlayStatus()B

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteMediaPlayers:Lcom/android/bluetooth/avrcp/RemoteMediaPlayers;

    invoke-virtual {v2}, Lcom/android/bluetooth/avrcp/RemoteMediaPlayers;->getPlayStatus()B

    move-result v2

    if-ne v2, v6, :cond_c

    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_c
    const/4 v1, 0x0

    goto/16 :goto_0

    :pswitch_4
    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_d
    const-string/jumbo v2, "AvrcpControllerService"

    const-string/jumbo v3, " Not in right state, don\'t send Pass Thru cmd "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x44
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public setPlayerApplicationSetting(Landroid/bluetooth/BluetoothAvrcpPlayerSettings;)Z
    .locals 11

    iget-object v8, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mAvrcpRemoteDevice:Lcom/android/bluetooth/avrcp/RemoteDevice;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteMediaPlayers:Lcom/android/bluetooth/avrcp/RemoteMediaPlayers;

    if-nez v8, :cond_1

    :cond_0
    const/4 v8, 0x0

    return v8

    :cond_1
    const-string/jumbo v8, "android.permission.BLUETOOTH"

    const-string/jumbo v9, "Need BLUETOOTH permission"

    invoke-virtual {p0, v8, v9}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAvrcpPlayerSettings;->getSettings()I

    move-result v5

    const/4 v7, 0x0

    :goto_0
    if-lez v5, :cond_3

    and-int/lit8 v8, v5, 0x1

    if-eqz v8, :cond_2

    const/4 v8, 0x1

    :goto_1
    add-int/2addr v7, v8

    shr-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    const/4 v8, 0x0

    goto :goto_1

    :cond_3
    mul-int/lit8 v8, v7, 0x2

    new-array v0, v8, [B

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAvrcpPlayerSettings;->getSettings()I

    move-result v5

    const/4 v2, 0x0

    and-int/lit8 v8, v5, 0x1

    if-eqz v8, :cond_8

    const/4 v8, 0x0

    const/4 v2, 0x1

    const/4 v9, 0x1

    aput-byte v9, v0, v8

    add-int/lit8 v3, v2, 0x1

    const/4 v8, 0x1

    invoke-virtual {p1, v8}, Landroid/bluetooth/BluetoothAvrcpPlayerSettings;->getSettingValue(I)I

    move-result v8

    const/4 v9, 0x1

    invoke-static {v9, v8}, Lcom/android/bluetooth/avrcp/AvrcpUtils;->mapAvrcpPlayerSettingstoBTAttribVal(II)I

    move-result v8

    int-to-byte v8, v8

    aput-byte v8, v0, v2

    :goto_2
    and-int/lit8 v8, v5, 0x2

    if-eqz v8, :cond_4

    add-int/lit8 v2, v3, 0x1

    const/4 v8, 0x2

    aput-byte v8, v0, v3

    add-int/lit8 v3, v2, 0x1

    const/4 v8, 0x2

    invoke-virtual {p1, v8}, Landroid/bluetooth/BluetoothAvrcpPlayerSettings;->getSettingValue(I)I

    move-result v8

    const/4 v9, 0x2

    invoke-static {v9, v8}, Lcom/android/bluetooth/avrcp/AvrcpUtils;->mapAvrcpPlayerSettingstoBTAttribVal(II)I

    move-result v8

    int-to-byte v8, v8

    aput-byte v8, v0, v2

    :cond_4
    and-int/lit8 v8, v5, 0x4

    if-eqz v8, :cond_5

    add-int/lit8 v2, v3, 0x1

    const/4 v8, 0x3

    aput-byte v8, v0, v3

    add-int/lit8 v3, v2, 0x1

    const/4 v8, 0x4

    invoke-virtual {p1, v8}, Landroid/bluetooth/BluetoothAvrcpPlayerSettings;->getSettingValue(I)I

    move-result v8

    const/4 v9, 0x4

    invoke-static {v9, v8}, Lcom/android/bluetooth/avrcp/AvrcpUtils;->mapAvrcpPlayerSettingstoBTAttribVal(II)I

    move-result v8

    int-to-byte v8, v8

    aput-byte v8, v0, v2

    :cond_5
    and-int/lit8 v8, v5, 0x8

    if-eqz v8, :cond_7

    add-int/lit8 v2, v3, 0x1

    const/4 v8, 0x4

    aput-byte v8, v0, v3

    add-int/lit8 v3, v2, 0x1

    const/16 v8, 0x8

    invoke-virtual {p1, v8}, Landroid/bluetooth/BluetoothAvrcpPlayerSettings;->getSettingValue(I)I

    move-result v8

    const/16 v9, 0x8

    invoke-static {v9, v8}, Lcom/android/bluetooth/avrcp/AvrcpUtils;->mapAvrcpPlayerSettingstoBTAttribVal(II)I

    move-result v8

    int-to-byte v8, v8

    aput-byte v8, v0, v2

    move v2, v3

    :goto_3
    iget-object v8, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteMediaPlayers:Lcom/android/bluetooth/avrcp/RemoteMediaPlayers;

    invoke-virtual {v8}, Lcom/android/bluetooth/avrcp/RemoteMediaPlayers;->getAddressedPlayer()Lcom/android/bluetooth/avrcp/PlayerInfo;

    move-result-object v8

    int-to-byte v9, v7

    invoke-virtual {v8, v9, v0}, Lcom/android/bluetooth/avrcp/PlayerInfo;->isPlayerAppSettingSupported(B[B)Z

    move-result v4

    if-eqz v4, :cond_6

    mul-int/lit8 v8, v7, 0x2

    const/4 v9, 0x0

    invoke-static {v0, v9, v8}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget-object v8, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mHandler:Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v7, v10, v1}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    iget-object v8, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mHandler:Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    invoke-virtual {v8, v6}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_6
    return v4

    :cond_7
    move v2, v3

    goto :goto_3

    :cond_8
    move v3, v2

    goto :goto_2
.end method

.method protected start()Z
    .locals 4

    new-instance v1, Landroid/os/HandlerThread;

    const-string/jumbo v2, "BluetoothAvrcpHandler"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v2, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, v3}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;-><init>(Lcom/android/bluetooth/avrcp/AvrcpControllerService;Landroid/os/Looper;Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;)V

    iput-object v2, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mHandler:Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    invoke-static {p0}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->setAvrcpControllerService(Lcom/android/bluetooth/avrcp/AvrcpControllerService;)V

    sget-object v2, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->sAvrcpControllerService:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    const-string/jumbo v3, "audio"

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    sput-object v2, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x1

    return v2
.end method

.method public startAvrcpUpdates()V
    .locals 2

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mHandler:Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    const/16 v1, 0xca

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method protected stop()Z
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mHandler:Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mHandler:Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mHandler:Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    invoke-virtual {v1}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->resetRemoteData()V

    const/4 v1, 0x1

    return v1
.end method

.method public stopAvrcpUpdates()V
    .locals 2

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mHandler:Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    const/16 v1, 0xc9

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
