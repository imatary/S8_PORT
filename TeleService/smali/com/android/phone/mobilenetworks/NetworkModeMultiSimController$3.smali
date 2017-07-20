.class Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController$3;
.super Landroid/content/BroadcastReceiver;
.source "NetworkModeMultiSimController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->setUp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;


# direct methods
.method constructor <init>(Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController$3;->this$0:Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.android.settings.subscription_deactivate"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController$3;->this$0:Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;

    invoke-static {v1}, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->-get0(Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "MobileNetworkSettings.ACTION_SETTINGS_SUBSCRIPTION_DEACTIVATE"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController$3;->this$0:Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;

    invoke-virtual {v1}, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->setNetworkTypeForMultisimAfterCtcSimOff()V

    :cond_0
    return-void
.end method
