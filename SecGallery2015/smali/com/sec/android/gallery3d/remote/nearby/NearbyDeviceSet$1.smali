.class Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceSet$1;
.super Landroid/os/CountDownTimer;
.source "NearbyDeviceSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceSet;->showToastForScanningProviderDevices(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceSet;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceSet;JJLandroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceSet$1;->this$0:Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceSet;

    iput-object p6, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceSet$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceSet$1;->this$0:Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceSet;

    invoke-static {v1}, Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceSet;->access$000(Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceSet;)Lcom/sec/android/gallery3d/remote/nearby/NearbyContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/remote/nearby/NearbyContext;->getProviderDeviceCount()I

    move-result v1

    if-nez v1, :cond_0

    const v0, 0x7f0a02d9

    :goto_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceSet$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    return-void

    :cond_0
    const v0, 0x7f0a0044

    goto :goto_0
.end method

.method public onTick(J)V
    .locals 0

    return-void
.end method
