.class Lcom/samsung/android/sdk/rcl/RclExpansionHelper$2;
.super Ljava/lang/Object;
.source "RclExpansionHelper.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->startAnimation(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/rcl/RclExpansionHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper$2;->this$0:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper$2;->this$0:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    # getter for: Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mContainer:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->access$100(Lcom/samsung/android/sdk/rcl/RclExpansionHelper;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper$2;->this$0:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    # getter for: Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mContainer:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->access$100(Lcom/samsung/android/sdk/rcl/RclExpansionHelper;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    iget-object v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper$2;->this$0:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    # invokes: Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->notifyExpansionProgress()Z
    invoke-static {v0}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->access$2000(Lcom/samsung/android/sdk/rcl/RclExpansionHelper;)Z

    return-void
.end method
