.class Lcom/android/keyguard/KeyguardHostView$MyOnClickHandler;
.super Landroid/widget/RemoteViews$OnClickHandler;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardHostView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyOnClickHandler"
.end annotation


# instance fields
.field mKeyguardHostView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/keyguard/KeyguardHostView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardHostView;)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/RemoteViews$OnClickHandler;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardHostView$MyOnClickHandler;->mKeyguardHostView:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onClickHandler(Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;)Z
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView$MyOnClickHandler;->mKeyguardHostView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardHostView;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-super {p0, p1, p2, p3}, Landroid/widget/RemoteViews$OnClickHandler;->onClickHandler(Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;)Z

    move-result v0

    return v0

    :cond_0
    return v1

    :cond_1
    new-instance v1, Lcom/android/keyguard/KeyguardHostView$MyOnClickHandler$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/keyguard/KeyguardHostView$MyOnClickHandler$1;-><init>(Lcom/android/keyguard/KeyguardHostView$MyOnClickHandler;Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardHostView;->setOnDismissAction(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;)V

    # getter for: Lcom/android/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/keyguard/KeyguardViewStateManager;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardHostView;->access$600(Lcom/android/keyguard/KeyguardHostView;)Lcom/android/keyguard/KeyguardViewStateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardViewStateManager;->isChallengeShowing()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardHostView;->dismiss()Z

    :goto_0
    return v2

    :cond_2
    # getter for: Lcom/android/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/keyguard/KeyguardViewStateManager;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardHostView;->access$600(Lcom/android/keyguard/KeyguardHostView;)Lcom/android/keyguard/KeyguardViewStateManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardViewStateManager;->showBouncer(Z)V

    goto :goto_0
.end method
