.class public Lcom/android/bluetooth/a2dpsink/mbs/A2dpMediaBrowserService;
.super Landroid/service/media/MediaBrowserService;
.source "A2dpMediaBrowserService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/a2dpsink/mbs/A2dpMediaBrowserService$1;,
        Lcom/android/bluetooth/a2dpsink/mbs/A2dpMediaBrowserService$2;,
        Lcom/android/bluetooth/a2dpsink/mbs/A2dpMediaBrowserService$3;,
        Lcom/android/bluetooth/a2dpsink/mbs/A2dpMediaBrowserService$AvrcpCommandQueueHandler;
    }
.end annotation


# static fields
.field private static final MEDIA_ID_ROOT:Ljava/lang/String; = "__ROOT__"

.field private static final MSG_AVRCP_PASSTHRU:I = 0x5

.field private static final MSG_DEVICE_CONNECT:I = 0x2

.field private static final MSG_DEVICE_DISCONNECT:I = 0x0

.field private static final MSG_PROFILE_CONNECT:I = 0x3

.field private static final MSG_PROFILE_DISCONNECT:I = 0x1

.field private static final MSG_TRACK:I = 0x4

.field private static final PLAYBACK_SPEED:F = 1.0f

.field private static final TAG:Ljava/lang/String; = "A2dpMediaBrowserService"

.field private static final UNKNOWN_BT_AUDIO:Ljava/lang/String; = "__UNKNOWN_BT_AUDIO__"


# instance fields
.field private mA2dpDevice:Landroid/bluetooth/BluetoothDevice;

.field private mA2dpMetadata:Landroid/media/MediaMetadata;

.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mAvrcpCommandQueue:Landroid/os/Handler;

.field private mAvrcpProfile:Landroid/bluetooth/BluetoothAvrcpController;

.field private mBtReceiver:Landroid/content/BroadcastReceiver;

.field mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mSession:Landroid/media/session/MediaSession;

.field private mSessionCallbacks:Landroid/media/session/MediaSession$Callback;

.field private mTransportControlFlags:J


# direct methods
.method static synthetic -get0(Lcom/android/bluetooth/a2dpsink/mbs/A2dpMediaBrowserService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/mbs/A2dpMediaBrowserService;->mAvrcpCommandQueue:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/bluetooth/a2dpsink/mbs/A2dpMediaBrowserService;Landroid/bluetooth/BluetoothAvrcpController;)Landroid/bluetooth/BluetoothAvrcpController;
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/a2dpsink/mbs/A2dpMediaBrowserService;->mAvrcpProfile:Landroid/bluetooth/BluetoothAvrcpController;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/bluetooth/a2dpsink/mbs/A2dpMediaBrowserService;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/bluetooth/a2dpsink/mbs/A2dpMediaBrowserService;->msgDeviceConnect(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/bluetooth/a2dpsink/mbs/A2dpMediaBrowserService;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/bluetooth/a2dpsink/mbs/A2dpMediaBrowserService;->msgDeviceDisconnect(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/bluetooth/a2dpsink/mbs/A2dpMediaBrowserService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/bluetooth/a2dpsink/mbs/A2dpMediaBrowserService;->msgPassThru(I)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/bluetooth/a2dpsink/mbs/A2dpMediaBrowserService;Landroid/bluetooth/BluetoothProfile;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/bluetooth/a2dpsink/mbs/A2dpMediaBrowserService;->msgProfileConnect(Landroid/bluetooth/BluetoothProfile;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/bluetooth/a2dpsink/mbs/A2dpMediaBrowserService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/bluetooth/a2dpsink/mbs/A2dpMediaBrowserService;->msgProfileDisconnect()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/bluetooth/a2dpsink/mbs/A2dpMediaBrowserService;Landroid/media/session/PlaybackState;Landroid/media/MediaMetadata;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/a2dpsink/mbs/A2dpMediaBrowserService;->msgTrack(Landroid/media/session/PlaybackState;Landroid/media/MediaMetadata;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/service/media/MediaBrowserService;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/a2dpsink/mbs/A2dpMediaBrowserService;->mA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    const-wide/16 v0, 0x36

    iput-wide v0, p0, Lcom/android/bluetooth/a2dpsink/mbs/A2dpMediaBrowserService;->mTransportControlFlags:J

    new-instance v0, Lcom/android/bluetooth/a2dpsink/mbs/A2dpMediaBrowserService$1;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/a2dpsink/mbs/A2dpMediaBrowserService$1;-><init>(Lcom/android/bluetooth/a2dpsink/mbs/A2dpMediaBrowserService;)V

    iput-object v0, p0, Lcom/android/bluetooth/a2dpsink/mbs/A2dpMediaBrowserService;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    new-instance v0, Lcom/android/bluetooth/a2dpsink/mbs/A2dpMediaBrowserService$2;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/a2dpsink/mbs/A2dpMediaBrowserService$2;-><init>(Lcom/android/bluetooth/a2dpsink/mbs/A2dpMediaBrowserService;)V

    iput-object v0, p0, Lcom/android/bluetooth/a2dpsink/mbs/A2dpMediaBrowserService;->mSessionCallbacks:Landroid/media/session/MediaSession$Callback;

    new-instance v0, Lcom/android/bluetooth/a2dpsink/mbs/A2dpMediaBrowserService$3;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/a2dpsink/mbs/A2dpMediaBrowserService$3;-><init>(Lcom/android/bluetooth/a2dpsink/mbs/A2dpMediaBrowserService;)V

    iput-object v0, p0, Lcom/android/bluetooth/a2dpsink/mbs/A2dpMediaBrowserService;->mBtReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private msgDeviceConnect(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2

    const-string/jumbo v0, "A2dpMediaBrowserService"

    const-string/jumbo v1, "msgDeviceConnect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/bluetooth/a2dpsink/mbs/A2dpMediaBrowserService;->mA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0}, Lcom/android/bluetooth/a2dpsink/mbs/A2dpMediaBrowserService;->refreshInitialPlayingState()V

    return-void
.end method

.method private msgDeviceDisconnect(Landroid/bluetooth/BluetoothDevice;)V
    .locals 5

    const-string/jumbo v1, "A2dpMediaBrowserService"

    const-string/jumbo v2, "msgDeviceDisconnect"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/mbs/A2dpMediaBrowserService;->mA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v1, :cond_0

    const-string/jumbo v1, "A2dpMediaBrowserService"

    const-string/jumbo v2, "Already disconnected - nothing to do here."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/mbs/A2dpMediaBrowserService;->mA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "A2dpMediaBrowserService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Not the right device to disconnect current "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/a2dpsink/mbs/A2dpMediaBrowserService;->mA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " dc "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    new-instance v0, Landroid/media/session/PlaybackState$Builder;

    invoke-direct {v0}, Landroid/media/session/PlaybackState$Builder;-><init>()V

    const/4 v1, 0x7

    const-wide/16 v2, -0x1

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/media/session/PlaybackState$Builder;->setState(IJF)Landroid/media/session/PlaybackState$Builder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/bluetooth/a2dpsink/mbs/A2dpMediaBrowserService;->mTransportControlFlags:J

    invoke-virtual {v1, v2, v3}, Landroid/media/session/PlaybackState$Builder;->setActions(J)Landroid/media/session/PlaybackState$Builder;

    move-result-object v1

    const v2, 0x7f0a0093

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/a2dpsink/mbs/A2dpMediaBrowserService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/session/PlaybackState$Builder;->setErrorMessage(Ljava/lang/CharSequence;)Landroid/media/session/PlaybackState$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/mbs/A2dpMediaBrowserService;->mSession:Landroid/media/session/MediaSession;

    invoke-virtual {v0}, Landroid/media/session/PlaybackState$Builder;->build()Landroid/media/session/PlaybackState;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/session/MediaSession;->setPlaybackState(Landroid/media/session/PlaybackState;)V

    return-void
.end method

.method private msgPassThru(I)V
    .locals 3

    const-string/jumbo v0, "A2dpMediaBrowserService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "msgPassThru "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/mbs/A2dpMediaBrowserService;->mA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v0, :cond_0

    const-string/jumbo v0, "A2dpMediaBrowserService"

    const-string/jumbo v1, "Already disconnected ignoring."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/mbs/A2dpMediaBrowserService;->mAvrcpProfile:Landroid/bluetooth/BluetoothAvrcpController;

    if-nez v0, :cond_1

    const-string/jumbo v0, "A2dpMediaBrowserService"

    const-string/jumbo v1, "Profile disconnected; ignoring."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/mbs/A2dpMediaBrowserService;->mAvrcpProfile:Landroid/bluetooth/BluetoothAvrcpController;

    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/mbs/A2dpMediaBrowserService;->mA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/bluetooth/BluetoothAvrcpController;->sendPassThroughCmd(Landroid/bluetooth/BluetoothDevice;II)V

    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/mbs/A2dpMediaBrowserService;->mAvrcpProfile:Landroid/bluetooth/BluetoothAvrcpController;

    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/mbs/A2dpMediaBrowserService;->mA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Landroid/bluetooth/BluetoothAvrcpController;->sendPassThroughCmd(Landroid/bluetooth/BluetoothDevice;II)V

    return-void
.end method

.method private msgProfileConnect(Landroid/bluetooth/BluetoothProfile;)V
    .locals 2

    const-string/jumbo v0, "A2dpMediaBrowserService"

    const-string/jumbo v1, "msgProfileConnect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    check-cast p1, Landroid/bluetooth/BluetoothAvrcpController;

    iput-object p1, p0, Lcom/android/bluetooth/a2dpsink/mbs/A2dpMediaBrowserService;->mAvrcpProfile:Landroid/bluetooth/BluetoothAvrcpController;

    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/a2dpsink/mbs/A2dpMediaBrowserService;->refreshInitialPlayingState()V

    return-void
.end method

.method private msgProfileDisconnect()V
    .locals 5

    const-string/jumbo v1, "A2dpMediaBrowserService"

    const-string/jumbo v2, "msgProfileDisconnect"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/bluetooth/a2dpsink/mbs/A2dpMediaBrowserService;->mAvrcpProfile:Landroid/bluetooth/BluetoothAvrcpController;

    new-instance v0, Landroid/media/session/PlaybackState$Builder;

    invoke-direct {v0}, Landroid/media/session/PlaybackState$Builder;-><init>()V

    const/4 v1, 0x7

    const-wide/16 v2, -0x1

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/media/session/PlaybackState$Builder;->setState(IJF)Landroid/media/session/PlaybackState$Builder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/bluetooth/a2dpsink/mbs/A2dpMediaBrowserService;->mTransportControlFlags:J

    invoke-virtual {v1, v2, v3}, Landroid/media/session/PlaybackState$Builder;->setActions(J)Landroid/media/session/PlaybackState$Builder;

    move-result-object v1

    const v2, 0x7f0a0093

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/a2dpsink/mbs/A2dpMediaBrowserService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/session/PlaybackState$Builder;->setErrorMessage(Ljava/lang/CharSequence;)Landroid/media/session/PlaybackState$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/mbs/A2dpMediaBrowserService;->mSession:Landroid/media/session/MediaSession;

    invoke-virtual {v0}, Landroid/media/session/PlaybackState$Builder;->build()Landroid/media/session/PlaybackState;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/session/MediaSession;->setPlaybackState(Landroid/media/session/PlaybackState;)V

    return-void
.end method

.method private msgTrack(Landroid/media/session/PlaybackState;Landroid/media/MediaMetadata;)V
    .locals 10

    const-string/jumbo v5, "A2dpMediaBrowserService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "msgTrack: playback: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " mmd: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/bluetooth/a2dpsink/mbs/A2dpMediaBrowserService;->mSession:Landroid/media/session/MediaSession;

    invoke-virtual {v5}, Landroid/media/session/MediaSession;->getController()Landroid/media/session/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v3

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object v2

    if-eqz v3, :cond_0

    const-string/jumbo v5, "A2dpMediaBrowserService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "prevPS "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz v2, :cond_1

    const-string/jumbo v5, "android.media.metadata.TITLE"

    invoke-virtual {v2, v5}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "android.media.metadata.DURATION"

    invoke-virtual {v2, v5}, Landroid/media/MediaMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    const-string/jumbo v5, "A2dpMediaBrowserService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "prev MM title "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " track len "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz p2, :cond_2

    const-string/jumbo v5, "A2dpMediaBrowserService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "msgTrack() mmd "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p2}, Landroid/media/MediaMetadata;->getDescription()Landroid/media/MediaDescription;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/bluetooth/a2dpsink/mbs/A2dpMediaBrowserService;->mSession:Landroid/media/session/MediaSession;

    invoke-virtual {v5, p2}, Landroid/media/session/MediaSession;->setMetadata(Landroid/media/MediaMetadata;)V

    :cond_2
    if-eqz p1, :cond_3

    const-string/jumbo v5, "A2dpMediaBrowserService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "msgTrack() playbackstate "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/media/session/PlaybackState$Builder;

    invoke-direct {v1, p1}, Landroid/media/session/PlaybackState$Builder;-><init>(Landroid/media/session/PlaybackState;)V

    iget-wide v8, p0, Lcom/android/bluetooth/a2dpsink/mbs/A2dpMediaBrowserService;->mTransportControlFlags:J

    invoke-virtual {v1, v8, v9}, Landroid/media/session/PlaybackState$Builder;->setActions(J)Landroid/media/session/PlaybackState$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/session/PlaybackState$Builder;->build()Landroid/media/session/PlaybackState;

    move-result-object p1

    iget-object v5, p0, Lcom/android/bluetooth/a2dpsink/mbs/A2dpMediaBrowserService;->mSession:Landroid/media/session/MediaSession;

    invoke-virtual {v5, p1}, Landroid/media/session/MediaSession;->setPlaybackState(Landroid/media/session/PlaybackState;)V

    :cond_3
    return-void
.end method

.method private refreshInitialPlayingState()V
    .locals 8

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/android/bluetooth/a2dpsink/mbs/A2dpMediaBrowserService;->mAvrcpProfile:Landroid/bluetooth/BluetoothAvrcpController;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/bluetooth/a2dpsink/mbs/A2dpMediaBrowserService;->mA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v4, :cond_1

    :cond_0
    const-string/jumbo v4, "A2dpMediaBrowserService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "AVRCP Profile "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/bluetooth/a2dpsink/mbs/A2dpMediaBrowserService;->mAvrcpProfile:Landroid/bluetooth/BluetoothAvrcpController;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " device "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/bluetooth/a2dpsink/mbs/A2dpMediaBrowserService;->mA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v4, p0, Lcom/android/bluetooth/a2dpsink/mbs/A2dpMediaBrowserService;->mAvrcpProfile:Landroid/bluetooth/BluetoothAvrcpController;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAvrcpController;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_2

    const-string/jumbo v4, "A2dpMediaBrowserService"

    const-string/jumbo v5, "No devices connected yet"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget-object v4, p0, Lcom/android/bluetooth/a2dpsink/mbs/A2dpMediaBrowserService;->mA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/bluetooth/a2dpsink/mbs/A2dpMediaBrowserService;->mA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    :goto_0
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    iput-object v4, p0, Lcom/android/bluetooth/a2dpsink/mbs/A2dpMediaBrowserService;->mA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v4, p0, Lcom/android/bluetooth/a2dpsink/mbs/A2dpMediaBrowserService;->mAvrcpProfile:Landroid/bluetooth/BluetoothAvrcpController;

    iget-object v5, p0, Lcom/android/bluetooth/a2dpsink/mbs/A2dpMediaBrowserService;->mA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4, v5}, Landroid/bluetooth/BluetoothAvrcpController;->getPlaybackState(Landroid/bluetooth/BluetoothDevice;)Landroid/media/session/PlaybackState;

    move-result-object v3

    new-instance v2, Landroid/media/session/PlaybackState$Builder;

    invoke-direct {v2, v3}, Landroid/media/session/PlaybackState$Builder;-><init>(Landroid/media/session/PlaybackState;)V

    iget-wide v4, p0, Lcom/android/bluetooth/a2dpsink/mbs/A2dpMediaBrowserService;->mTransportControlFlags:J

    invoke-virtual {v2, v4, v5}, Landroid/media/session/PlaybackState$Builder;->setActions(J)Landroid/media/session/PlaybackState$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/session/PlaybackState$Builder;->build()Landroid/media/session/PlaybackState;

    move-result-object v3

    iget-object v4, p0, Lcom/android/bluetooth/a2dpsink/mbs/A2dpMediaBrowserService;->mAvrcpProfile:Landroid/bluetooth/BluetoothAvrcpController;

    iget-object v5, p0, Lcom/android/bluetooth/a2dpsink/mbs/A2dpMediaBrowserService;->mA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4, v5}, Landroid/bluetooth/BluetoothAvrcpController;->getMetadata(Landroid/bluetooth/BluetoothDevice;)Landroid/media/MediaMetadata;

    move-result-object v1

    const-string/jumbo v4, "A2dpMediaBrowserService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Media metadata "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " playback state "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/bluetooth/a2dpsink/mbs/A2dpMediaBrowserService;->mSession:Landroid/media/session/MediaSession;

    iget-object v5, p0, Lcom/android/bluetooth/a2dpsink/mbs/A2dpMediaBrowserService;->mAvrcpProfile:Landroid/bluetooth/BluetoothAvrcpController;

    iget-object v6, p0, Lcom/android/bluetooth/a2dpsink/mbs/A2dpMediaBrowserService;->mA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v5, v6}, Landroid/bluetooth/BluetoothAvrcpController;->getMetadata(Landroid/bluetooth/BluetoothDevice;)Landroid/media/MediaMetadata;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/media/session/MediaSession;->setMetadata(Landroid/media/MediaMetadata;)V

    iget-object v4, p0, Lcom/android/bluetooth/a2dpsink/mbs/A2dpMediaBrowserService;->mSession:Landroid/media/session/MediaSession;

    invoke-virtual {v4, v3}, Landroid/media/session/MediaSession;->setPlaybackState(Landroid/media/session/PlaybackState;)V

    return-void

    :cond_4
    const-string/jumbo v4, "A2dpMediaBrowserService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "A2dp device : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/bluetooth/a2dpsink/mbs/A2dpMediaBrowserService;->mA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " avrcp device "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method


# virtual methods
.method public onCreate()V
    .locals 4

    const-string/jumbo v1, "A2dpMediaBrowserService"

    const-string/jumbo v2, "onCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/service/media/MediaBrowserService;->onCreate()V

    new-instance v1, Landroid/media/session/MediaSession;

    const-string/jumbo v2, "A2dpMediaBrowserService"

    invoke-direct {v1, p0, v2}, Landroid/media/session/MediaSession;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/bluetooth/a2dpsink/mbs/A2dpMediaBrowserService;->mSession:Landroid/media/session/MediaSession;

    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/mbs/A2dpMediaBrowserService;->mSession:Landroid/media/session/MediaSession;

    invoke-virtual {v1}, Landroid/media/session/MediaSession;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/a2dpsink/mbs/A2dpMediaBrowserService;->setSessionToken(Landroid/media/session/MediaSession$Token;)V

    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/mbs/A2dpMediaBrowserService;->mSession:Landroid/media/session/MediaSession;

    iget-object v2, p0, Lcom/android/bluetooth/a2dpsink/mbs/A2dpMediaBrowserService;->mSessionCallbacks:Landroid/media/session/MediaSession$Callback;

    invoke-virtual {v1, v2}, Landroid/media/session/MediaSession;->setCallback(Landroid/media/session/MediaSession$Callback;)V

    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/mbs/A2dpMediaBrowserService;->mSession:Landroid/media/session/MediaSession;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/session/MediaSession;->setFlags(I)V

    new-instance v1, Lcom/android/bluetooth/a2dpsink/mbs/A2dpMediaBrowserService$AvrcpCommandQueueHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/android/bluetooth/a2dpsink/mbs/A2dpMediaBrowserService$AvrcpCommandQueueHandler;-><init>(Landroid/os/Looper;Lcom/android/bluetooth/a2dpsink/mbs/A2dpMediaBrowserService;)V

    iput-object v1, p0, Lcom/android/bluetooth/a2dpsink/mbs/A2dpMediaBrowserService;->mAvrcpCommandQueue:Landroid/os/Handler;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/a2dpsink/mbs/A2dpMediaBrowserService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/mbs/A2dpMediaBrowserService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v2, p0, Lcom/android/bluetooth/a2dpsink/mbs/A2dpMediaBrowserService;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/16 v3, 0xc

    invoke-virtual {v1, p0, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.bluetooth.avrcp-controller.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.bluetooth.avrcp-controller.profile.action.TRACK_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/mbs/A2dpMediaBrowserService;->mBtReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/a2dpsink/mbs/A2dpMediaBrowserService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string/jumbo v0, "A2dpMediaBrowserService"

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/mbs/A2dpMediaBrowserService;->mSession:Landroid/media/session/MediaSession;

    invoke-virtual {v0}, Landroid/media/session/MediaSession;->release()V

    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/mbs/A2dpMediaBrowserService;->mBtReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/a2dpsink/mbs/A2dpMediaBrowserService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-super {p0}, Landroid/service/media/MediaBrowserService;->onDestroy()V

    return-void
.end method

.method public onGetRoot(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/service/media/MediaBrowserService$BrowserRoot;
    .locals 3

    new-instance v0, Landroid/service/media/MediaBrowserService$BrowserRoot;

    const-string/jumbo v1, "__ROOT__"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/service/media/MediaBrowserService$BrowserRoot;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public onLoadChildren(Ljava/lang/String;Landroid/service/media/MediaBrowserService$Result;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/service/media/MediaBrowserService$Result",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/media/browse/MediaBrowser$MediaItem;",
            ">;>;)V"
        }
    .end annotation

    const-string/jumbo v1, "A2dpMediaBrowserService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onLoadChildren parentMediaId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2, v0}, Landroid/service/media/MediaBrowserService$Result;->sendResult(Ljava/lang/Object;)V

    return-void
.end method
