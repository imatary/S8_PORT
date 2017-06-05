.class Lcom/android/keyguard/sec/SecKeyguardCircleView$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/SecKeyguardCircleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/SecKeyguardCircleView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/SecKeyguardCircleView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView$1;->this$0:Lcom/android/keyguard/sec/SecKeyguardCircleView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyguardBouncerChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView$1;->this$0:Lcom/android/keyguard/sec/SecKeyguardCircleView;

    iget-object v0, v0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mKeyguardUnlockEventHandler:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView$1;->this$0:Lcom/android/keyguard/sec/SecKeyguardCircleView;

    iget-object v0, v0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mKeyguardUnlockEventHandler:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->reset()V

    goto :goto_0
.end method

.method public onScreenTurnedOff(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView$1;->this$0:Lcom/android/keyguard/sec/SecKeyguardCircleView;

    # invokes: Lcom/android/keyguard/sec/SecKeyguardCircleView;->onScreenTurnedOff()V
    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->access$100(Lcom/android/keyguard/sec/SecKeyguardCircleView;)V

    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView$1;->this$0:Lcom/android/keyguard/sec/SecKeyguardCircleView;

    # invokes: Lcom/android/keyguard/sec/SecKeyguardCircleView;->onScreenTurnedOn()V
    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->access$000(Lcom/android/keyguard/sec/SecKeyguardCircleView;)V

    return-void
.end method
