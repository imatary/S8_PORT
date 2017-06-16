.class Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;
.super Ljava/lang/Object;
.source "SdpManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/sdp/SdpManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SdpSearchInstance"
.end annotation


# instance fields
.field private final mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mSearching:Z

.field private mStatus:I

.field private final mUuid:Landroid/os/ParcelUuid;

.field final synthetic this$0:Lcom/android/bluetooth/sdp/SdpManager;


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/sdp/SdpManager;ILandroid/bluetooth/BluetoothDevice;Landroid/os/ParcelUuid;)V
    .locals 1

    iput-object p1, p0, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;->this$0:Lcom/android/bluetooth/sdp/SdpManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;->mStatus:I

    iput-object p3, p0, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iput-object p4, p0, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;->mUuid:Landroid/os/ParcelUuid;

    iput p2, p0, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;->mStatus:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;->mSearching:Z

    return-void
.end method


# virtual methods
.method public getDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;->mStatus:I

    return v0
.end method

.method public getUuid()Landroid/os/ParcelUuid;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;->mUuid:Landroid/os/ParcelUuid;

    return-object v0
.end method

.method public isSearching()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;->mSearching:Z

    return v0
.end method

.method public setStatus(I)V
    .locals 0

    iput p1, p0, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;->mStatus:I

    return-void
.end method

.method public startSearch()V
    .locals 4

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;->mSearching:Z

    iget-object v1, p0, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;->this$0:Lcom/android/bluetooth/sdp/SdpManager;

    invoke-static {v1}, Lcom/android/bluetooth/sdp/SdpManager;->-get0(Lcom/android/bluetooth/sdp/SdpManager;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;->this$0:Lcom/android/bluetooth/sdp/SdpManager;

    invoke-static {v1}, Lcom/android/bluetooth/sdp/SdpManager;->-get0(Lcom/android/bluetooth/sdp/SdpManager;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x1770

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public stopSearch()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;->mSearching:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;->this$0:Lcom/android/bluetooth/sdp/SdpManager;

    invoke-static {v0}, Lcom/android/bluetooth/sdp/SdpManager;->-get0(Lcom/android/bluetooth/sdp/SdpManager;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;->mSearching:Z

    return-void
.end method
