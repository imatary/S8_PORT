.class Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$1;
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

.field final synthetic val$coords:[F

.field final synthetic val$state:I


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;[FI)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$1;->val$coords:[F

    iput p3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$1;->val$state:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iput-boolean v8, v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->isAnimating:Z

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$1;->val$coords:[F

    const/4 v3, 0x4

    aget v2, v2, v3

    iput v2, v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterX:F

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$1;->val$coords:[F

    const/4 v3, 0x5

    aget v2, v2, v3

    iput v2, v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterY:F

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$1;->val$coords:[F

    const/4 v3, 0x2

    aget v2, v2, v3

    iput v2, v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$1;->val$coords:[F

    const/4 v3, 0x3

    aget v2, v2, v3

    iput v2, v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget-object v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p1:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    invoke-virtual {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->getInversePointerCoords(Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;)[F

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    new-instance v2, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    aget v3, v0, v8

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget v4, v4, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterX:F

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget v4, v4, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    div-float/2addr v3, v4

    float-to-double v4, v3

    aget v3, v0, v9

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget v6, v6, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterY:F

    sub-float/2addr v3, v6

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget v6, v6, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    div-float/2addr v3, v6

    float-to-double v6, v3

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;-><init>(DD)V

    iput-object v2, v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p1Normal:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget-object v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p2:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    invoke-virtual {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->getInversePointerCoords(Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;)[F

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    new-instance v2, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    aget v3, v0, v8

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget v4, v4, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterX:F

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget v4, v4, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    div-float/2addr v3, v4

    float-to-double v4, v3

    aget v3, v0, v9

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget v6, v6, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterY:F

    sub-float/2addr v3, v6

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget v6, v6, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    div-float/2addr v3, v6

    float-to-double v6, v3

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;-><init>(DD)V

    iput-object v2, v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p2Normal:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget-object v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p3:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    invoke-virtual {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->getInversePointerCoords(Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;)[F

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    new-instance v2, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    aget v3, v0, v8

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget v4, v4, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterX:F

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget v4, v4, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    div-float/2addr v3, v4

    float-to-double v4, v3

    aget v3, v0, v9

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget v6, v6, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterY:F

    sub-float/2addr v3, v6

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget v6, v6, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    div-float/2addr v3, v6

    float-to-double v6, v3

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;-><init>(DD)V

    iput-object v2, v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p3Normal:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget-object v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p4:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    invoke-virtual {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->getInversePointerCoords(Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;)[F

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    new-instance v2, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    aget v3, v0, v8

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget v4, v4, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterX:F

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget v4, v4, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    div-float/2addr v3, v4

    float-to-double v4, v3

    aget v3, v0, v9

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget v6, v6, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterY:F

    sub-float/2addr v3, v6

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget v6, v6, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    div-float/2addr v3, v6

    float-to-double v6, v3

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;-><init>(DD)V

    iput-object v2, v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p4Normal:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    invoke-virtual {v1, v9}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->updateNormalBuffer(Z)V

    const/high16 v1, 0x3f800000    # 1.0f

    sput v1, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->GRID_ALPHA:F

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$1;->val$state:I

    iput v2, v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mState:I

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->requestRender()V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iput-boolean v8, v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->isAnimating:Z

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$1;->val$coords:[F

    const/4 v3, 0x4

    aget v2, v2, v3

    iput v2, v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterX:F

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$1;->val$coords:[F

    const/4 v3, 0x5

    aget v2, v2, v3

    iput v2, v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterY:F

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$1;->val$coords:[F

    const/4 v3, 0x2

    aget v2, v2, v3

    iput v2, v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$1;->val$coords:[F

    const/4 v3, 0x3

    aget v2, v2, v3

    iput v2, v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget-object v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p1:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    invoke-virtual {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->getInversePointerCoords(Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;)[F

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    new-instance v2, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    aget v3, v0, v8

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget v4, v4, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterX:F

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget v4, v4, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    div-float/2addr v3, v4

    float-to-double v4, v3

    aget v3, v0, v9

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget v6, v6, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterY:F

    sub-float/2addr v3, v6

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget v6, v6, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    div-float/2addr v3, v6

    float-to-double v6, v3

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;-><init>(DD)V

    iput-object v2, v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p1Normal:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget-object v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p2:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    invoke-virtual {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->getInversePointerCoords(Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;)[F

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    new-instance v2, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    aget v3, v0, v8

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget v4, v4, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterX:F

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget v4, v4, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    div-float/2addr v3, v4

    float-to-double v4, v3

    aget v3, v0, v9

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget v6, v6, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterY:F

    sub-float/2addr v3, v6

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget v6, v6, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    div-float/2addr v3, v6

    float-to-double v6, v3

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;-><init>(DD)V

    iput-object v2, v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p2Normal:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget-object v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p3:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    invoke-virtual {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->getInversePointerCoords(Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;)[F

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    new-instance v2, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    aget v3, v0, v8

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget v4, v4, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterX:F

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget v4, v4, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    div-float/2addr v3, v4

    float-to-double v4, v3

    aget v3, v0, v9

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget v6, v6, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterY:F

    sub-float/2addr v3, v6

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget v6, v6, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    div-float/2addr v3, v6

    float-to-double v6, v3

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;-><init>(DD)V

    iput-object v2, v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p3Normal:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget-object v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p4:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    invoke-virtual {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->getInversePointerCoords(Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;)[F

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    new-instance v2, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    aget v3, v0, v8

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget v4, v4, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterX:F

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget v4, v4, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mWidth:F

    div-float/2addr v3, v4

    float-to-double v4, v3

    aget v3, v0, v9

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget v6, v6, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mCenterY:F

    sub-float/2addr v3, v6

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget v6, v6, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mHeight:F

    div-float/2addr v3, v6

    float-to-double v6, v3

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;-><init>(DD)V

    iput-object v2, v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p4Normal:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    invoke-virtual {v1, v9}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->updateNormalBuffer(Z)V

    const/high16 v1, 0x3f800000    # 1.0f

    sput v1, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->GRID_ALPHA:F

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$1;->val$state:I

    iput v2, v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mState:I

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->requestRender()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->isAnimating:Z

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->requestRender()V

    return-void
.end method
