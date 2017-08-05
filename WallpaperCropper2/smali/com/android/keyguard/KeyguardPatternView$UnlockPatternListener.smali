.class Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lcom/android/internal/widget/LockPatternView$OnPatternListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardPatternView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnlockPatternListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardPatternView;


# direct methods
.method private constructor <init>(Lcom/android/keyguard/KeyguardPatternView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/keyguard/KeyguardPatternView;Lcom/android/keyguard/KeyguardPatternView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;-><init>(Lcom/android/keyguard/KeyguardPatternView;)V

    return-void
.end method


# virtual methods
.method public onPatternCellAdded(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardPatternView;->access$600(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    return-void
.end method

.method public onPatternCleared()V
    .locals 0

    return-void
.end method

.method public onPatternDetected(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardPatternView;->access$900(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->checkPattern(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x2

    if-gt v0, v3, :cond_3

    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardPatternView;->access$000(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/keyguard/sec/SecLockPatternView;

    move-result-object v0

    sget-object v3, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v0, v3}, Lcom/android/keyguard/sec/SecLockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x4

    if-ge v0, v3, :cond_4

    move v0, v1

    :goto_1
    if-nez v0, :cond_5

    :goto_2
    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardPatternView;->access$1100(Lcom/android/keyguard/KeyguardPatternView;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardPatternView;->access$1800(Lcom/android/keyguard/KeyguardPatternView;)V

    :cond_0
    :goto_3
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardPatternView;->access$1000(Lcom/android/keyguard/KeyguardPatternView;)Z

    move-result v0

    if-nez v0, :cond_2

    :goto_4
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardPatternView;->access$600(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(Z)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardPatternView;->access$000(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/keyguard/sec/SecLockPatternView;

    move-result-object v0

    sget-object v1, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/SecLockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardPatternView;->access$600(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    goto :goto_3

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardPatternView;->setNullHintMessage()V

    goto :goto_4

    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardPatternView;->access$600(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardPatternView;->access$600(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(Z)V

    goto :goto_2

    :cond_6
    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardPatternView;->access$1200(Lcom/android/keyguard/KeyguardPatternView;)Z

    move-result v3

    if-nez v3, :cond_a

    :goto_5
    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardPatternView;->access$1400(Lcom/android/keyguard/KeyguardPatternView;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardPatternView;->access$900(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v4

    invoke-virtual {v3, v4, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts(IZ)I

    move-result v3

    rsub-int/lit8 v4, v3, 0x5

    sget-boolean v5, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsAutoWipe:Z

    if-nez v5, :cond_b

    :cond_7
    if-nez v0, :cond_c

    :cond_8
    :goto_6
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestUX()Z

    move-result v0

    if-nez v0, :cond_d

    :cond_9
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-virtual {v1, v3}, Lcom/android/keyguard/KeyguardPatternView;->getFailedAttemptMessage(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/KeyguardPatternView;->setHintOrMessageText(Ljava/lang/CharSequence;Z)V

    :goto_7
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardPatternView;->access$000(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/keyguard/sec/SecLockPatternView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardPatternView;->access$700(Lcom/android/keyguard/KeyguardPatternView;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_3

    :cond_a
    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardPatternView;->access$1300(Lcom/android/keyguard/KeyguardPatternView;)Landroid/os/SystemVibrator;

    move-result-object v3

    const-wide/16 v4, 0x64

    sget-object v6, Landroid/os/SystemVibrator$MagnitudeType;->TouchMagnitude:Landroid/os/SystemVibrator$MagnitudeType;

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/SystemVibrator;->vibrate(JLandroid/os/SystemVibrator$MagnitudeType;)V

    goto :goto_5

    :cond_b
    if-nez v4, :cond_7

    goto :goto_6

    :cond_c
    rem-int/lit8 v0, v3, 0x5

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardPatternView;->access$900(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v2, v0, v1}, Lcom/android/keyguard/KeyguardPatternView;->access$1500(Lcom/android/keyguard/KeyguardPatternView;J)V

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLegacyUX()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardPatternView;->reset()V

    goto/16 :goto_3

    :cond_d
    sget-boolean v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsAutoWipe:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardPatternView;->isCountDownTimerRunning()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    sget v3, Lcom/android/keyguard/R$string;->kg_wrong_pattern:I

    invoke-virtual {v0, v3, v2}, Lcom/android/keyguard/KeyguardPatternView;->setHintOrMessageText(IZ)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardPatternView;->access$1600(Lcom/android/keyguard/KeyguardPatternView;)Landroid/os/CountDownTimer;

    move-result-object v0

    if-nez v0, :cond_e

    :goto_8
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardPatternView;->access$1702(Lcom/android/keyguard/KeyguardPatternView;I)I

    iget-object v6, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    new-instance v0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener$1;

    const-wide/16 v2, 0x1f40

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener$1;-><init>(Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;JJ)V

    invoke-static {v6, v0}, Lcom/android/keyguard/KeyguardPatternView;->access$1602(Lcom/android/keyguard/KeyguardPatternView;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardPatternView;->access$1600(Lcom/android/keyguard/KeyguardPatternView;)Landroid/os/CountDownTimer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    goto :goto_7

    :cond_e
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardPatternView;->access$1600(Lcom/android/keyguard/KeyguardPatternView;)Landroid/os/CountDownTimer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v0, v7}, Lcom/android/keyguard/KeyguardPatternView;->access$1602(Lcom/android/keyguard/KeyguardPatternView;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;

    goto :goto_8
.end method

.method public onPatternStart()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardPatternView;->access$000(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/keyguard/sec/SecLockPatternView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardPatternView;->access$700(Lcom/android/keyguard/KeyguardPatternView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/SecLockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardPatternView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardPatternView;->access$800(Lcom/android/keyguard/KeyguardPatternView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardPatternView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardPatternView;->access$800(Lcom/android/keyguard/KeyguardPatternView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
