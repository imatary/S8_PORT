.class Lcom/android/keyguard/sec/SecKeyguardProfileView$4;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
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

    iput-object p1, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView$4;->this$0:Lcom/android/keyguard/sec/SecKeyguardProfileView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyguardVisibilityChanged(Z)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView$4;->this$0:Lcom/android/keyguard/sec/SecKeyguardProfileView;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardProfileView;->access$400(Lcom/android/keyguard/sec/SecKeyguardProfileView;)V

    goto :goto_0
.end method

.method public onScreenTurnedOff(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView$4;->this$0:Lcom/android/keyguard/sec/SecKeyguardProfileView;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardProfileView;->access$500(Lcom/android/keyguard/sec/SecKeyguardProfileView;)Landroid/widget/TextView;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView$4;->this$0:Lcom/android/keyguard/sec/SecKeyguardProfileView;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardProfileView;->access$500(Lcom/android/keyguard/sec/SecKeyguardProfileView;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_0
.end method

.method public onScreenTurnedOn()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView$4;->this$0:Lcom/android/keyguard/sec/SecKeyguardProfileView;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardProfileView;->access$500(Lcom/android/keyguard/sec/SecKeyguardProfileView;)Landroid/widget/TextView;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView$4;->this$0:Lcom/android/keyguard/sec/SecKeyguardProfileView;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardProfileView;->access$500(Lcom/android/keyguard/sec/SecKeyguardProfileView;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_0
.end method

.method public onUserSwitchComplete(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView$4;->this$0:Lcom/android/keyguard/sec/SecKeyguardProfileView;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardProfileView;->access$400(Lcom/android/keyguard/sec/SecKeyguardProfileView;)V

    return-void
.end method
