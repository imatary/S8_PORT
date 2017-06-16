.class Lcom/android/bluetooth/opp/BluetoothAdvancedOppService$5;
.super Ljava/lang/Object;
.source "BluetoothAdvancedOppService.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->cancelP2pConnectRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService$5;->this$0:Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 2

    const-string/jumbo v0, "BluetoothAdvancedOppService"

    const-string/jumbo v1, "[ADVANCED OPP] cancelConnect onFailure"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSuccess()V
    .locals 2

    const-string/jumbo v0, "BluetoothAdvancedOppService"

    const-string/jumbo v1, "[ADVANCED OPP] cancelConnect onSuccess "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
