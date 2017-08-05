.class Lcom/android/phone/mobilenetworks/controller/componentmanager/MobileNetworkComponentManager$1;
.super Landroid/content/BroadcastReceiver;
.source "MobileNetworkComponentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/mobilenetworks/controller/componentmanager/MobileNetworkComponentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/mobilenetworks/controller/componentmanager/MobileNetworkComponentManager;


# direct methods
.method constructor <init>(Lcom/android/phone/mobilenetworks/controller/componentmanager/MobileNetworkComponentManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/mobilenetworks/controller/componentmanager/MobileNetworkComponentManager$1;->this$0:Lcom/android/phone/mobilenetworks/controller/componentmanager/MobileNetworkComponentManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v3, "MobileNetworkCompMgr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onReceive: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/phone/mobilenetworks/controller/componentmanager/MobileNetworkComponentManager$1;->this$0:Lcom/android/phone/mobilenetworks/controller/componentmanager/MobileNetworkComponentManager;

    const/4 v4, 0x2

    invoke-static {v3, v4}, Lcom/android/phone/mobilenetworks/controller/componentmanager/MobileNetworkComponentManager;->-wrap0(Lcom/android/phone/mobilenetworks/controller/componentmanager/MobileNetworkComponentManager;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "ss"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "MobileNetworkCompMgr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "TelephonyIntents.ACTION_SIM_STATE_CHANGED : simState["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/phone/mobilenetworks/controller/componentmanager/MobileNetworkComponentManager$1;->this$0:Lcom/android/phone/mobilenetworks/controller/componentmanager/MobileNetworkComponentManager;

    const/4 v4, 0x4

    invoke-static {v3, v4}, Lcom/android/phone/mobilenetworks/controller/componentmanager/MobileNetworkComponentManager;->-wrap0(Lcom/android/phone/mobilenetworks/controller/componentmanager/MobileNetworkComponentManager;I)V

    goto :goto_0

    :cond_2
    const-string/jumbo v3, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/mobilenetworks/controller/componentmanager/MobileNetworkComponentManager$1;->this$0:Lcom/android/phone/mobilenetworks/controller/componentmanager/MobileNetworkComponentManager;

    const/16 v4, 0x10

    invoke-static {v3, v4}, Lcom/android/phone/mobilenetworks/controller/componentmanager/MobileNetworkComponentManager;->-wrap0(Lcom/android/phone/mobilenetworks/controller/componentmanager/MobileNetworkComponentManager;I)V

    goto :goto_0
.end method
