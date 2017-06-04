.class public Lcom/sec/samsung/gallery/view/utils/WifiDisplayUtils;
.super Lcom/sec/samsung/gallery/view/utils/LibWifiDisplayUtils;
.source "WifiDisplayUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WifiDisplayUtils"


# instance fields
.field private mOnDeviceChangedListenerRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sec/android/gallery3d/remote/nearby/OnDeviceChangedListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/utils/LibWifiDisplayUtils;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/utils/WifiDisplayUtils;->mOnDeviceChangedListenerRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method protected applyState()V
    .locals 2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/utils/WifiDisplayUtils;->mOnDeviceChangedListenerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/remote/nearby/OnDeviceChangedListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/sec/android/gallery3d/remote/nearby/OnDeviceChangedListener;->onDeviceChanged()V

    :cond_0
    return-void
.end method
