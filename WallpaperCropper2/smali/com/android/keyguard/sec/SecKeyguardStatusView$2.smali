.class Lcom/android/keyguard/sec/SecKeyguardStatusView$2;
.super Landroid/content/BroadcastReceiver;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/SecKeyguardStatusView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/SecKeyguardStatusView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/SecKeyguardStatusView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/SecKeyguardStatusView$2;->this$0:Lcom/android/keyguard/sec/SecKeyguardStatusView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const/16 v2, 0x12cb

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.intent.action.SERVICE_STATE"

    if-eq v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardStatusView$2;->this$0:Lcom/android/keyguard/sec/SecKeyguardStatusView;

    # getter for: Lcom/android/keyguard/sec/SecKeyguardStatusView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardStatusView;->access$200(Lcom/android/keyguard/sec/SecKeyguardStatusView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isRoaming(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardStatusView$2;->this$0:Lcom/android/keyguard/sec/SecKeyguardStatusView;

    # getter for: Lcom/android/keyguard/sec/SecKeyguardStatusView;->mIsNetworkRoaming:Z
    invoke-static {v1}, Lcom/android/keyguard/sec/SecKeyguardStatusView;->access$300(Lcom/android/keyguard/sec/SecKeyguardStatusView;)Z

    move-result v1

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardStatusView$2;->this$0:Lcom/android/keyguard/sec/SecKeyguardStatusView;

    # setter for: Lcom/android/keyguard/sec/SecKeyguardStatusView;->mIsNetworkRoaming:Z
    invoke-static {v1, v0}, Lcom/android/keyguard/sec/SecKeyguardStatusView;->access$302(Lcom/android/keyguard/sec/SecKeyguardStatusView;Z)Z

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardStatusView$2;->this$0:Lcom/android/keyguard/sec/SecKeyguardStatusView;

    # getter for: Lcom/android/keyguard/sec/SecKeyguardStatusView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardStatusView;->access$400(Lcom/android/keyguard/sec/SecKeyguardStatusView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_2

    :goto_1
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardStatusView$2;->this$0:Lcom/android/keyguard/sec/SecKeyguardStatusView;

    # getter for: Lcom/android/keyguard/sec/SecKeyguardStatusView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardStatusView;->access$400(Lcom/android/keyguard/sec/SecKeyguardStatusView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardStatusView$2;->this$0:Lcom/android/keyguard/sec/SecKeyguardStatusView;

    # getter for: Lcom/android/keyguard/sec/SecKeyguardStatusView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardStatusView;->access$400(Lcom/android/keyguard/sec/SecKeyguardStatusView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_1
.end method
