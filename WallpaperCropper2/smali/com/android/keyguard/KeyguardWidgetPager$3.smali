.class Lcom/android/keyguard/KeyguardWidgetPager$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardWidgetPager;->animateOutlinesAndSidePages(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardWidgetPager;

.field final synthetic val$show:Z


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardWidgetPager;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardWidgetPager$3;->this$0:Lcom/android/keyguard/KeyguardWidgetPager;

    iput-boolean p2, p0, Lcom/android/keyguard/KeyguardWidgetPager$3;->val$show:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardWidgetPager$3;->val$show:Z

    if-eqz v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetPager$3;->this$0:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardWidgetPager;->access$200(Lcom/android/keyguard/KeyguardWidgetPager;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetPager$3;->this$0:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardWidgetPager;->disablePageContentLayers()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetPager$3;->this$0:Lcom/android/keyguard/KeyguardWidgetPager;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardWidgetPager$3;->this$0:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardWidgetPager;->access$100(Lcom/android/keyguard/KeyguardWidgetPager;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardWidgetPager;->getWidgetPageAt(I)Lcom/android/keyguard/KeyguardWidgetFrame;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetPager$3;->this$0:Lcom/android/keyguard/KeyguardWidgetPager;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardWidgetPager;->access$102(Lcom/android/keyguard/KeyguardWidgetPager;I)I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetPager$3;->this$0:Lcom/android/keyguard/KeyguardWidgetPager;

    iput-boolean v3, v0, Lcom/android/keyguard/KeyguardWidgetPager;->mShowingInitialHints:Z

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardWidgetPager$3;->this$0:Lcom/android/keyguard/KeyguardWidgetPager;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardWidgetPager$3;->this$0:Lcom/android/keyguard/KeyguardWidgetPager;

    iget v2, v2, Lcom/android/keyguard/KeyguardWidgetPager;->mCurrentPage:I

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardWidgetPager;->getWidgetPageAt(I)Lcom/android/keyguard/KeyguardWidgetFrame;

    move-result-object v1

    if-eq v0, v1, :cond_3

    :cond_2
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardWidgetFrame;->resetSize()V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/android/keyguard/KeyguardWidgetPager$3;->this$0:Lcom/android/keyguard/KeyguardWidgetPager;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardWidgetPager;->mViewStateManager:Lcom/android/keyguard/KeyguardViewStateManager;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardViewStateManager;->isChallengeOverlapping()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardWidgetPager$3;->val$show:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetPager$3;->this$0:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardWidgetPager;->enablePageContentLayers()V

    goto :goto_0
.end method
