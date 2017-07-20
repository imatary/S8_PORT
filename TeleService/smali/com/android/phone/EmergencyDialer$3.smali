.class Lcom/android/phone/EmergencyDialer$3;
.super Landroid/content/BroadcastReceiver;
.source "EmergencyDialer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/EmergencyDialer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/EmergencyDialer;


# direct methods
.method constructor <init>(Lcom/android/phone/EmergencyDialer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/EmergencyDialer$3;->this$0:Lcom/android/phone/EmergencyDialer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$3;->this$0:Lcom/android/phone/EmergencyDialer;

    invoke-virtual {v0}, Lcom/android/phone/EmergencyDialer;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/emergencydialer/EmergencyDialerUtils;->isExtraOrigin(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$3;->this$0:Lcom/android/phone/EmergencyDialer;

    invoke-static {v0}, Lcom/android/phone/EmergencyDialer;->-get0(Lcom/android/phone/EmergencyDialer;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$3;->this$0:Lcom/android/phone/EmergencyDialer;

    invoke-virtual {v0}, Lcom/android/phone/EmergencyDialer;->finishAndRemoveTask()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "lost_phone_lock"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "com.android.phone.Emergencydialer.LOST_PHONE_UNLOCK"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "EmergencyDialer"

    const-string/jumbo v1, "ACTION_LOST_PHONE_UNLOCK - StatusBarManager.DISABLE_NONE"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$3;->this$0:Lcom/android/phone/EmergencyDialer;

    invoke-static {v0, v2}, Lcom/android/phone/EmergencyDialer;->-set0(Lcom/android/phone/EmergencyDialer;Z)Z

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$3;->this$0:Lcom/android/phone/EmergencyDialer;

    invoke-static {v0}, Lcom/android/phone/EmergencyDialer;->-get8(Lcom/android/phone/EmergencyDialer;)Landroid/app/StatusBarManager;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$3;->this$0:Lcom/android/phone/EmergencyDialer;

    invoke-static {v0}, Lcom/android/phone/EmergencyDialer;->-get8(Lcom/android/phone/EmergencyDialer;)Landroid/app/StatusBarManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/StatusBarManager;->disable(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$3;->this$0:Lcom/android/phone/EmergencyDialer;

    invoke-static {v0}, Lcom/android/phone/EmergencyDialer;->-get9(Lcom/android/phone/EmergencyDialer;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$3;->this$0:Lcom/android/phone/EmergencyDialer;

    invoke-static {v0}, Lcom/android/phone/EmergencyDialer;->-get9(Lcom/android/phone/EmergencyDialer;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$3;->this$0:Lcom/android/phone/EmergencyDialer;

    invoke-static {v0}, Lcom/android/phone/EmergencyDialer;->-get9(Lcom/android/phone/EmergencyDialer;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_3
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$3;->this$0:Lcom/android/phone/EmergencyDialer;

    invoke-virtual {v0}, Lcom/android/phone/EmergencyDialer;->finish()V

    goto :goto_0
.end method
