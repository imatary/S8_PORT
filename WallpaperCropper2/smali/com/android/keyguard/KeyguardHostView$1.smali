.class Lcom/android/keyguard/KeyguardHostView$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardHostView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardHostView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardHostView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardHostView$1;->this$0:Lcom/android/keyguard/KeyguardHostView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBootCompleted()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView$1;->this$0:Lcom/android/keyguard/KeyguardHostView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardHostView;->access$000(Lcom/android/keyguard/KeyguardHostView;)Ljava/lang/Runnable;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView$1;->this$0:Lcom/android/keyguard/KeyguardHostView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardHostView;->access$000(Lcom/android/keyguard/KeyguardHostView;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView$1;->this$0:Lcom/android/keyguard/KeyguardHostView;

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardHostView;->access$002(Lcom/android/keyguard/KeyguardHostView;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    goto :goto_0
.end method

.method public onUserSwitchComplete(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView$1;->this$0:Lcom/android/keyguard/KeyguardHostView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardHostView;->access$100(Lcom/android/keyguard/KeyguardHostView;)Lcom/android/keyguard/KeyguardMultiUserSelectorView;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView$1;->this$0:Lcom/android/keyguard/KeyguardHostView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardHostView;->access$100(Lcom/android/keyguard/KeyguardHostView;)Lcom/android/keyguard/KeyguardMultiUserSelectorView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->finalizeActiveUserView(Z)V

    goto :goto_0
.end method
