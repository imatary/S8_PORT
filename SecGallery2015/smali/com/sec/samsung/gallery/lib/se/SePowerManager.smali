.class public Lcom/sec/samsung/gallery/lib/se/SePowerManager;
.super Ljava/lang/Object;
.source "SePowerManager.java"

# interfaces
.implements Lcom/sec/samsung/gallery/lib/libinterface/PowerManagerInterface;


# instance fields
.field private final mPowerManager:Landroid/os/PowerManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/sec/samsung/gallery/lib/se/SePowerManager;->mPowerManager:Landroid/os/PowerManager;

    return-void
.end method


# virtual methods
.method public setAutoBrightnessLimit(II)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/lib/se/SePowerManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0, p1, p2}, Landroid/os/PowerManager;->semSetAutoBrightnessLimit(II)V

    return-void
.end method
