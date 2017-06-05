.class Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView$4;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView$4;->this$0:Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.CALL_PRIVILEGED"

    const-string/jumbo v2, "tel"

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView$4;->this$0:Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;

    # getter for: Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mPhoneNumber:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->access$500(Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_0
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView$4;->this$0:Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;

    # getter for: Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->access$600(Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "KeyguardCarrierLockPlusView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Can\'t find the component "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
