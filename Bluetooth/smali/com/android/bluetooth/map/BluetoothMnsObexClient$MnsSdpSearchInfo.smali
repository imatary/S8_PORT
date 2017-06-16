.class Lcom/android/bluetooth/map/BluetoothMnsObexClient$MnsSdpSearchInfo;
.super Ljava/lang/Object;
.source "BluetoothMnsObexClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/map/BluetoothMnsObexClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MnsSdpSearchInfo"
.end annotation


# instance fields
.field private isSearchInProgress:Z

.field lastMasId:I

.field lastNotificationStatus:I

.field final synthetic this$0:Lcom/android/bluetooth/map/BluetoothMnsObexClient;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/map/BluetoothMnsObexClient;ZII)V
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient$MnsSdpSearchInfo;->this$0:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient$MnsSdpSearchInfo;->isSearchInProgress:Z

    iput p3, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient$MnsSdpSearchInfo;->lastMasId:I

    iput p4, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient$MnsSdpSearchInfo;->lastNotificationStatus:I

    return-void
.end method


# virtual methods
.method public isSearchInProgress()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient$MnsSdpSearchInfo;->isSearchInProgress:Z

    return v0
.end method

.method public setIsSearchInProgress(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient$MnsSdpSearchInfo;->isSearchInProgress:Z

    return-void
.end method
