.class final Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RQuota$1;
.super Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RQuota$QuotaObserver;
.source "RQuota.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RQuota;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 5

    invoke-super {p0, p1, p2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RQuota$QuotaObserver;->onChange(ZLandroid/net/Uri;)V

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RQuota$1;->mCr:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RQuota$1;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RQuota$OnQuotaChangeListener;

    if-eqz v1, :cond_0

    if-nez v2, :cond_1

    :cond_0
    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RQuota;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RQuota;->access$100()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "[Setting] no context to notify setting change"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RQuota;->get()Landroid/os/Bundle;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RQuota$OnQuotaChangeListener;->onChange(Landroid/os/Bundle;)Z

    goto :goto_0
.end method
