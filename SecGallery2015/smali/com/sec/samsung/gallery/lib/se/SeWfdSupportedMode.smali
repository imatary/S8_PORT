.class public Lcom/sec/samsung/gallery/lib/se/SeWfdSupportedMode;
.super Ljava/lang/Object;
.source "SeWfdSupportedMode.java"

# interfaces
.implements Lcom/sec/samsung/gallery/lib/libinterface/WfdSupportedModeInterface;


# instance fields
.field private final mDisplayManager:Landroid/hardware/display/DisplayManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "display"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/sec/samsung/gallery/lib/se/SeWfdSupportedMode;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    return-void
.end method


# virtual methods
.method public checkScreenSharingSupported()Z
    .locals 2

    iget-object v1, p0, Lcom/sec/samsung/gallery/lib/se/SeWfdSupportedMode;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1}, Landroid/hardware/display/DisplayManager;->semCheckScreenSharingSupported()I

    move-result v0

    sget v1, Lcom/sec/samsung/gallery/lib/factory/ScreenSharingConstantsWrapper;->SUPPORT_ALL:I

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getWfdSupported()Z
    .locals 2

    iget-object v1, p0, Lcom/sec/samsung/gallery/lib/se/SeWfdSupportedMode;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1}, Landroid/hardware/display/DisplayManager;->semCheckScreenSharingSupported()I

    move-result v0

    sget v1, Lcom/sec/samsung/gallery/lib/factory/ScreenSharingConstantsWrapper;->SUPPORT_ALL:I

    if-eq v0, v1, :cond_0

    sget v1, Lcom/sec/samsung/gallery/lib/factory/ScreenSharingConstantsWrapper;->SUPPORT_MIRRORING:I

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
