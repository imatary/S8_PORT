.class Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout$1;
.super Ljava/lang/Object;
.source "GLSubButtonLayout.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->setState(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;

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

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->mState:I
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->access$000(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;)I

    move-result v0

    const/16 v1, 0x100

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSubButtonLayout;->removeAllViews()V

    :cond_0
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
