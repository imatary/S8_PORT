.class Lcom/android/keyguard/sec/KeyguardShortcutView$2;
.super Landroid/database/ContentObserver;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/KeyguardShortcutView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/KeyguardShortcutView;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$2;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    const/16 v2, 0x12c2

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$2;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    # getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$100(Lcom/android/keyguard/sec/KeyguardShortcutView;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "badge data changed!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$2;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    # getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$200(Lcom/android/keyguard/sec/KeyguardShortcutView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$2;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    # getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$200(Lcom/android/keyguard/sec/KeyguardShortcutView;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$2;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    # getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$200(Lcom/android/keyguard/sec/KeyguardShortcutView;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
