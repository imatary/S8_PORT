.class final Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkLruImageCache$OnDatabaseValidityReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SlinkLruImageCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkLruImageCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OnDatabaseValidityReceiver"
.end annotation


# instance fields
.field private final mRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkLruImageCache;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkLruImageCache;)V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkLruImageCache$OnDatabaseValidityReceiver;->mRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkLruImageCache$OnDatabaseValidityReceiver;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkLruImageCache;

    if-eqz v0, :cond_0

    # getter for: Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkLruImageCache;->mCache:Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkLruImageCache$MyLruCache;
    invoke-static {v0}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkLruImageCache;->access$0(Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkLruImageCache;)Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkLruImageCache$MyLruCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkLruImageCache$MyLruCache;->evictAll()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method
