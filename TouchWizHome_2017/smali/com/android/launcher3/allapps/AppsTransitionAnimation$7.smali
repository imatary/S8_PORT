.class Lcom/android/launcher3/allapps/AppsTransitionAnimation$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AppsTransitionAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/allapps/AppsTransitionAnimation;->getTidyUpAnimation(ZLjava/util/HashMap;ZLcom/android/launcher3/common/stage/StageEntry;)Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/AppsTransitionAnimation;

.field final synthetic val$searchBarAlphaValue:F

.field final synthetic val$searchBarContainerView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/AppsTransitionAnimation;Landroid/view/View;F)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation$7;->this$0:Lcom/android/launcher3/allapps/AppsTransitionAnimation;

    iput-object p2, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation$7;->val$searchBarContainerView:Landroid/view/View;

    iput p3, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation$7;->val$searchBarAlphaValue:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation$7;->val$searchBarContainerView:Landroid/view/View;

    iget v1, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation$7;->val$searchBarAlphaValue:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation$7;->this$0:Lcom/android/launcher3/allapps/AppsTransitionAnimation;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->access$402(Lcom/android/launcher3/allapps/AppsTransitionAnimation;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    return-void
.end method
