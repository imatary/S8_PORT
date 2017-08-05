.class Lcom/android/keyguard/KeyguardUniversalLockView$DirectionStichingTimer;
.super Ljava/lang/Thread;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardUniversalLockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DirectionStichingTimer"
.end annotation


# instance fields
.field Msg:Landroid/os/Message;

.field final synthetic this$0:Lcom/android/keyguard/KeyguardUniversalLockView;


# direct methods
.method private constructor <init>(Lcom/android/keyguard/KeyguardUniversalLockView;)V
    .locals 1

    iput-object p1, p0, Lcom/android/keyguard/KeyguardUniversalLockView$DirectionStichingTimer;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView$DirectionStichingTimer;->Msg:Landroid/os/Message;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/keyguard/KeyguardUniversalLockView;Lcom/android/keyguard/KeyguardUniversalLockView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUniversalLockView$DirectionStichingTimer;-><init>(Lcom/android/keyguard/KeyguardUniversalLockView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "KeyguardUniversalLockView"

    const-string/jumbo v1, "Stitching Timer Thread started"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView$DirectionStichingTimer;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$302(Lcom/android/keyguard/KeyguardUniversalLockView;Z)Z

    const-wide/16 v0, 0x3e8

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView$DirectionStichingTimer;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$302(Lcom/android/keyguard/KeyguardUniversalLockView;Z)Z

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView$DirectionStichingTimer;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$402(Lcom/android/keyguard/KeyguardUniversalLockView;Z)Z

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView$DirectionStichingTimer;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUniversalLockView;->checkForCorrectPassword()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView$DirectionStichingTimer;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUniversalLockView;->checkForCorrectPassword()Z

    move-result v0

    if-nez v0, :cond_2

    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView$DirectionStichingTimer;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$402(Lcom/android/keyguard/KeyguardUniversalLockView;Z)Z

    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView$DirectionStichingTimer;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$000(Lcom/android/keyguard/KeyguardUniversalLockView;)Lcom/android/internal/widget/DirectionLockView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->getCurrentPasswordNumbers()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView$DirectionStichingTimer;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardUniversalLockView;->mUniversalLockWrongPasswordhandler:Landroid/os/Handler;

    invoke-static {}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$500()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView$DirectionStichingTimer;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    invoke-static {v0, v2}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$302(Lcom/android/keyguard/KeyguardUniversalLockView;Z)Z

    const-string/jumbo v0, "KeyguardUniversalLockView"

    const-string/jumbo v1, "Interrupted before waking up naturally"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView$DirectionStichingTimer;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardUniversalLockView;->mUniversalLockWrongPasswordhandler:Landroid/os/Handler;

    invoke-static {}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$600()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
