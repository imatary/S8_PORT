.class Lcom/android/keyguard/KeyguardRMMView$6;
.super Landroid/os/CountDownTimer;
.source "KeyguardRMMView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardRMMView;->handleAttemptLockout(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardRMMView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardRMMView;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardRMMView$6;->this$0:Lcom/android/keyguard/KeyguardRMMView;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/KeyguardRMMView$6;->this$0:Lcom/android/keyguard/KeyguardRMMView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardRMMView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const-string/jumbo v1, ""

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardRMMView$6;->this$0:Lcom/android/keyguard/KeyguardRMMView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardRMMView;->resetState()V

    return-void
.end method

.method public onTick(J)V
    .locals 11

    const/4 v9, 0x0

    const/4 v8, 0x1

    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    long-to-int v1, v2

    div-int/lit8 v0, v1, 0x3c

    const/16 v2, 0x3c

    if-le v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardRMMView$6;->this$0:Lcom/android/keyguard/KeyguardRMMView;

    iget-object v2, v2, Lcom/android/keyguard/KeyguardRMMView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardRMMView$6;->this$0:Lcom/android/keyguard/KeyguardRMMView;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardRMMView;->-get0(Lcom/android/keyguard/KeyguardRMMView;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/keyguard/R$plurals;->kg_too_many_failed_attempts_countdown_min:I

    add-int/lit8 v5, v0, 0x1

    new-array v6, v8, [Ljava/lang/Object;

    add-int/lit8 v7, v0, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v8}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardRMMView$6;->this$0:Lcom/android/keyguard/KeyguardRMMView;

    iget-object v2, v2, Lcom/android/keyguard/KeyguardRMMView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardRMMView$6;->this$0:Lcom/android/keyguard/KeyguardRMMView;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardRMMView;->-get0(Lcom/android/keyguard/KeyguardRMMView;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/keyguard/R$plurals;->kg_too_many_failed_attempts_countdown_sec:I

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-virtual {v3, v4, v1, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v8}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    goto :goto_0
.end method
