.class Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$1;
.super Ljava/lang/Object;
.source "GLAdjustmentButtonsLayout.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;->onStateChange(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;->mCropLayout:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;->access$000(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;)Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;->setVisible(Z)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;->mSeekWidget:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;->access$100(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;)Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->setVisible(Z)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
