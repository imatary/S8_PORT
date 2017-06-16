.class public Lsec/android/gallery3d/rcl/provider/selibrary/SemDesktopModeWrapper;
.super Ljava/lang/Object;
.source "SemDesktopModeWrapper.java"

# interfaces
.implements Lcom/sec/android/gallery3d/rcl/provider/libinterface/DesktopModeInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isDesktopMode(Landroid/content/Context;)Z
    .locals 2

    const-string v1, "desktopmode"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->isDesktopMode()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
