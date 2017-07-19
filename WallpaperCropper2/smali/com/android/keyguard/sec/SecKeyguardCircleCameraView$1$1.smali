.class Lcom/android/keyguard/sec/SecKeyguardCircleCameraView$1$1;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/SecKeyguardCircleCameraView$1;->onDismiss()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/keyguard/sec/SecKeyguardCircleCameraView$1;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/SecKeyguardCircleCameraView$1;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleCameraView$1$1;->this$1:Lcom/android/keyguard/sec/SecKeyguardCircleCameraView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleCameraView$1$1;->this$1:Lcom/android/keyguard/sec/SecKeyguardCircleCameraView$1;

    iget-object v0, v0, Lcom/android/keyguard/sec/SecKeyguardCircleCameraView$1;->val$intent:Landroid/content/Intent;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestUX()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_1
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleCameraView$1$1;->this$1:Lcom/android/keyguard/sec/SecKeyguardCircleCameraView$1;

    iget-object v0, v0, Lcom/android/keyguard/sec/SecKeyguardCircleCameraView$1;->val$intent:Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleCameraView$1$1;->this$1:Lcom/android/keyguard/sec/SecKeyguardCircleCameraView$1;

    iget-object v0, v0, Lcom/android/keyguard/sec/SecKeyguardCircleCameraView$1;->val$intent:Landroid/content/Intent;

    const v1, 0x34011000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleCameraView$1$1;->this$1:Lcom/android/keyguard/sec/SecKeyguardCircleCameraView$1;

    iget-object v1, v1, Lcom/android/keyguard/sec/SecKeyguardCircleCameraView$1;->val$intent:Landroid/content/Intent;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->keyguardWaitingForActivityDrawnTarget(Landroid/content/Intent;)V

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->resumeAppSwitches()V

    invoke-static {}, Lcom/android/keyguard/sec/SecKeyguardCircleCameraView;->access$000()Z

    move-result v0

    if-nez v0, :cond_3

    :goto_2
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleCameraView$1$1;->this$1:Lcom/android/keyguard/sec/SecKeyguardCircleCameraView$1;

    iget-object v0, v0, Lcom/android/keyguard/sec/SecKeyguardCircleCameraView$1;->this$0:Lcom/android/keyguard/sec/SecKeyguardCircleCameraView;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardCircleCameraView;->access$200(Lcom/android/keyguard/sec/SecKeyguardCircleCameraView;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleCameraView$1$1;->this$1:Lcom/android/keyguard/sec/SecKeyguardCircleCameraView$1;

    iget-object v1, v1, Lcom/android/keyguard/sec/SecKeyguardCircleCameraView$1;->val$intent:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SecKeyguardCircleCameraView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Cannot launch activity : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleCameraView$1$1;->this$1:Lcom/android/keyguard/sec/SecKeyguardCircleCameraView$1;

    iget-object v0, v0, Lcom/android/keyguard/sec/SecKeyguardCircleCameraView$1;->val$intent:Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleCameraView$1$1;->this$1:Lcom/android/keyguard/sec/SecKeyguardCircleCameraView$1;

    iget-object v0, v0, Lcom/android/keyguard/sec/SecKeyguardCircleCameraView$1;->this$0:Lcom/android/keyguard/sec/SecKeyguardCircleCameraView;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/SecKeyguardCircleCameraView;->isSecure()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleCameraView$1$1;->this$1:Lcom/android/keyguard/sec/SecKeyguardCircleCameraView$1;

    iget-object v0, v0, Lcom/android/keyguard/sec/SecKeyguardCircleCameraView$1;->val$intent:Landroid/content/Intent;

    const-string/jumbo v1, "isSecure"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleCameraView$1$1;->this$1:Lcom/android/keyguard/sec/SecKeyguardCircleCameraView$1;

    iget-object v0, v0, Lcom/android/keyguard/sec/SecKeyguardCircleCameraView$1;->val$intent:Landroid/content/Intent;

    const-string/jumbo v1, "isSecure"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleCameraView$1$1;->this$1:Lcom/android/keyguard/sec/SecKeyguardCircleCameraView$1;

    iget-object v0, v0, Lcom/android/keyguard/sec/SecKeyguardCircleCameraView$1;->this$0:Lcom/android/keyguard/sec/SecKeyguardCircleCameraView;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardCircleCameraView;->access$100(Lcom/android/keyguard/sec/SecKeyguardCircleCameraView;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method
