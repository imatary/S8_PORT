.class Lcom/android/keyguard/sec/KeyguardUnlockView$8;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lcom/android/keyguard/sec/KeyguardUnlockView$HelpTextCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/KeyguardUnlockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/KeyguardUnlockView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/KeyguardUnlockView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView$8;->this$0:Lcom/android/keyguard/sec/KeyguardUnlockView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public showShortcutHelpText(Z)V
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView$8;->this$0:Lcom/android/keyguard/sec/KeyguardUnlockView;

    if-nez p1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    const/4 v2, 0x2

    new-array v2, v2, [Landroid/view/View;

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardUnlockView$8;->this$0:Lcom/android/keyguard/sec/KeyguardUnlockView;

    invoke-static {v3}, Lcom/android/keyguard/sec/KeyguardUnlockView;->access$400(Lcom/android/keyguard/sec/KeyguardUnlockView;)Landroid/view/View;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockView$8;->this$0:Lcom/android/keyguard/sec/KeyguardUnlockView;

    invoke-static {v4}, Lcom/android/keyguard/sec/KeyguardUnlockView;->access$500(Lcom/android/keyguard/sec/KeyguardUnlockView;)Landroid/view/View;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Lcom/android/keyguard/sec/KeyguardUnlockView;->doTransition(F[Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView$8;->this$0:Lcom/android/keyguard/sec/KeyguardUnlockView;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardUnlockView;->access$600(Lcom/android/keyguard/sec/KeyguardUnlockView;)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView$8;->this$0:Lcom/android/keyguard/sec/KeyguardUnlockView;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardUnlockView;->access$900(Lcom/android/keyguard/sec/KeyguardUnlockView;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/keyguard/sec/KeyguardUnlockView$8$2;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/KeyguardUnlockView$8$2;-><init>(Lcom/android/keyguard/sec/KeyguardUnlockView$8;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView$8;->this$0:Lcom/android/keyguard/sec/KeyguardUnlockView;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardUnlockView;->access$900(Lcom/android/keyguard/sec/KeyguardUnlockView;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/keyguard/sec/KeyguardUnlockView$8$1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/KeyguardUnlockView$8$1;-><init>(Lcom/android/keyguard/sec/KeyguardUnlockView$8;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method
