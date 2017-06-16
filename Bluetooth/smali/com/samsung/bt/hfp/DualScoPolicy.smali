.class public Lcom/samsung/bt/hfp/DualScoPolicy;
.super Ljava/lang/Object;
.source "DualScoPolicy.java"


# static fields
.field private static final HANDSFREE_HEADSET_PRIORITY:I = 0x2

.field private static final HANDSFREE_NO_PRIORITY:I = 0x0

.field private static final HANDSFREE_WATCH_PRIORITY:I = 0x1

.field private static final TAG:Ljava/lang/String; = "DualScoPolicy"


# instance fields
.field private mConnectionHelper:Lcom/samsung/bt/hfp/ConnectionPolicyHelper;


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/hfp/HeadsetService;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/bt/hfp/ConnectionPolicyHelper;

    invoke-direct {v0, p1}, Lcom/samsung/bt/hfp/ConnectionPolicyHelper;-><init>(Lcom/android/bluetooth/hfp/HeadsetService;)V

    iput-object v0, p0, Lcom/samsung/bt/hfp/DualScoPolicy;->mConnectionHelper:Lcom/samsung/bt/hfp/ConnectionPolicyHelper;

    return-void
.end method


# virtual methods
.method public getScoPriority(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/bt/hfp/DualScoPolicy;->mConnectionHelper:Lcom/samsung/bt/hfp/ConnectionPolicyHelper;

    invoke-virtual {v0, p1}, Lcom/samsung/bt/hfp/ConnectionPolicyHelper;->isWatch(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "DualScoPolicy"

    const-string/jumbo v1, "Watch"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_1
    const-string/jumbo v0, "DualScoPolicy"

    const-string/jumbo v1, "Normal Handsfree device"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    return v0
.end method

.method public isWatch(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/bt/hfp/DualScoPolicy;->mConnectionHelper:Lcom/samsung/bt/hfp/ConnectionPolicyHelper;

    invoke-virtual {v0, p1}, Lcom/samsung/bt/hfp/ConnectionPolicyHelper;->isWatch(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    return v0
.end method
