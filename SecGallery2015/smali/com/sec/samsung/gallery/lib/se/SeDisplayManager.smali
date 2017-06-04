.class public Lcom/sec/samsung/gallery/lib/se/SeDisplayManager;
.super Ljava/lang/Object;
.source "SeDisplayManager.java"

# interfaces
.implements Lcom/sec/samsung/gallery/lib/libinterface/DisplayManagerInterface;


# static fields
.field public static final ACTION_WIFI_DISPLAY_STATUS_CHANGED:Ljava/lang/String; = "android.hardware.display.action.WIFI_DISPLAY_STATUS_CHANGED"

.field public static final CONN_STATE_CHANGEPLAYER_GALLERY:I = 0x7


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDisplayManager:Landroid/hardware/display/DisplayManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/samsung/gallery/lib/se/SeDisplayManager;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/sec/samsung/gallery/lib/se/SeDisplayManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/sec/samsung/gallery/lib/se/SeDisplayManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    return-void
.end method

.method private getWfdAppState(Lcom/sec/samsung/gallery/lib/libinterface/DisplayManagerInterface$wfdAppState;)Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/lib/libinterface/DisplayManagerInterface$wfdAppState;->PAUSE:Lcom/sec/samsung/gallery/lib/libinterface/DisplayManagerInterface$wfdAppState;

    if-ne p1, v0, :cond_0

    sget-object v0, Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;->PAUSE:Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/sec/samsung/gallery/lib/libinterface/DisplayManagerInterface$wfdAppState;->RESUME:Lcom/sec/samsung/gallery/lib/libinterface/DisplayManagerInterface$wfdAppState;

    if-ne p1, v0, :cond_1

    sget-object v0, Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;->RESUME:Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/sec/samsung/gallery/lib/libinterface/DisplayManagerInterface$wfdAppState;->SETUP:Lcom/sec/samsung/gallery/lib/libinterface/DisplayManagerInterface$wfdAppState;

    if-ne p1, v0, :cond_2

    sget-object v0, Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;->SETUP:Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/sec/samsung/gallery/lib/libinterface/DisplayManagerInterface$wfdAppState;->TEARDOWN:Lcom/sec/samsung/gallery/lib/libinterface/DisplayManagerInterface$wfdAppState;

    if-ne p1, v0, :cond_3

    sget-object v0, Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;->TEARDOWN:Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public checkExceptionalCase()I
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/lib/se/SeDisplayManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->semCheckExceptionalCase()I

    move-result v0

    return v0
.end method

.method public connectWifiDisplayWithMode(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/lib/se/SeDisplayManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/display/DisplayManager;->semConnectWifiDisplay(ILjava/lang/String;)V

    return-void
.end method

.method public disconnectWifiDisplay()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/lib/se/SeDisplayManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->semDisableWifiDisplay()V

    return-void
.end method

.method public getWifiDisplayStatus()Lcom/sec/samsung/gallery/lib/libinterface/WifiDisplayStatusInterface;
    .locals 2

    new-instance v0, Lcom/sec/samsung/gallery/lib/se/SeWifiDisplayStatus;

    iget-object v1, p0, Lcom/sec/samsung/gallery/lib/se/SeDisplayManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/lib/se/SeWifiDisplayStatus;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getWifiDisplayStatus(Landroid/content/Intent;)Lcom/sec/samsung/gallery/lib/libinterface/WifiDisplayStatusInterface;
    .locals 1

    new-instance v0, Lcom/sec/samsung/gallery/lib/se/SeWifiDisplayStatus;

    invoke-direct {v0, p1}, Lcom/sec/samsung/gallery/lib/se/SeWifiDisplayStatus;-><init>(Landroid/content/Intent;)V

    return-object v0
.end method

.method public scanWifiDisplays()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/lib/se/SeDisplayManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->semStartScanWifiDisplays()V

    return-void
.end method

.method public setActivityState(Lcom/sec/samsung/gallery/lib/libinterface/DisplayManagerInterface$wfdAppState;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/lib/se/SeDisplayManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/lib/se/SeDisplayManager;->getWfdAppState(Lcom/sec/samsung/gallery/lib/libinterface/DisplayManagerInterface$wfdAppState;)Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->semSetActivityState(Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;)V

    return-void
.end method

.method public stopScanWifiDisplays()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/lib/se/SeDisplayManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->semStopScanWifiDisplays()V

    return-void
.end method
