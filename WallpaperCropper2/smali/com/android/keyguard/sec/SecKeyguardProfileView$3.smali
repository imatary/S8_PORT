.class Lcom/android/keyguard/sec/SecKeyguardProfileView$3;
.super Landroid/content/BroadcastReceiver;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/SecKeyguardProfileView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/SecKeyguardProfileView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/SecKeyguardProfileView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView$3;->this$0:Lcom/android/keyguard/sec/SecKeyguardProfileView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const/16 v1, 0x64

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView$3;->this$0:Lcom/android/keyguard/sec/SecKeyguardProfileView;

    # getter for: Lcom/android/keyguard/sec/SecKeyguardProfileView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardProfileView;->access$300(Lcom/android/keyguard/sec/SecKeyguardProfileView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView$3;->this$0:Lcom/android/keyguard/sec/SecKeyguardProfileView;

    # getter for: Lcom/android/keyguard/sec/SecKeyguardProfileView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardProfileView;->access$300(Lcom/android/keyguard/sec/SecKeyguardProfileView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView$3;->this$0:Lcom/android/keyguard/sec/SecKeyguardProfileView;

    # getter for: Lcom/android/keyguard/sec/SecKeyguardProfileView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardProfileView;->access$300(Lcom/android/keyguard/sec/SecKeyguardProfileView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0
.end method
