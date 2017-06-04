.class public Lcom/sec/samsung/gallery/lib/se/SeWifiDisplay;
.super Ljava/lang/Object;
.source "SeWifiDisplay.java"

# interfaces
.implements Lcom/sec/samsung/gallery/lib/libinterface/WifiDisplayInterface;


# instance fields
.field private final mWifiDisplay:Landroid/hardware/display/SemWifiDisplay;


# direct methods
.method public constructor <init>(Landroid/hardware/display/SemWifiDisplay;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/samsung/gallery/lib/se/SeWifiDisplay;->mWifiDisplay:Landroid/hardware/display/SemWifiDisplay;

    return-void
.end method


# virtual methods
.method public getDeviceAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/lib/se/SeWifiDisplay;->mWifiDisplay:Landroid/hardware/display/SemWifiDisplay;

    invoke-virtual {v0}, Landroid/hardware/display/SemWifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/lib/se/SeWifiDisplay;->mWifiDisplay:Landroid/hardware/display/SemWifiDisplay;

    invoke-virtual {v0}, Landroid/hardware/display/SemWifiDisplay;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrimaryDeviceType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/lib/se/SeWifiDisplay;->mWifiDisplay:Landroid/hardware/display/SemWifiDisplay;

    invoke-virtual {v0}, Landroid/hardware/display/SemWifiDisplay;->getPrimaryDeviceType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/lib/se/SeWifiDisplay;->mWifiDisplay:Landroid/hardware/display/SemWifiDisplay;

    invoke-virtual {v0}, Landroid/hardware/display/SemWifiDisplay;->isAvailable()Z

    move-result v0

    return v0
.end method
