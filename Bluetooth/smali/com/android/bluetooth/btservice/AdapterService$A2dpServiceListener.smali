.class final Lcom/android/bluetooth/btservice/AdapterService$A2dpServiceListener;
.super Ljava/lang/Object;
.source "AdapterService.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/btservice/AdapterService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "A2dpServiceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/btservice/AdapterService;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/btservice/AdapterService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/btservice/AdapterService$A2dpServiceListener;->this$0:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 2

    const-string/jumbo v0, "BluetoothAdapterService"

    const-string/jumbo v1, "Bluetooth A2dp source service connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService$A2dpServiceListener;->this$0:Lcom/android/bluetooth/btservice/AdapterService;

    check-cast p2, Landroid/bluetooth/BluetoothA2dp;

    invoke-static {v0, p2}, Lcom/android/bluetooth/btservice/AdapterService;->-set1(Lcom/android/bluetooth/btservice/AdapterService;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;

    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 2

    const-string/jumbo v0, "BluetoothAdapterService"

    const-string/jumbo v1, "Bluetooth A2dp source service disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService$A2dpServiceListener;->this$0:Lcom/android/bluetooth/btservice/AdapterService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->-set1(Lcom/android/bluetooth/btservice/AdapterService;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;

    return-void
.end method
