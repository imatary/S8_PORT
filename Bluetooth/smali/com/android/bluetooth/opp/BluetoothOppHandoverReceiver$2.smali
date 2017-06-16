.class Lcom/android/bluetooth/opp/BluetoothOppHandoverReceiver$2;
.super Ljava/lang/Object;
.source "BluetoothOppHandoverReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/bluetooth/opp/BluetoothOppHandoverReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/opp/BluetoothOppHandoverReceiver;

.field final synthetic val$Scontext:Landroid/content/Context;

.field final synthetic val$Stream:Landroid/net/Uri;

.field final synthetic val$device:Landroid/bluetooth/BluetoothDevice;

.field final synthetic val$type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/opp/BluetoothOppHandoverReceiver;Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppHandoverReceiver$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppHandoverReceiver;

    iput-object p2, p0, Lcom/android/bluetooth/opp/BluetoothOppHandoverReceiver$2;->val$Scontext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/bluetooth/opp/BluetoothOppHandoverReceiver$2;->val$type:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/bluetooth/opp/BluetoothOppHandoverReceiver$2;->val$Stream:Landroid/net/Uri;

    iput-object p5, p0, Lcom/android/bluetooth/opp/BluetoothOppHandoverReceiver$2;->val$device:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppHandoverReceiver$2;->val$Scontext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppManager;->getInstance(Landroid/content/Context;)Lcom/android/bluetooth/opp/BluetoothOppManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppHandoverReceiver$2;->val$type:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppHandoverReceiver$2;->val$Stream:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/bluetooth/opp/BluetoothOppManager;->saveSendingFileInfo(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppHandoverReceiver$2;->val$Scontext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppManager;->getInstance(Landroid/content/Context;)Lcom/android/bluetooth/opp/BluetoothOppManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppHandoverReceiver$2;->val$device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/opp/BluetoothOppManager;->startTransfer(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method
