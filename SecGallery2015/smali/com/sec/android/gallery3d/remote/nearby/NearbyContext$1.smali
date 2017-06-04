.class Lcom/sec/android/gallery3d/remote/nearby/NearbyContext$1;
.super Landroid/os/CountDownTimer;
.source "NearbyContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/remote/nearby/NearbyContext;->showToastForScanningPlayerDevices()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/remote/nearby/NearbyContext;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/remote/nearby/NearbyContext;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyContext$1;->this$0:Lcom/sec/android/gallery3d/remote/nearby/NearbyContext;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyContext$1;->this$0:Lcom/sec/android/gallery3d/remote/nearby/NearbyContext;

    # getter for: Lcom/sec/android/gallery3d/remote/nearby/NearbyContext;->mClient:Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;
    invoke-static {v2}, Lcom/sec/android/gallery3d/remote/nearby/NearbyContext;->access$000(Lcom/sec/android/gallery3d/remote/nearby/NearbyContext;)Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->getDisplayDeviceListCount()I

    move-result v0

    if-nez v0, :cond_1

    const v1, 0x7f0a02d9

    :goto_0
    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyContext$1;->this$0:Lcom/sec/android/gallery3d/remote/nearby/NearbyContext;

    # getter for: Lcom/sec/android/gallery3d/remote/nearby/NearbyContext;->mIsActive:Z
    invoke-static {v2}, Lcom/sec/android/gallery3d/remote/nearby/NearbyContext;->access$100(Lcom/sec/android/gallery3d/remote/nearby/NearbyContext;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyContext$1;->this$0:Lcom/sec/android/gallery3d/remote/nearby/NearbyContext;

    # getter for: Lcom/sec/android/gallery3d/remote/nearby/NearbyContext;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/android/gallery3d/remote/nearby/NearbyContext;->access$200(Lcom/sec/android/gallery3d/remote/nearby/NearbyContext;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    :cond_0
    return-void

    :cond_1
    const v1, 0x7f0a0044

    goto :goto_0
.end method

.method public onTick(J)V
    .locals 0

    return-void
.end method
