.class public Lcom/sec/samsung/gallery/lib/se/SeWifiDisplayStatus;
.super Ljava/lang/Object;
.source "SeWifiDisplayStatus.java"

# interfaces
.implements Lcom/sec/samsung/gallery/lib/libinterface/WifiDisplayStatusInterface;


# static fields
.field public static final DISPLAY_STATE_CONNECTED:I = 0x2


# instance fields
.field private final mWifiDisplayState:Landroid/hardware/display/SemWifiDisplayStatus;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v1, "display"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayStatus()Landroid/hardware/display/SemWifiDisplayStatus;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/lib/se/SeWifiDisplayStatus;->mWifiDisplayState:Landroid/hardware/display/SemWifiDisplayStatus;

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/hardware/display/SemWifiDisplayStatus;

    const-string/jumbo v1, "android.hardware.display.extra.WIFI_DISPLAY_STATUS"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/hardware/display/SemWifiDisplayStatus;-><init>(Landroid/os/Parcelable;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/lib/se/SeWifiDisplayStatus;->mWifiDisplayState:Landroid/hardware/display/SemWifiDisplayStatus;

    return-void
.end method


# virtual methods
.method public getActiveDisplay()Lcom/sec/samsung/gallery/lib/libinterface/WifiDisplayInterface;
    .locals 2

    iget-object v1, p0, Lcom/sec/samsung/gallery/lib/se/SeWifiDisplayStatus;->mWifiDisplayState:Landroid/hardware/display/SemWifiDisplayStatus;

    invoke-virtual {v1}, Landroid/hardware/display/SemWifiDisplayStatus;->getActiveDisplay()Landroid/hardware/display/SemWifiDisplay;

    move-result-object v0

    new-instance v1, Lcom/sec/samsung/gallery/lib/se/SeWifiDisplay;

    invoke-direct {v1, v0}, Lcom/sec/samsung/gallery/lib/se/SeWifiDisplay;-><init>(Landroid/hardware/display/SemWifiDisplay;)V

    return-object v1
.end method

.method public getActiveDisplayState()I
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/lib/se/SeWifiDisplayStatus;->mWifiDisplayState:Landroid/hardware/display/SemWifiDisplayStatus;

    invoke-virtual {v0}, Landroid/hardware/display/SemWifiDisplayStatus;->getActiveDisplayState()I

    move-result v0

    return v0
.end method

.method public getDisplays()[Lcom/sec/samsung/gallery/lib/libinterface/WifiDisplayInterface;
    .locals 8

    iget-object v5, p0, Lcom/sec/samsung/gallery/lib/se/SeWifiDisplayStatus;->mWifiDisplayState:Landroid/hardware/display/SemWifiDisplayStatus;

    invoke-virtual {v5}, Landroid/hardware/display/SemWifiDisplayStatus;->getDisplays()[Landroid/hardware/display/SemWifiDisplay;

    move-result-object v2

    array-length v5, v2

    new-array v1, v5, [Lcom/sec/samsung/gallery/lib/libinterface/WifiDisplayInterface;

    const/4 v3, 0x0

    array-length v6, v2

    const/4 v5, 0x0

    move v4, v3

    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v0, v2, v5

    add-int/lit8 v3, v4, 0x1

    new-instance v7, Lcom/sec/samsung/gallery/lib/se/SeWifiDisplay;

    invoke-direct {v7, v0}, Lcom/sec/samsung/gallery/lib/se/SeWifiDisplay;-><init>(Landroid/hardware/display/SemWifiDisplay;)V

    aput-object v7, v1, v4

    add-int/lit8 v5, v5, 0x1

    move v4, v3

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public isScanning()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/lib/se/SeWifiDisplayStatus;->mWifiDisplayState:Landroid/hardware/display/SemWifiDisplayStatus;

    invoke-virtual {v0}, Landroid/hardware/display/SemWifiDisplayStatus;->isScanning()Z

    move-result v0

    return v0
.end method
