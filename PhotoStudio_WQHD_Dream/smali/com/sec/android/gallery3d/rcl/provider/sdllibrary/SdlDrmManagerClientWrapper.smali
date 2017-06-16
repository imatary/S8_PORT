.class public Lcom/sec/android/gallery3d/rcl/provider/sdllibrary/SdlDrmManagerClientWrapper;
.super Ljava/lang/Object;
.source "SdlDrmManagerClientWrapper.java"

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
    .locals 0

    invoke-virtual {p1}, Landroid/drm/DrmManagerClient;->release()V

    return-void
.end method
