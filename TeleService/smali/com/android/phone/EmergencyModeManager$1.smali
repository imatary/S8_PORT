.class Lcom/android/phone/EmergencyModeManager$1;
.super Landroid/content/BroadcastReceiver;
.source "EmergencyModeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/EmergencyModeManager;->onChange(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/EmergencyModeManager;


# direct methods
.method constructor <init>(Lcom/android/phone/EmergencyModeManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/EmergencyModeManager$1;->this$0:Lcom/android/phone/EmergencyModeManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.samsung.intent.action.SIMHOTSWAP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/EmergencyModeManager$1;->this$0:Lcom/android/phone/EmergencyModeManager;

    invoke-static {v0}, Lcom/android/phone/EmergencyModeManager;->-wrap3(Lcom/android/phone/EmergencyModeManager;)V

    :cond_0
    iget-object v0, p0, Lcom/android/phone/EmergencyModeManager$1;->this$0:Lcom/android/phone/EmergencyModeManager;

    invoke-static {v0}, Lcom/android/phone/EmergencyModeManager;->-get0(Lcom/android/phone/EmergencyModeManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isAbsentSimState(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/EmergencyModeManager$1;->this$0:Lcom/android/phone/EmergencyModeManager;

    invoke-static {v0}, Lcom/android/phone/EmergencyModeManager;->-wrap1(Lcom/android/phone/EmergencyModeManager;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/phone/EmergencyModeManager$1;->this$0:Lcom/android/phone/EmergencyModeManager;

    invoke-static {v0}, Lcom/android/phone/EmergencyModeManager;->-wrap2(Lcom/android/phone/EmergencyModeManager;)V

    goto :goto_0
.end method
