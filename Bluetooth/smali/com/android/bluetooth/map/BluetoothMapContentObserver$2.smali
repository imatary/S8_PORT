.class Lcom/android/bluetooth/map/BluetoothMapContentObserver$2;
.super Landroid/telephony/PhoneStateListener;
.source "BluetoothMapContentObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/map/BluetoothMapContentObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$2;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 1

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$2;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-static {v0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->-wrap6(Lcom/android/bluetooth/map/BluetoothMapContentObserver;)V

    :cond_0
    return-void
.end method
