.class Lcom/samsung/android/sdk/rcl/RclExpansionFragment$1;
.super Landroid/widget/FrameLayout;
.source "RclExpansionFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/rcl/RclExpansionFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/rcl/RclExpansionFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/rcl/RclExpansionFragment;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/rcl/RclExpansionFragment$1;->this$0:Lcom/samsung/android/sdk/rcl/RclExpansionFragment;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionFragment$1;->this$0:Lcom/samsung/android/sdk/rcl/RclExpansionFragment;

    # getter for: Lcom/samsung/android/sdk/rcl/RclExpansionFragment;->mExpansionEnabled:Z
    invoke-static {v0}, Lcom/samsung/android/sdk/rcl/RclExpansionFragment;->access$000(Lcom/samsung/android/sdk/rcl/RclExpansionFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionFragment$1;->this$0:Lcom/samsung/android/sdk/rcl/RclExpansionFragment;

    # getter for: Lcom/samsung/android/sdk/rcl/RclExpansionFragment;->mExpansionHelper:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;
    invoke-static {v0}, Lcom/samsung/android/sdk/rcl/RclExpansionFragment;->access$100(Lcom/samsung/android/sdk/rcl/RclExpansionFragment;)Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionFragment$1;->this$0:Lcom/samsung/android/sdk/rcl/RclExpansionFragment;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/rcl/RclExpansionFragment;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionFragment$1;->this$0:Lcom/samsung/android/sdk/rcl/RclExpansionFragment;

    # getter for: Lcom/samsung/android/sdk/rcl/RclExpansionFragment;->mExpansionEnabled:Z
    invoke-static {v0}, Lcom/samsung/android/sdk/rcl/RclExpansionFragment;->access$000(Lcom/samsung/android/sdk/rcl/RclExpansionFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionFragment$1;->this$0:Lcom/samsung/android/sdk/rcl/RclExpansionFragment;

    # getter for: Lcom/samsung/android/sdk/rcl/RclExpansionFragment;->mExpansionHelper:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;
    invoke-static {v0}, Lcom/samsung/android/sdk/rcl/RclExpansionFragment;->access$100(Lcom/samsung/android/sdk/rcl/RclExpansionFragment;)Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method
