.class Lcom/android/keyguard/KeyguardActivityLauncher$1;
.super Landroid/os/Handler;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardActivityLauncher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardActivityLauncher;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardActivityLauncher;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardActivityLauncher$1;->this$0:Lcom/android/keyguard/KeyguardActivityLauncher;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    instance-of v1, v0, Landroid/content/Intent;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardActivityLauncher$1;->this$0:Lcom/android/keyguard/KeyguardActivityLauncher;

    check-cast v0, Landroid/content/Intent;

    # invokes: Lcom/android/keyguard/KeyguardActivityLauncher;->startActivityForCurrentUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/Handler;Ljava/lang/Runnable;)V
    invoke-static {v1, v0, v2, v2, v2}, Lcom/android/keyguard/KeyguardActivityLauncher;->access$000(Lcom/android/keyguard/KeyguardActivityLauncher;Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method
