.class Lcom/android/keyguard/KeyguardUniversalLockView$3;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lcom/android/internal/widget/DirectionLockTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardUniversalLockView;
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

    iput-object p1, p0, Lcom/android/keyguard/KeyguardUniversalLockView$3;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDirectionDetected(Ljava/lang/String;Z)V
    .locals 7

    const/4 v6, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUniversalLockView$3;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$800(Lcom/android/keyguard/KeyguardUniversalLockView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    const-string/jumbo v1, "FINGER_LIFT"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    :cond_0
    if-nez p2, :cond_7

    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUniversalLockView$3;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$1200(Lcom/android/keyguard/KeyguardUniversalLockView;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1b58

    cmp-long v1, v2, v4

    if-gtz v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView$3;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$1202(Lcom/android/keyguard/KeyguardUniversalLockView;J)J

    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView$3;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$100(Lcom/android/keyguard/KeyguardUniversalLockView;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView$3;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$1300(Lcom/android/keyguard/KeyguardUniversalLockView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->clearAnimation()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView$3;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$1300(Lcom/android/keyguard/KeyguardUniversalLockView;)Landroid/widget/TextView;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView$3;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$1300(Lcom/android/keyguard/KeyguardUniversalLockView;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const-string/jumbo v0, "FINGER_LIFT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    :cond_4
    :goto_1
    if-nez p2, :cond_9

    :cond_5
    :goto_2
    return-void

    :cond_6
    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUniversalLockView$3;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$900(Lcom/android/keyguard/KeyguardUniversalLockView;)Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUniversalLockView$3;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$900(Lcom/android/keyguard/KeyguardUniversalLockView;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUniversalLockView$3;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$1000(Lcom/android/keyguard/KeyguardUniversalLockView;)Landroid/view/animation/AlphaAnimation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_7
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUniversalLockView$3;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$900(Lcom/android/keyguard/KeyguardUniversalLockView;)Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUniversalLockView$3;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$900(Lcom/android/keyguard/KeyguardUniversalLockView;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUniversalLockView$3;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$1100(Lcom/android/keyguard/KeyguardUniversalLockView;)Landroid/view/animation/AlphaAnimation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView$3;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    new-instance v1, Lcom/android/keyguard/KeyguardUniversalLockView$DirectionStichingTimer;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUniversalLockView$3;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    invoke-direct {v1, v2, v6}, Lcom/android/keyguard/KeyguardUniversalLockView$DirectionStichingTimer;-><init>(Lcom/android/keyguard/KeyguardUniversalLockView;Lcom/android/keyguard/KeyguardUniversalLockView$1;)V

    iput-object v1, v0, Lcom/android/keyguard/KeyguardUniversalLockView;->mTimer:Lcom/android/keyguard/KeyguardUniversalLockView$DirectionStichingTimer;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView$3;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardUniversalLockView;->mTimer:Lcom/android/keyguard/KeyguardUniversalLockView$DirectionStichingTimer;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView$3;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardUniversalLockView;->mTimer:Lcom/android/keyguard/KeyguardUniversalLockView$DirectionStichingTimer;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUniversalLockView$DirectionStichingTimer;->start()V

    goto :goto_1

    :cond_9
    const-string/jumbo v0, "FINGER_LIFT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView$3;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$000(Lcom/android/keyguard/KeyguardUniversalLockView;)Lcom/android/internal/widget/DirectionLockView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->getCurrentPassword()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x16

    if-gt v0, v1, :cond_5

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView$3;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$1500(Lcom/android/keyguard/KeyguardUniversalLockView;)V

    goto :goto_2
.end method

.method public onDirectionStarted()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView$3;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$400(Lcom/android/keyguard/KeyguardUniversalLockView;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView$3;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$300(Lcom/android/keyguard/KeyguardUniversalLockView;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView$3;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$000(Lcom/android/keyguard/KeyguardUniversalLockView;)Lcom/android/internal/widget/DirectionLockView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/DirectionLockView;->setAllow(Z)V

    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView$3;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$000(Lcom/android/keyguard/KeyguardUniversalLockView;)Lcom/android/internal/widget/DirectionLockView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/DirectionLockView;->setAllow(Z)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView$3;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardUniversalLockView;->mTimer:Lcom/android/keyguard/KeyguardUniversalLockView$DirectionStichingTimer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView$3;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardUniversalLockView;->mTimer:Lcom/android/keyguard/KeyguardUniversalLockView$DirectionStichingTimer;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUniversalLockView$DirectionStichingTimer;->interrupt()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView$3;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    iput-object v2, v0, Lcom/android/keyguard/KeyguardUniversalLockView;->mTimer:Lcom/android/keyguard/KeyguardUniversalLockView$DirectionStichingTimer;

    goto :goto_0
.end method
