.class Lcom/android/keyguard/KeyguardUniversalLockView$5;
.super Landroid/os/Handler;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardUniversalLockView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardUniversalLockView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardUniversalLockView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardUniversalLockView$5;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    const/4 v2, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView$5;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    # invokes: Lcom/android/keyguard/KeyguardUniversalLockView;->clearDots()V
    invoke-static {v0}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$200(Lcom/android/keyguard/KeyguardUniversalLockView;)V

    iget v0, p1, Landroid/os/Message;->what:I

    # getter for: Lcom/android/keyguard/KeyguardUniversalLockView;->WRONG_PASSWORD_DETECTED:I
    invoke-static {}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$500()I

    move-result v1

    if-eq v0, v1, :cond_1

    iget v0, p1, Landroid/os/Message;->what:I

    # getter for: Lcom/android/keyguard/KeyguardUniversalLockView;->RIGHT_PASSWORD_DETECTED:I
    invoke-static {}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$600()I

    move-result v1

    if-eq v0, v1, :cond_8

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "KeyguardUniversalLockView"

    const-string/jumbo v1, "In handleMessage()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView$5;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    # setter for: Lcom/android/keyguard/KeyguardUniversalLockView;->isChecking:Z
    invoke-static {v0, v4}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$402(Lcom/android/keyguard/KeyguardUniversalLockView;Z)Z

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView$5;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    # getter for: Lcom/android/keyguard/KeyguardUniversalLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$000(Lcom/android/keyguard/KeyguardUniversalLockView;)Lcom/android/internal/widget/DirectionLockView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->clearScreen()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView$5;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    # getter for: Lcom/android/keyguard/KeyguardUniversalLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$000(Lcom/android/keyguard/KeyguardUniversalLockView;)Lcom/android/internal/widget/DirectionLockView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->resetPassword()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView$5;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    # operator++ for: Lcom/android/keyguard/KeyguardUniversalLockView;->mTotalFailedUniversalLockAttempts:I
    invoke-static {v0}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$1608(Lcom/android/keyguard/KeyguardUniversalLockView;)I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView$5;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    # getter for: Lcom/android/keyguard/KeyguardUniversalLockView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$800(Lcom/android/keyguard/KeyguardUniversalLockView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    invoke-interface {v0, v4}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(Z)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView$5;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    # invokes: Lcom/android/keyguard/KeyguardUniversalLockView;->isDeviceDisabledForMaxFailedAttempt()Z
    invoke-static {v0}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$1700(Lcom/android/keyguard/KeyguardUniversalLockView;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView$5;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    # invokes: Lcom/android/keyguard/KeyguardUniversalLockView;->disableDevicePermanently()V
    invoke-static {v0}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$2900(Lcom/android/keyguard/KeyguardUniversalLockView;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView$5;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    # getter for: Lcom/android/keyguard/KeyguardUniversalLockView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$1900(Lcom/android/keyguard/KeyguardUniversalLockView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUniversalLockView$5;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    # getter for: Lcom/android/keyguard/KeyguardUniversalLockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v1}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$1800(Lcom/android/keyguard/KeyguardUniversalLockView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts(IZ)I

    move-result v0

    rsub-int/lit8 v1, v0, 0x5

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUniversalLockView$5;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardUniversalLockView$5;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    # invokes: Lcom/android/keyguard/KeyguardUniversalLockView;->updateErrorText(I)Ljava/lang/String;
    invoke-static {v3, v1}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$2100(Lcom/android/keyguard/KeyguardUniversalLockView;I)Ljava/lang/String;

    move-result-object v3

    # setter for: Lcom/android/keyguard/KeyguardUniversalLockView;->mErrorMessage:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$2002(Lcom/android/keyguard/KeyguardUniversalLockView;Ljava/lang/String;)Ljava/lang/String;

    sget-boolean v2, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsAutoWipe:Z

    if-nez v2, :cond_5

    :cond_3
    rem-int/lit8 v0, v0, 0x5

    if-eqz v0, :cond_6

    :goto_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView$5;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    # getter for: Lcom/android/keyguard/KeyguardUniversalLockView;->playVoice:Z
    invoke-static {v0}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$2300(Lcom/android/keyguard/KeyguardUniversalLockView;)Z

    move-result v0

    if-nez v0, :cond_7

    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView$5;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    # getter for: Lcom/android/keyguard/KeyguardUniversalLockView;->mDirectionLockTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$1300(Lcom/android/keyguard/KeyguardUniversalLockView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUniversalLockView$5;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    # getter for: Lcom/android/keyguard/KeyguardUniversalLockView;->mErrorTextEnterAnim:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$2700(Lcom/android/keyguard/KeyguardUniversalLockView;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView$5;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    # getter for: Lcom/android/keyguard/KeyguardUniversalLockView;->mVibraterService:Landroid/os/Vibrator;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$2800(Lcom/android/keyguard/KeyguardUniversalLockView;)Landroid/os/Vibrator;

    move-result-object v0

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    goto/16 :goto_0

    :cond_5
    if-nez v1, :cond_3

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView$5;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    # getter for: Lcom/android/keyguard/KeyguardUniversalLockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$1800(Lcom/android/keyguard/KeyguardUniversalLockView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUniversalLockView$5;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    # invokes: Lcom/android/keyguard/KeyguardUniversalLockView;->handleAttemptLockout(J)V
    invoke-static {v2, v0, v1}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$2200(Lcom/android/keyguard/KeyguardUniversalLockView;J)V

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestUX()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView$5;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUniversalLockView;->reset()V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView$5;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    # getter for: Lcom/android/keyguard/KeyguardUniversalLockView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$2400(Lcom/android/keyguard/KeyguardUniversalLockView;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView$5;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    # getter for: Lcom/android/keyguard/KeyguardUniversalLockView;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$2600(Lcom/android/keyguard/KeyguardUniversalLockView;)Landroid/speech/tts/TextToSpeech;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUniversalLockView$5;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    # getter for: Lcom/android/keyguard/KeyguardUniversalLockView;->mErrorMessage:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$2000(Lcom/android/keyguard/KeyguardUniversalLockView;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUniversalLockView$5;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    # getter for: Lcom/android/keyguard/KeyguardUniversalLockView;->mHashMap:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$2500(Lcom/android/keyguard/KeyguardUniversalLockView;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v0, v1, v4, v2}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    goto :goto_2

    :cond_8
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView$5;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    # getter for: Lcom/android/keyguard/KeyguardUniversalLockView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$800(Lcom/android/keyguard/KeyguardUniversalLockView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(Z)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView$5;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    # setter for: Lcom/android/keyguard/KeyguardUniversalLockView;->mTotalFailedUniversalLockAttempts:I
    invoke-static {v0, v4}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$1602(Lcom/android/keyguard/KeyguardUniversalLockView;I)I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView$5;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    # getter for: Lcom/android/keyguard/KeyguardUniversalLockView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$800(Lcom/android/keyguard/KeyguardUniversalLockView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    goto/16 :goto_0
.end method
