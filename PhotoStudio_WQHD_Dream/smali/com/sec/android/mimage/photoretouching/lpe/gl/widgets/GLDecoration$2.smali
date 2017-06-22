.class Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$2;
.super Ljava/lang/Object;
.source "GLDecoration.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->setState(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

.field final synthetic val$state:I


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$2;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iput p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$2;->val$state:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$2;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->isAnimating:Z

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$2;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$2;->val$state:I

    iput v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mState:I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$2;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->updatePerspectiveBuffer()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$2;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->updateCornerUIButtons()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$2;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->requestRender()V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$2;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->isAnimating:Z

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$2;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$2;->val$state:I

    iput v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mState:I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$2;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->updatePerspectiveBuffer()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$2;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->updateCornerUIButtons()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$2;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->requestRender()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$2;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->isAnimating:Z

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$2;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->requestRender()V

    return-void
.end method
