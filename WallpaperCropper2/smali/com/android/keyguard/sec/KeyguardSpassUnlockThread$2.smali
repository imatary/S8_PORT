.class Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$2;
.super Landroid/os/Handler;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$2;->this$0:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    const/4 v8, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    const-string/jumbo v0, "KeyguardSpassUnlockThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unhandled message = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$2;->this$0:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->handleFingerPrintDataBaseError()V

    :cond_0
    :goto_0
    return-void

    :sswitch_1
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$2;->this$0:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->handleRespondingError()V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$2;->this$0:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->handleSensorFailure()V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$2;->this$0:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->handleSensorError()V

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$2;->this$0:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->handleStartFingerPrintSensor()V

    goto :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$2;->this$0:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->unregisterClient()V

    goto :goto_0

    :sswitch_6
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$2;->this$0:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    # invokes: Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->handleStartIdentify()V
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->access$100(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;)V

    goto :goto_0

    :sswitch_7
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$2;->this$0:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->handleStopIdentify()V

    goto :goto_0

    :sswitch_8
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$2;->this$0:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    # invokes: Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->handleDestoryFingerPrintThread()V
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->access$200(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;)V

    goto :goto_0

    :sswitch_9
    const-string/jumbo v0, "KeyguardSpassUnlockThread"

    const-string/jumbo v1, "handleMessage : EVENT_IDENTIFY_STARTED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$2;->this$0:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    # getter for: Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->access$300(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_1
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$2;->this$0:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    # getter for: Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassCallback:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->access$400(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;)Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$2;->this$0:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    # getter for: Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassCallback:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->access$400(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;)Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;

    move-result-object v0

    invoke-interface {v0, v6}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;->setAttributionViewEnabled(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$2;->this$0:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    # getter for: Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->access$300(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    goto :goto_1

    :sswitch_a
    const-string/jumbo v0, "KeyguardSpassUnlockThread"

    const-string/jumbo v1, "handleMessage : EVENT_FINGER_REMOVED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$2;->this$0:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    # getter for: Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassCallback:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->access$400(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;)Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$2;->this$0:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    # getter for: Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassCallback:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->access$400(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;)Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;

    move-result-object v0

    invoke-interface {v0, v7}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;->setAttributionViewEnabled(Z)V

    goto :goto_0

    :sswitch_b
    const-string/jumbo v0, "KeyguardSpassUnlockThread"

    const-string/jumbo v1, "handleMessage : EVENT_IDENTIFY_READY"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :sswitch_c
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$2;->this$0:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    # getter for: Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->access$500(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isPermanentlyLocked()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v1, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventResult:I

    if-eqz v1, :cond_5

    iget v1, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventResult:I

    if-eq v1, v8, :cond_6

    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$2;->this$0:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    # getter for: Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->access$300(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    if-nez v0, :cond_12

    :goto_3
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$2;->this$0:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    # getter for: Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassCallback:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->access$400(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;)Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$2;->this$0:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    # getter for: Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassCallback:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->access$400(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;)Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;

    move-result-object v0

    invoke-interface {v0, v7}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;->setAttributionViewEnabled(Z)V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$2;->this$0:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    # getter for: Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassCallback:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->access$400(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;)Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "KeyguardSpassUnlockThread"

    const-string/jumbo v1, "EVENT_IDENTIFY_FINISHED - showBackupPassword"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$2;->this$0:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    # getter for: Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassCallback:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->access$400(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;)Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;->showBackupPassword()V

    return-void

    :cond_5
    const-string/jumbo v0, "KeyguardSpassUnlockThread"

    const-string/jumbo v1, "handleMessage : RESULT_SUCCESS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$2;->this$0:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    # invokes: Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->handleUnlock()V
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->access$600(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;)V

    goto :goto_2

    :cond_6
    const-string/jumbo v1, "KeyguardSpassUnlockThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleMessage : RESULT_FAILED eventStatus = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_9

    iget v1, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_a

    iget v1, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    const/16 v2, 0x79

    if-eq v1, v2, :cond_b

    iget v1, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    const/16 v2, 0x8

    if-eq v1, v2, :cond_3

    iget v1, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    const/16 v2, 0xb

    if-eq v1, v2, :cond_c

    :cond_7
    :goto_4
    iget v1, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    const/16 v2, 0x7a

    if-eq v1, v2, :cond_10

    invoke-virtual {v0}, Lcom/samsung/android/fingerprint/FingerprintEvent;->getImageQualityFeedback()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$2;->this$0:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    # getter for: Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassCallback:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;
    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->access$400(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;)Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;

    move-result-object v1

    if-nez v1, :cond_11

    :cond_8
    :goto_5
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$2;->this$0:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    # getter for: Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mVibraterService:Landroid/os/SystemVibrator;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->access$900(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;)Landroid/os/SystemVibrator;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$2;->this$0:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    # getter for: Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mVibraterService:Landroid/os/SystemVibrator;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->access$900(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;)Landroid/os/SystemVibrator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$2;->this$0:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    # getter for: Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mVibraterPattern:[J
    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->access$1000(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;)[J

    move-result-object v1

    invoke-virtual {v0, v1, v8}, Landroid/os/SystemVibrator;->vibrate([JI)V

    goto/16 :goto_2

    :cond_9
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$2;->this$0:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    # invokes: Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->handleStartIdentify()V
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->access$100(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;)V

    goto/16 :goto_2

    :cond_a
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$2;->this$0:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    # getter for: Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->access$000(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$2;->this$0:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    # getter for: Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->access$000(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x461

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_2

    :cond_b
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$2;->this$0:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    # getter for: Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->access$000(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$2;->this$0:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    # getter for: Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->access$000(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x462

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_2

    :cond_c
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$2;->this$0:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    # invokes: Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->handleReportFailedAttempts()V
    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->access$700(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;)V

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isVZWModel()Z

    move-result v1

    if-nez v1, :cond_e

    :cond_d
    invoke-virtual {v0}, Lcom/samsung/android/fingerprint/FingerprintEvent;->getImageQualityFeedback()Ljava/lang/String;

    move-result-object v1

    :goto_6
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$2;->this$0:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    # getter for: Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassCallback:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;
    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->access$400(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;)Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;

    move-result-object v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$2;->this$0:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    # getter for: Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassCallback:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;
    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->access$400(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;)Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;->showErrorMessage(Ljava/lang/String;)V

    goto :goto_4

    :cond_e
    sget-boolean v1, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsAutoWipe:Z

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$2;->this$0:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    # getter for: Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->access$800(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedSecBiometricUnlockAttempts()I

    move-result v1

    rsub-int/lit8 v1, v1, 0x5

    if-gt v1, v7, :cond_f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/samsung/android/fingerprint/FingerprintEvent;->getImageQualityFeedback()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$2;->this$0:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    # getter for: Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->access$800(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;)Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$string;->kg_1_attempt_remaining:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    :cond_f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/samsung/android/fingerprint/FingerprintEvent;->getImageQualityFeedback()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$2;->this$0:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    # getter for: Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->access$800(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;)Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/android/keyguard/R$string;->kg_n_attempts_remaining:I

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_6

    :cond_10
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$2;->this$0:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    # getter for: Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->access$000(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$2;->this$0:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    # getter for: Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->access$000(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x465

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_5

    :cond_11
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$2;->this$0:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    # getter for: Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassCallback:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;
    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->access$400(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;)Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;->showErrorMessage(Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_12
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$2;->this$0:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    # getter for: Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->access$300(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    goto/16 :goto_3

    :sswitch_d
    const-string/jumbo v0, "KeyguardSpassUnlockThread"

    const-string/jumbo v1, "handleMessage : EVENT_IDENTIFY_STATUS  "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v1, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    const/16 v2, 0x14

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/fingerprint/FingerprintEvent;->getImageQualityFeedback()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$2;->this$0:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    # getter for: Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassCallback:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;
    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->access$400(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;)Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$2;->this$0:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    # getter for: Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassCallback:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;
    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->access$400(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;)Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;->showErrorMessage(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_e
    const-string/jumbo v0, "KeyguardSpassUnlockThread"

    const-string/jumbo v1, "handleMessage : EVENT_IDENTIFY_COMPLETED  "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$2;->this$0:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    # invokes: Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->handleStartIdentify()V
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->access$100(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_b
        0xc -> :sswitch_9
        0xd -> :sswitch_c
        0xe -> :sswitch_d
        0x10 -> :sswitch_e
        0x3f3 -> :sswitch_a
        0x45c -> :sswitch_6
        0x45d -> :sswitch_7
        0x45f -> :sswitch_4
        0x460 -> :sswitch_5
        0x461 -> :sswitch_3
        0x462 -> :sswitch_2
        0x463 -> :sswitch_1
        0x464 -> :sswitch_8
        0x465 -> :sswitch_0
    .end sparse-switch
.end method
