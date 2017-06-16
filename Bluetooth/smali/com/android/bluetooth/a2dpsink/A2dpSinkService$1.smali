.class Lcom/android/bluetooth/a2dpsink/A2dpSinkService$1;
.super Landroid/content/BroadcastReceiver;
.source "A2dpSinkService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/a2dpsink/A2dpSinkService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkService;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/a2dpsink/A2dpSinkService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkService$1;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "android.hardware.display.action.WIFI_DISPLAY_STATUS_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "android.hardware.display.extra.WIFI_DISPLAY_STATUS"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    move-result v2

    iget-object v3, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkService$1;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkService;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->-wrap1(Lcom/android/bluetooth/a2dpsink/A2dpSinkService;Ljava/lang/String;)V

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    iget-object v3, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkService$1;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkService;

    invoke-static {v3}, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->-get0(Lcom/android/bluetooth/a2dpsink/A2dpSinkService;)Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    move-result-object v3

    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->sendMessage(I)V

    :cond_0
    return-void
.end method
