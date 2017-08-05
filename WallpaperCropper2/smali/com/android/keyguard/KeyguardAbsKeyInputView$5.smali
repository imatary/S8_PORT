.class Lcom/android/keyguard/KeyguardAbsKeyInputView$5;
.super Landroid/os/CountDownTimer;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardAbsKeyInputView;->handleAttemptLockout(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardAbsKeyInputView;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$5;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$5;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const-string/jumbo v1, ""

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$5;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->resetState()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$5;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCountdownTimer:Landroid/os/CountDownTimer;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$5;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->clearLockoutAttemptDeadline()V

    return-void
.end method

.method public onTick(J)V
    .locals 9

    const/16 v7, 0x3e8

    const/4 v6, 0x1

    const-wide/16 v0, 0x3e8

    div-long v0, p1, v0

    long-to-int v0, v0

    if-gt v0, v6, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$5;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$5;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->access$300(Lcom/android/keyguard/KeyguardAbsKeyInputView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->kg_too_many_failed_attempt_countdown:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v6, v7}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->setHintOrMessageText(Ljava/lang/CharSequence;ZI)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$5;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$5;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->access$200(Lcom/android/keyguard/KeyguardAbsKeyInputView;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$string;->kg_too_many_failed_attempts_countdown:I

    new-array v4, v6, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v6, v7}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->setHintOrMessageText(Ljava/lang/CharSequence;ZI)V

    goto :goto_0
.end method
