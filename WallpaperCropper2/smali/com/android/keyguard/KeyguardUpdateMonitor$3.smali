.class Lcom/android/keyguard/KeyguardUpdateMonitor$3;
.super Landroid/content/BroadcastReceiver;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const/16 v6, 0x12f

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "KeyguardUpdateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "received broadcast "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "PERF"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "received broadcast "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$1800(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x12d

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string/jumbo v1, "android.intent.action.TIME_SET"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string/jumbo v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string/jumbo v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string/jumbo v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string/jumbo v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string/jumbo v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string/jumbo v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string/jumbo v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    const-string/jumbo v1, "com.samsung.android.intent.action.FINGERPRINT_ADDED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    const-string/jumbo v1, "com.samsung.android.intent.action.FINGERPRINT_LOCK_SET"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    const-string/jumbo v1, "com.samsung.android.theme.themecenter.THEME_APPLY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    const-string/jumbo v1, "com.samsung.intent.action.ICC_CARD_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "status"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$1800(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$1800(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x14b

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_3
    const-string/jumbo v0, "subscription"

    invoke-virtual {p2, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getPhoneId(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$1900(Lcom/android/keyguard/KeyguardUpdateMonitor;)[Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v2, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$2000(Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/content/Intent;)Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v1, v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$2100(Lcom/android/keyguard/KeyguardUpdateMonitor;)[Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v2, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$2200(Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/content/Intent;)Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v1, v0

    const-string/jumbo v1, "KeyguardUpdateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Received SPN update on phoneId :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " , mTelephonyPlmn["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$1900(Lcom/android/keyguard/KeyguardUpdateMonitor;)[Ljava/lang/CharSequence;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " , mTelephonySpn["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$2100(Lcom/android/keyguard/KeyguardUpdateMonitor;)[Ljava/lang/CharSequence;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$1800(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iput v0, v1, Landroid/os/Message;->arg1:I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$1800(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_4
    const-string/jumbo v0, "status"

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v1, "plugged"

    invoke-virtual {p2, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v2, "level"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string/jumbo v3, "health"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iget-object v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$1800(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0x12e

    new-instance v6, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    invoke-direct {v6, v0, v2, v1, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;-><init>(IIII)V

    invoke-virtual {v4, v5, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$1800(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_5
    invoke-static {p2}, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->fromIntent(Landroid/content/Intent;)Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$1800(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x130

    iget v3, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->subId:I

    iget v4, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->slotId:I

    iget-object v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->simState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$1800(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$1800(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x131

    const-string/jumbo v3, "android.media.EXTRA_RINGER_MODE"

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v1, v2, v3, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v0, "state"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$1800(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$1800(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x132

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$1800(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$1800(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x137

    const-string/jumbo v3, "android.intent.extra.user_handle"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v1, v2, v3, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_9
    invoke-static {v5}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchBootCompleted()V

    goto/16 :goto_0

    :cond_a
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "ril.MSIMM"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$1900(Lcom/android/keyguard/KeyguardUpdateMonitor;)[Ljava/lang/CharSequence;

    move-result-object v0

    aget-object v0, v0, v4

    if-nez v0, :cond_c

    :cond_b
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getDefaultPlmn()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$2302(Lcom/android/keyguard/KeyguardUpdateMonitor;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    goto/16 :goto_0

    :cond_c
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$1900(Lcom/android/keyguard/KeyguardUpdateMonitor;)[Ljava/lang/CharSequence;

    move-result-object v0

    aget-object v0, v0, v4

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$2300(Lcom/android/keyguard/KeyguardUpdateMonitor;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$1900(Lcom/android/keyguard/KeyguardUpdateMonitor;)[Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getDefaultPlmn()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$2302(Lcom/android/keyguard/KeyguardUpdateMonitor;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    aput-object v1, v0, v4

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$1800(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput v4, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$1800(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_d
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$2400(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "airplane_mode_on"

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v1, "KeyguardUpdateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Received  ACTION_AIRPLANE_MODE_CHANGED = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$1800(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x141

    invoke-virtual {v1, v2, v0, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$1800(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_e
    const-string/jumbo v0, "KeyguardSPassPopupGuideInt"

    const/4 v1, 0x3

    invoke-static {p1, v0, v1}, Lcom/android/keyguard/sec/SecPopupManager;->setRemainCount(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_f
    const-string/jumbo v0, "KeyguardSPassPopupGuideInt"

    invoke-static {p1, v0}, Lcom/android/keyguard/sec/SecPopupManager;->getRemainCount(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_1

    const-string/jumbo v0, "KeyguardSPassPopupGuideInt"

    invoke-static {p1, v0, v4}, Lcom/android/keyguard/sec/SecPopupManager;->setRemainCount(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_10
    const-string/jumbo v0, "packageName"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$1800(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$1800(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x14a

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method
