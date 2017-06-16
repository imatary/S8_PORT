.class public Lsec/android/gallery3d/rcl/provider/selibrary/SemDrmManagerClientWrapper;
.super Ljava/lang/Object;
.source "SemDrmManagerClientWrapper.java"

# interfaces
.implements Lcom/sec/android/gallery3d/rcl/provider/libinterface/DrmManagerClientInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public releaseDrm(Landroid/drm/DrmManagerClient;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/drm/DrmManagerClient;->close()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/drm/DrmManagerClient;->release()V

    goto :goto_0
.end method
