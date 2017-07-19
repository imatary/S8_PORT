.class Lcom/android/keyguard/sec/SecKeyguardClockDualView$4;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/SecKeyguardClockDualView;->setClockContentDesciptionPlusBattery(Landroid/view/View;Lcom/android/keyguard/sec/SecKeyguardTextClock;Lcom/android/keyguard/sec/SecKeyguardTextClock;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/SecKeyguardClockDualView;

.field final synthetic val$ampm:Lcom/android/keyguard/sec/SecKeyguardTextClock;

.field final synthetic val$isKorean:Z

.field final synthetic val$time:Lcom/android/keyguard/sec/SecKeyguardTextClock;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/SecKeyguardClockDualView;Lcom/android/keyguard/sec/SecKeyguardTextClock;Lcom/android/keyguard/sec/SecKeyguardTextClock;ZLandroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView$4;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockDualView;

    iput-object p2, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView$4;->val$time:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iput-object p3, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView$4;->val$ampm:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iput-boolean p4, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView$4;->val$isKorean:Z

    iput-object p5, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView$4;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView$4;->val$time:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView$4;->val$ampm:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView$4;->val$view:Landroid/view/View;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView$4;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockDualView;

    invoke-static {v2}, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->access$700(Lcom/android/keyguard/sec/SecKeyguardClockDualView;)Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$string;->keyguard_clock_with_battery:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget v6, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mBatteryLevel:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView$4;->val$ampm:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v1}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->is24HourModeEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView$4;->val$isKorean:Z

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView$4;->val$ampm:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v1}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView$4;->val$ampm:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v2}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method
