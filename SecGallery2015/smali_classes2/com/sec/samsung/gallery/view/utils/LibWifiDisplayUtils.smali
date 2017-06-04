.class public Lcom/sec/samsung/gallery/view/utils/LibWifiDisplayUtils;
.super Ljava/lang/Object;
.source "LibWifiDisplayUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LibWifiDisplayUtils"

.field private static final sWfdImagesResIds:[I


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDisplayManagerEx:Lcom/sec/samsung/gallery/lib/libinterface/DisplayManagerInterface;

.field private mIsReceiverRegistered:Z

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSettingsObserver:Landroid/database/ContentObserver;

.field private mWifiDisplayStatusEx:Lcom/sec/samsung/gallery/lib/libinterface/WifiDisplayStatusInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sec/samsung/gallery/view/utils/LibWifiDisplayUtils;->sWfdImagesResIds:[I

    return-void

    :array_0
    .array-data 4
        0x7f020229
        0x7f02022c
        0x7f02022f
        0x7f020228
        0x7f020230
        0x7f02022e
        0x7f02022a
        0x7f02022d
        0x7f02022b
        0x7f020231
        0x7f020227
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/utils/LibWifiDisplayUtils;->mIsReceiverRegistered:Z

    new-instance v0, Lcom/sec/samsung/gallery/view/utils/LibWifiDisplayUtils$2;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/utils/LibWifiDisplayUtils$2;-><init>(Lcom/sec/samsung/gallery/view/utils/LibWifiDisplayUtils;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/utils/LibWifiDisplayUtils;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/utils/LibWifiDisplayUtils;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/sec/samsung/gallery/lib/factory/DisplayManagerFactory;

    invoke-direct {v0}, Lcom/sec/samsung/gallery/lib/factory/DisplayManagerFactory;-><init>()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/utils/LibWifiDisplayUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/lib/factory/DisplayManagerFactory;->create(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/lib/libinterface/DisplayManagerInterface;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/utils/LibWifiDisplayUtils;->mDisplayManagerEx:Lcom/sec/samsung/gallery/lib/libinterface/DisplayManagerInterface;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/utils/LibWifiDisplayUtils;->mDisplayManagerEx:Lcom/sec/samsung/gallery/lib/libinterface/DisplayManagerInterface;

    invoke-interface {v0}, Lcom/sec/samsung/gallery/lib/libinterface/DisplayManagerInterface;->getWifiDisplayStatus()Lcom/sec/samsung/gallery/lib/libinterface/WifiDisplayStatusInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/utils/LibWifiDisplayUtils;->mWifiDisplayStatusEx:Lcom/sec/samsung/gallery/lib/libinterface/WifiDisplayStatusInterface;

    new-instance v0, Lcom/sec/samsung/gallery/view/utils/LibWifiDisplayUtils$1;

    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/utils/LibWifiDisplayUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/sec/samsung/gallery/view/utils/LibWifiDisplayUtils$1;-><init>(Lcom/sec/samsung/gallery/view/utils/LibWifiDisplayUtils;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/utils/LibWifiDisplayUtils;->mSettingsObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/view/utils/LibWifiDisplayUtils;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/utils/LibWifiDisplayUtils;->update()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/view/utils/LibWifiDisplayUtils;)Lcom/sec/samsung/gallery/lib/libinterface/DisplayManagerInterface;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/utils/LibWifiDisplayUtils;->mDisplayManagerEx:Lcom/sec/samsung/gallery/lib/libinterface/DisplayManagerInterface;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sec/samsung/gallery/view/utils/LibWifiDisplayUtils;Lcom/sec/samsung/gallery/lib/libinterface/WifiDisplayStatusInterface;)Lcom/sec/samsung/gallery/lib/libinterface/WifiDisplayStatusInterface;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/utils/LibWifiDisplayUtils;->mWifiDisplayStatusEx:Lcom/sec/samsung/gallery/lib/libinterface/WifiDisplayStatusInterface;

    return-object p1
.end method

.method private static getDefaultIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1

    const/16 v0, 0x9

    invoke-static {p0, v0}, Lcom/sec/samsung/gallery/view/utils/LibWifiDisplayUtils;->getDeviceIcon(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private static getDeviceIcon(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/view/utils/LibWifiDisplayUtils;->sWfdImagesResIds:[I

    aget v0, v0, p1

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getWfdIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4

    if-nez p1, :cond_0

    invoke-static {p0}, Lcom/sec/samsung/gallery/view/utils/LibWifiDisplayUtils;->getDefaultIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    :goto_0
    return-object v3

    :cond_0
    const-string/jumbo v3, "-"

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    if-nez v3, :cond_1

    invoke-static {p0}, Lcom/sec/samsung/gallery/view/utils/LibWifiDisplayUtils;->getDefaultIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :try_start_0
    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    const/4 v3, 0x1

    if-gt v3, v0, :cond_2

    const/16 v3, 0xc

    if-ge v0, v3, :cond_2

    add-int/lit8 v3, v0, -0x1

    invoke-static {p0, v3}, Lcom/sec/samsung/gallery/view/utils/LibWifiDisplayUtils;->getDeviceIcon(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {p0}, Lcom/sec/samsung/gallery/view/utils/LibWifiDisplayUtils;->getDefaultIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lcom/sec/samsung/gallery/view/utils/LibWifiDisplayUtils;->getDefaultIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_0
.end method

.method private getWifiDisplayStatus()Lcom/sec/samsung/gallery/lib/libinterface/WifiDisplayStatusInterface;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/utils/LibWifiDisplayUtils;->mDisplayManagerEx:Lcom/sec/samsung/gallery/lib/libinterface/DisplayManagerInterface;

    invoke-interface {v0}, Lcom/sec/samsung/gallery/lib/libinterface/DisplayManagerInterface;->getWifiDisplayStatus()Lcom/sec/samsung/gallery/lib/libinterface/WifiDisplayStatusInterface;

    move-result-object v0

    return-object v0
.end method

.method private update()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/utils/LibWifiDisplayUtils;->mDisplayManagerEx:Lcom/sec/samsung/gallery/lib/libinterface/DisplayManagerInterface;

    invoke-interface {v0}, Lcom/sec/samsung/gallery/lib/libinterface/DisplayManagerInterface;->getWifiDisplayStatus()Lcom/sec/samsung/gallery/lib/libinterface/WifiDisplayStatusInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/utils/LibWifiDisplayUtils;->mWifiDisplayStatusEx:Lcom/sec/samsung/gallery/lib/libinterface/WifiDisplayStatusInterface;

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/utils/LibWifiDisplayUtils;->applyState()V

    return-void
.end method


# virtual methods
.method applyState()V
    .locals 0

    return-void
.end method

.method public connectWifiDisplay(Lcom/sec/samsung/gallery/lib/libinterface/WifiDisplayInterface;)V
    .locals 3

    const-string/jumbo v0, "LibWifiDisplayUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "connect WiFi display : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/sec/samsung/gallery/lib/libinterface/WifiDisplayInterface;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/sec/samsung/gallery/lib/libinterface/WifiDisplayInterface;->getDeviceAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/utils/LibWifiDisplayUtils;->mDisplayManagerEx:Lcom/sec/samsung/gallery/lib/libinterface/DisplayManagerInterface;

    sget v1, Lcom/sec/samsung/gallery/lib/factory/DisplayManagerFactory;->CONN_STATE_CHANGEPLAYER_GALLERY:I

    invoke-interface {p1}, Lcom/sec/samsung/gallery/lib/libinterface/WifiDisplayInterface;->getDeviceAddress()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/sec/samsung/gallery/lib/libinterface/DisplayManagerInterface;->connectWifiDisplayWithMode(ILjava/lang/String;)V

    return-void
.end method

.method public disconnectWifiDisplay()V
    .locals 2

    const-string/jumbo v0, "LibWifiDisplayUtils"

    const-string/jumbo v1, "disconnect WiFi displays"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/utils/LibWifiDisplayUtils;->mDisplayManagerEx:Lcom/sec/samsung/gallery/lib/libinterface/DisplayManagerInterface;

    invoke-interface {v0}, Lcom/sec/samsung/gallery/lib/libinterface/DisplayManagerInterface;->disconnectWifiDisplay()V

    return-void
.end method

.method public getExceptionalCase()I
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/utils/LibWifiDisplayUtils;->mDisplayManagerEx:Lcom/sec/samsung/gallery/lib/libinterface/DisplayManagerInterface;

    invoke-interface {v0}, Lcom/sec/samsung/gallery/lib/libinterface/DisplayManagerInterface;->checkExceptionalCase()I

    move-result v0

    return v0
.end method

.method public getWifiDisplayAvailable()[Lcom/sec/samsung/gallery/lib/libinterface/WifiDisplayInterface;
    .locals 6

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/utils/LibWifiDisplayUtils;->mWifiDisplayStatusEx:Lcom/sec/samsung/gallery/lib/libinterface/WifiDisplayStatusInterface;

    invoke-interface {v3}, Lcom/sec/samsung/gallery/lib/libinterface/WifiDisplayStatusInterface;->getDisplays()[Lcom/sec/samsung/gallery/lib/libinterface/WifiDisplayInterface;

    move-result-object v2

    const-string/jumbo v3, "LibWifiDisplayUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "get wifi display device list : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v4, v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v2, v3

    invoke-interface {v1}, Lcom/sec/samsung/gallery/lib/libinterface/WifiDisplayInterface;->isAvailable()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v3, "LibWifiDisplayUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "get wifi display device available : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Lcom/sec/samsung/gallery/lib/libinterface/WifiDisplayInterface;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/sec/samsung/gallery/lib/libinterface/WifiDisplayInterface;

    return-object v3
.end method

.method public isP2pConnecting()Z
    .locals 7

    :try_start_0
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/utils/LibWifiDisplayUtils;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "connectivity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    sget v5, Lcom/sec/samsung/gallery/lib/factory/ConnectivityManagerFactory;->TYPE_WIFI_P2P:I

    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v4, v5, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    const/4 v3, 0x0

    goto :goto_0
.end method

.method public isP2pWorking()Z
    .locals 7

    const/4 v4, 0x0

    :try_start_0
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/utils/LibWifiDisplayUtils;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "connectivity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    sget v5, Lcom/sec/samsung/gallery/lib/factory/ConnectivityManagerFactory;->TYPE_WIFI_P2P:I

    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v3, v5, :cond_0

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v3, v5, :cond_1

    :cond_0
    const/4 v4, 0x1

    :cond_1
    :goto_0
    return v4

    :catch_0
    move-exception v1

    const-string/jumbo v5, "LibWifiDisplayUtils"

    const-string/jumbo v6, "isP2pWorking - NullPointerException"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isScanningWifiDisplay()Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/utils/LibWifiDisplayUtils;->getWifiDisplayStatus()Lcom/sec/samsung/gallery/lib/libinterface/WifiDisplayStatusInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/samsung/gallery/lib/libinterface/WifiDisplayStatusInterface;->isScanning()Z

    move-result v0

    return v0
.end method

.method public isWifiDisplayConnected()Z
    .locals 3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/utils/LibWifiDisplayUtils;->mDisplayManagerEx:Lcom/sec/samsung/gallery/lib/libinterface/DisplayManagerInterface;

    invoke-interface {v1}, Lcom/sec/samsung/gallery/lib/libinterface/DisplayManagerInterface;->getWifiDisplayStatus()Lcom/sec/samsung/gallery/lib/libinterface/WifiDisplayStatusInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/sec/samsung/gallery/lib/libinterface/WifiDisplayStatusInterface;->getActiveDisplayState()I

    move-result v1

    sget v2, Lcom/sec/samsung/gallery/lib/factory/WifiDisplayStatusWrapper;->DISPLAY_STATE_CONNECTED:I

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 3

    const-string/jumbo v1, "LibWifiDisplayUtils"

    const-string/jumbo v2, "pause"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/utils/LibWifiDisplayUtils;->mDisplayManagerEx:Lcom/sec/samsung/gallery/lib/libinterface/DisplayManagerInterface;

    sget-object v2, Lcom/sec/samsung/gallery/lib/libinterface/DisplayManagerInterface$wfdAppState;->PAUSE:Lcom/sec/samsung/gallery/lib/libinterface/DisplayManagerInterface$wfdAppState;

    invoke-interface {v1, v2}, Lcom/sec/samsung/gallery/lib/libinterface/DisplayManagerInterface;->setActivityState(Lcom/sec/samsung/gallery/lib/libinterface/DisplayManagerInterface$wfdAppState;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/utils/LibWifiDisplayUtils;->mDisplayManagerEx:Lcom/sec/samsung/gallery/lib/libinterface/DisplayManagerInterface;

    sget-object v2, Lcom/sec/samsung/gallery/lib/libinterface/DisplayManagerInterface$wfdAppState;->TEARDOWN:Lcom/sec/samsung/gallery/lib/libinterface/DisplayManagerInterface$wfdAppState;

    invoke-interface {v1, v2}, Lcom/sec/samsung/gallery/lib/libinterface/DisplayManagerInterface;->setActivityState(Lcom/sec/samsung/gallery/lib/libinterface/DisplayManagerInterface$wfdAppState;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "LibWifiDisplayUtils"

    invoke-virtual {v0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    const-string/jumbo v1, "LibWifiDisplayUtils"

    const-string/jumbo v2, "resume"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/utils/LibWifiDisplayUtils;->mDisplayManagerEx:Lcom/sec/samsung/gallery/lib/libinterface/DisplayManagerInterface;

    sget-object v2, Lcom/sec/samsung/gallery/lib/libinterface/DisplayManagerInterface$wfdAppState;->SETUP:Lcom/sec/samsung/gallery/lib/libinterface/DisplayManagerInterface$wfdAppState;

    invoke-interface {v1, v2}, Lcom/sec/samsung/gallery/lib/libinterface/DisplayManagerInterface;->setActivityState(Lcom/sec/samsung/gallery/lib/libinterface/DisplayManagerInterface$wfdAppState;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/utils/LibWifiDisplayUtils;->mDisplayManagerEx:Lcom/sec/samsung/gallery/lib/libinterface/DisplayManagerInterface;

    sget-object v2, Lcom/sec/samsung/gallery/lib/libinterface/DisplayManagerInterface$wfdAppState;->RESUME:Lcom/sec/samsung/gallery/lib/libinterface/DisplayManagerInterface$wfdAppState;

    invoke-interface {v1, v2}, Lcom/sec/samsung/gallery/lib/libinterface/DisplayManagerInterface;->setActivityState(Lcom/sec/samsung/gallery/lib/libinterface/DisplayManagerInterface$wfdAppState;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "LibWifiDisplayUtils"

    invoke-virtual {v0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public registerReceiver()V
    .locals 3

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/utils/LibWifiDisplayUtils;->mIsReceiverRegistered:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/utils/LibWifiDisplayUtils;->mIsReceiverRegistered:Z

    new-instance v0, Landroid/content/IntentFilter;

    sget-object v1, Lcom/sec/samsung/gallery/lib/factory/DisplayManagerFactory;->ACTION_WIFI_DISPLAY_STATUS_CHANGED:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/utils/LibWifiDisplayUtils;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/utils/LibWifiDisplayUtils;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method public scanWifiDisplays()V
    .locals 2

    const-string/jumbo v0, "LibWifiDisplayUtils"

    const-string/jumbo v1, "scan WiFi displays"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/utils/LibWifiDisplayUtils;->mDisplayManagerEx:Lcom/sec/samsung/gallery/lib/libinterface/DisplayManagerInterface;

    invoke-interface {v0}, Lcom/sec/samsung/gallery/lib/libinterface/DisplayManagerInterface;->scanWifiDisplays()V

    return-void
.end method

.method public stopScanWifiDisplays()V
    .locals 2

    const-string/jumbo v0, "LibWifiDisplayUtils"

    const-string/jumbo v1, "stop scan WiFi displays"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/utils/LibWifiDisplayUtils;->mDisplayManagerEx:Lcom/sec/samsung/gallery/lib/libinterface/DisplayManagerInterface;

    invoke-interface {v0}, Lcom/sec/samsung/gallery/lib/libinterface/DisplayManagerInterface;->stopScanWifiDisplays()V

    return-void
.end method

.method public unregisterReceiver()V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/utils/LibWifiDisplayUtils;->mIsReceiverRegistered:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/utils/LibWifiDisplayUtils;->mIsReceiverRegistered:Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/utils/LibWifiDisplayUtils;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/utils/LibWifiDisplayUtils;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/utils/LibWifiDisplayUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/utils/LibWifiDisplayUtils;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/utils/LibWifiDisplayUtils;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/utils/LibWifiDisplayUtils;->mSettingsObserver:Landroid/database/ContentObserver;

    :cond_0
    return-void
.end method
