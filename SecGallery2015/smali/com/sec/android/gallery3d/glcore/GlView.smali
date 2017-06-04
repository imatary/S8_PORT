.class public Lcom/sec/android/gallery3d/glcore/GlView;
.super Ljava/lang/Object;
.source "GlView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/glcore/GlView$GlReqAttr;
    }
.end annotation


# static fields
.field public static final ALIGN_BOTTOM:I = 0x3

.field public static final ALIGN_CENTER:I = 0x2

.field public static final ALIGN_END:I = 0x3

.field private static final ALIGN_NONE:I = 0x0

.field public static final ALIGN_START:I = 0x1

.field public static final ALIGN_TOP:I = 0x1

.field private static final FLAG_INVISIBLE:I = 0x1

.field private static final INVALID:I = -0x1

.field public static final INVISIBLE:I = 0x1

.field private static final NOT_SPECIFIED:I = 0x0

.field private static final SIZE_SPECIFIED:I = 0x2

.field public static final VISIBLE:I


# instance fields
.field private mChild:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/glcore/GlView;",
            ">;"
        }
    .end annotation
.end field

.field protected mGlObject:Lcom/sec/android/gallery3d/glcore/GlObject;

.field private mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

.field private mHAlign:I

.field private mHFlag:I

.field private mID:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        resolveId = true
    .end annotation
.end field

.field private mMarginBottom:I

.field private mMarginEnd:I

.field private mMarginStart:I

.field private mMarginTop:I

.field private mMotionTarget:Lcom/sec/android/gallery3d/glcore/GlView;

.field private mParent:Lcom/sec/android/gallery3d/glcore/GlView;

.field private mRatio:F

.field protected final mRect:Lcom/sec/android/gallery3d/glcore/GlRect;

.field private final mReq:Lcom/sec/android/gallery3d/glcore/GlView$GlReqAttr;

.field private mTextChildCount:I

.field private mVAlign:I

.field private mVFlag:I

.field private mViewFlags:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlView;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iput-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlView;->mGlObject:Lcom/sec/android/gallery3d/glcore/GlObject;

    iput v1, p0, Lcom/sec/android/gallery3d/glcore/GlView;->mViewFlags:I

    iput v1, p0, Lcom/sec/android/gallery3d/glcore/GlView;->mHFlag:I

    iput v1, p0, Lcom/sec/android/gallery3d/glcore/GlView;->mVFlag:I

    iput v1, p0, Lcom/sec/android/gallery3d/glcore/GlView;->mHAlign:I

    iput v1, p0, Lcom/sec/android/gallery3d/glcore/GlView;->mVAlign:I

    iput v1, p0, Lcom/sec/android/gallery3d/glcore/GlView;->mMarginStart:I

    iput v1, p0, Lcom/sec/android/gallery3d/glcore/GlView;->mMarginEnd:I

    iput v1, p0, Lcom/sec/android/gallery3d/glcore/GlView;->mMarginTop:I

    iput v1, p0, Lcom/sec/android/gallery3d/glcore/GlView;->mMarginBottom:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/gallery3d/glcore/GlView;->mID:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/sec/android/gallery3d/glcore/GlView;->mRatio:F

    iput v1, p0, Lcom/sec/android/gallery3d/glcore/GlView;->mTextChildCount:I

    new-instance v0, Lcom/sec/android/gallery3d/glcore/GlRect;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/glcore/GlRect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlView;->mRect:Lcom/sec/android/gallery3d/glcore/GlRect;

    new-instance v0, Lcom/sec/android/gallery3d/glcore/GlView$GlReqAttr;

    invoke-direct {v0, p0, v2}, Lcom/sec/android/gallery3d/glcore/GlView$GlReqAttr;-><init>(Lcom/sec/android/gallery3d/glcore/GlView;Lcom/sec/android/gallery3d/glcore/GlView$1;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlView;->mReq:Lcom/sec/android/gallery3d/glcore/GlView$GlReqAttr;

    return-void
.end method

.method private dispatchTouchEvent(Landroid/view/MotionEvent;IILcom/sec/android/gallery3d/glcore/GlView;Z)Z
    .locals 9

    iget-object v0, p4, Lcom/sec/android/gallery3d/glcore/GlView;->mRect:Lcom/sec/android/gallery3d/glcore/GlRect;

    new-instance v2, Landroid/graphics/Rect;

    iget v4, v0, Lcom/sec/android/gallery3d/glcore/GlRect;->mLeft:I

    iget v5, v0, Lcom/sec/android/gallery3d/glcore/GlRect;->mTop:I

    iget v6, v0, Lcom/sec/android/gallery3d/glcore/GlRect;->mLeft:I

    iget v7, v0, Lcom/sec/android/gallery3d/glcore/GlRect;->mWidth:I

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, -0x1

    iget v7, v0, Lcom/sec/android/gallery3d/glcore/GlRect;->mTop:I

    iget v8, v0, Lcom/sec/android/gallery3d/glcore/GlRect;->mHeight:I

    add-int/2addr v7, v8

    add-int/lit8 v7, v7, -0x1

    invoke-direct {v2, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    iget v1, v2, Landroid/graphics/Rect;->left:I

    iget v3, v2, Landroid/graphics/Rect;->top:I

    if-eqz p5, :cond_0

    invoke-virtual {v2, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    neg-int v4, v1

    int-to-float v4, v4

    neg-int v5, v3

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    invoke-virtual {p4, p1}, Lcom/sec/android/gallery3d/glcore/GlView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_1

    int-to-float v4, v1

    int-to-float v5, v3

    invoke-virtual {p1, v4, v5}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_1
    int-to-float v4, v1

    int-to-float v5, v3

    invoke-virtual {p1, v4, v5}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private getParent()Lcom/sec/android/gallery3d/glcore/GlView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlView;->mParent:Lcom/sec/android/gallery3d/glcore/GlView;

    return-object v0
.end method

.method private hasTextChild()Z
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/glcore/GlView;->mTextChildCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onTouch()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private removeOneChild(Lcom/sec/android/gallery3d/glcore/GlView;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlView;->mMotionTarget:Lcom/sec/android/gallery3d/glcore/GlView;

    if-ne v0, p1, :cond_0

    :cond_0
    const/4 v0, -0x1

    invoke-direct {p1, v0}, Lcom/sec/android/gallery3d/glcore/GlView;->setId(I)V

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/sec/android/gallery3d/glcore/GlView;->setParent(Lcom/sec/android/gallery3d/glcore/GlView;)V

    instance-of v0, p1, Lcom/sec/android/gallery3d/glcore/GlTextView;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/sec/android/gallery3d/glcore/GlView;->mTextChildCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/android/gallery3d/glcore/GlView;->mTextChildCount:I

    :cond_1
    return-void
.end method

.method private renderChild(Landroid/graphics/Canvas;Lcom/sec/android/gallery3d/glcore/GlView;)V
    .locals 1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/glcore/GlView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2, p1}, Lcom/sec/android/gallery3d/glcore/GlView;->render(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method private setId(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/gallery3d/glcore/GlView;->mID:I

    return-void
.end method

.method private setParent(Lcom/sec/android/gallery3d/glcore/GlView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/glcore/GlView;->mParent:Lcom/sec/android/gallery3d/glcore/GlView;

    return-void
.end method


# virtual methods
.method public addChild(Lcom/sec/android/gallery3d/glcore/GlView;)I
    .locals 2

    const/4 v0, 0x2

    invoke-direct {p1}, Lcom/sec/android/gallery3d/glcore/GlView;->getParent()Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :cond_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlView;->mChild:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlView;->mChild:Ljava/util/ArrayList;

    :cond_1
    instance-of v1, p1, Lcom/sec/android/gallery3d/glcore/GlTextView;

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/sec/android/gallery3d/glcore/GlView;->mTextChildCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sec/android/gallery3d/glcore/GlView;->mTextChildCount:I

    :cond_2
    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlView;->mChild:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlView;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iput-object v1, p1, Lcom/sec/android/gallery3d/glcore/GlView;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-direct {p1, p0}, Lcom/sec/android/gallery3d/glcore/GlView;->setParent(Lcom/sec/android/gallery3d/glcore/GlView;)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlView;->mGlObject:Lcom/sec/android/gallery3d/glcore/GlObject;

    iput-object v1, p1, Lcom/sec/android/gallery3d/glcore/GlView;->mGlObject:Lcom/sec/android/gallery3d/glcore/GlObject;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/glcore/GlView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v1

    if-eqz v1, :cond_3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    invoke-direct {p1, v0}, Lcom/sec/android/gallery3d/glcore/GlView;->setId(I)V

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/glcore/GlView;->getId()I

    move-result v1

    return v1
.end method

.method public addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V
    .locals 3

    invoke-direct {p1}, Lcom/sec/android/gallery3d/glcore/GlView;->getParent()Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlView;->mChild:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlView;->mChild:Ljava/util/ArrayList;

    :cond_1
    instance-of v0, p1, Lcom/sec/android/gallery3d/glcore/GlTextView;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/sec/android/gallery3d/glcore/GlView;->mTextChildCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/gallery3d/glcore/GlView;->mTextChildCount:I

    :cond_2
    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlView;->mChild:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlView;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iput-object v0, p1, Lcom/sec/android/gallery3d/glcore/GlView;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-direct {p1, p0}, Lcom/sec/android/gallery3d/glcore/GlView;->setParent(Lcom/sec/android/gallery3d/glcore/GlView;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlView;->mGlObject:Lcom/sec/android/gallery3d/glcore/GlObject;

    iput-object v0, p1, Lcom/sec/android/gallery3d/glcore/GlView;->mGlObject:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-virtual {p0, p2}, Lcom/sec/android/gallery3d/glcore/GlView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "addChild with ID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is already used!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-direct {p1, p2}, Lcom/sec/android/gallery3d/glcore/GlView;->setId(I)V

    return-void
.end method

.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v2, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v3, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlView;->mMotionTarget:Lcom/sec/android/gallery3d/glcore/GlView;

    if-eqz v0, :cond_0

    if-nez v10, :cond_2

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    iget-object v4, p0, Lcom/sec/android/gallery3d/glcore/GlView;->mMotionTarget:Lcom/sec/android/gallery3d/glcore/GlView;

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/gallery3d/glcore/GlView;->dispatchTouchEvent(Landroid/view/MotionEvent;IILcom/sec/android/gallery3d/glcore/GlView;Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlView;->mMotionTarget:Lcom/sec/android/gallery3d/glcore/GlView;

    :cond_0
    if-nez v10, :cond_6

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/glcore/GlView;->getChildCount()I

    move-result v0

    add-int/lit8 v11, v0, -0x1

    :goto_0
    if-ltz v11, :cond_6

    invoke-virtual {p0, v11}, Lcom/sec/android/gallery3d/glcore/GlView;->getChild(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/glcore/GlView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_5

    :cond_1
    add-int/lit8 v11, v11, -0x1

    goto :goto_0

    :cond_2
    iget-object v8, p0, Lcom/sec/android/gallery3d/glcore/GlView;->mMotionTarget:Lcom/sec/android/gallery3d/glcore/GlView;

    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, p1

    move v6, v2

    move v7, v3

    invoke-direct/range {v4 .. v9}, Lcom/sec/android/gallery3d/glcore/GlView;->dispatchTouchEvent(Landroid/view/MotionEvent;IILcom/sec/android/gallery3d/glcore/GlView;Z)Z

    const/4 v0, 0x3

    if-eq v10, v0, :cond_3

    const/4 v0, 0x1

    if-ne v10, v0, :cond_4

    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlView;->mMotionTarget:Lcom/sec/android/gallery3d/glcore/GlView;

    :cond_4
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_5
    const/4 v9, 0x1

    move-object v4, p0

    move-object v5, p1

    move v6, v2

    move v7, v3

    invoke-direct/range {v4 .. v9}, Lcom/sec/android/gallery3d/glcore/GlView;->dispatchTouchEvent(Landroid/view/MotionEvent;IILcom/sec/android/gallery3d/glcore/GlView;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object v8, p0, Lcom/sec/android/gallery3d/glcore/GlView;->mMotionTarget:Lcom/sec/android/gallery3d/glcore/GlView;

    const/4 v0, 0x1

    goto :goto_1

    :cond_6
    invoke-direct {p0}, Lcom/sec/android/gallery3d/glcore/GlView;->onTouch()Z

    move-result v0

    goto :goto_1
.end method

.method public findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;
    .locals 7

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlView;->mChild:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_0
    move-object v1, v5

    :cond_1
    :goto_0
    return-object v1

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_3

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glcore/GlView;->getId()I

    move-result v6

    if-eq v6, p1, :cond_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    :goto_2
    if-ge v4, v2, :cond_5

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-virtual {v1, p1}, Lcom/sec/android/gallery3d/glcore/GlView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v3

    if-eqz v3, :cond_4

    move-object v1, v3

    goto :goto_0

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    move-object v1, v5

    goto :goto_0
.end method

.method public getChild(I)Lcom/sec/android/gallery3d/glcore/GlView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlView;->mChild:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlView;->mChild:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlView;->mChild:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/glcore/GlView;

    goto :goto_0
.end method

.method public getChildCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlView;->mChild:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlView;->mChild:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getHeight()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlView;->mReq:Lcom/sec/android/gallery3d/glcore/GlView$GlReqAttr;

    iget-boolean v0, v0, Lcom/sec/android/gallery3d/glcore/GlView$GlReqAttr;->mSize:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlView;->mReq:Lcom/sec/android/gallery3d/glcore/GlView$GlReqAttr;

    iget v0, v0, Lcom/sec/android/gallery3d/glcore/GlView$GlReqAttr;->mH:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlView;->mRect:Lcom/sec/android/gallery3d/glcore/GlRect;

    iget v0, v0, Lcom/sec/android/gallery3d/glcore/GlRect;->mHeight:I

    goto :goto_0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/glcore/GlView;->mID:I

    return v0
.end method

.method getRoot()Lcom/sec/android/gallery3d/glcore/GlView;
    .locals 2

    move-object v0, p0

    :goto_0
    invoke-direct {v0}, Lcom/sec/android/gallery3d/glcore/GlView;->getParent()Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-direct {v0}, Lcom/sec/android/gallery3d/glcore/GlView;->getParent()Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getVisibility()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/glcore/GlView;->mViewFlags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getWidth()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlView;->mReq:Lcom/sec/android/gallery3d/glcore/GlView$GlReqAttr;

    iget-boolean v0, v0, Lcom/sec/android/gallery3d/glcore/GlView$GlReqAttr;->mSize:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlView;->mReq:Lcom/sec/android/gallery3d/glcore/GlView$GlReqAttr;

    iget v0, v0, Lcom/sec/android/gallery3d/glcore/GlView$GlReqAttr;->mW:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlView;->mRect:Lcom/sec/android/gallery3d/glcore/GlRect;

    iget v0, v0, Lcom/sec/android/gallery3d/glcore/GlRect;->mWidth:I

    goto :goto_0
.end method

.method public invalidate()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlView;->mGlObject:Lcom/sec/android/gallery3d/glcore/GlObject;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlView;->mGlObject:Lcom/sec/android/gallery3d/glcore/GlObject;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sec/android/gallery3d/glcore/GlObject;->mNeedRender:Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlView;->mGlObject:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlObject;->invalidate()V

    goto :goto_0
.end method

.method public layout(II)V
    .locals 19

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/gallery3d/glcore/GlView;->mReq:Lcom/sec/android/gallery3d/glcore/GlView$GlReqAttr;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/glcore/GlView;->mRect:Lcom/sec/android/gallery3d/glcore/GlRect;

    monitor-enter v4

    :try_start_0
    iget-boolean v0, v4, Lcom/sec/android/gallery3d/glcore/GlView$GlReqAttr;->mSize:Z

    move/from16 v17, v0

    if-eqz v17, :cond_0

    const/16 v17, 0x0

    move/from16 v0, v17

    iput-boolean v0, v4, Lcom/sec/android/gallery3d/glcore/GlView$GlReqAttr;->mSize:Z

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/gallery3d/glcore/GlView;->mHFlag:I

    move/from16 v17, v0

    and-int/lit8 v17, v17, 0x2

    if-lez v17, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/gallery3d/glcore/GlView;->mRatio:F

    move/from16 v17, v0

    iget v0, v4, Lcom/sec/android/gallery3d/glcore/GlView$GlReqAttr;->mW:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v16, v0

    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/gallery3d/glcore/GlView;->mVFlag:I

    move/from16 v17, v0

    and-int/lit8 v17, v17, 0x2

    if-lez v17, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/gallery3d/glcore/GlView;->mRatio:F

    move/from16 v17, v0

    iget v0, v4, Lcom/sec/android/gallery3d/glcore/GlView$GlReqAttr;->mH:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v5, v0

    :goto_1
    move/from16 v0, v16

    invoke-virtual {v3, v0, v5}, Lcom/sec/android/gallery3d/glcore/GlRect;->setSize(II)V

    :cond_0
    iget-boolean v0, v4, Lcom/sec/android/gallery3d/glcore/GlView$GlReqAttr;->mPos:Z

    move/from16 v17, v0

    if-eqz v17, :cond_1

    const/16 v17, 0x0

    move/from16 v0, v17

    iput-boolean v0, v4, Lcom/sec/android/gallery3d/glcore/GlView$GlReqAttr;->mPos:Z

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/gallery3d/glcore/GlView;->mRatio:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/gallery3d/glcore/GlView;->mMarginStart:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v9, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/gallery3d/glcore/GlView;->mRatio:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/gallery3d/glcore/GlView;->mMarginEnd:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v8, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/gallery3d/glcore/GlView;->mRatio:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/gallery3d/glcore/GlView;->mMarginTop:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v10, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/gallery3d/glcore/GlView;->mRatio:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/gallery3d/glcore/GlView;->mMarginBottom:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v7, v0

    sub-int v17, p1, v9

    sub-int v15, v17, v8

    sub-int v17, p2, v10

    sub-int v14, v17, v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/gallery3d/glcore/GlView;->mHAlign:I

    move/from16 v17, v0

    if-eqz v17, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/gallery3d/glcore/GlView;->mHAlign:I

    move/from16 v17, v0

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    add-int v17, v9, v15

    iget v0, v3, Lcom/sec/android/gallery3d/glcore/GlRect;->mWidth:I

    move/from16 v18, v0

    sub-int v12, v17, v18

    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/gallery3d/glcore/GlView;->mVAlign:I

    move/from16 v17, v0

    if-eqz v17, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/gallery3d/glcore/GlView;->mVAlign:I

    move/from16 v17, v0

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    add-int v17, v10, v14

    iget v0, v3, Lcom/sec/android/gallery3d/glcore/GlRect;->mHeight:I

    move/from16 v18, v0

    sub-int v13, v17, v18

    :goto_3
    invoke-virtual {v3, v12, v13}, Lcom/sec/android/gallery3d/glcore/GlRect;->setPos(II)V

    :cond_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/glcore/GlView;->mChild:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    if-nez v17, :cond_b

    const/4 v11, 0x0

    :goto_4
    if-ge v6, v11, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/glcore/GlView;->mChild:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-direct {v2}, Lcom/sec/android/gallery3d/glcore/GlView;->hasTextChild()Z

    move-result v17

    if-nez v17, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/gallery3d/glcore/GlView;->mRatio:F

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v2, Lcom/sec/android/gallery3d/glcore/GlView;->mRatio:F

    :cond_2
    iget v0, v3, Lcom/sec/android/gallery3d/glcore/GlRect;->mWidth:I

    move/from16 v17, v0

    iget v0, v3, Lcom/sec/android/gallery3d/glcore/GlRect;->mHeight:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Lcom/sec/android/gallery3d/glcore/GlView;->layout(II)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_3
    move/from16 v16, p1

    goto/16 :goto_0

    :cond_4
    move/from16 v5, p2

    goto/16 :goto_1

    :cond_5
    :try_start_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/gallery3d/glcore/GlView;->mHAlign:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    iget v0, v3, Lcom/sec/android/gallery3d/glcore/GlRect;->mWidth:I

    move/from16 v17, v0

    sub-int v17, v15, v17

    div-int/lit8 v17, v17, 0x2

    add-int v12, v9, v17

    goto :goto_2

    :cond_6
    move v12, v9

    goto :goto_2

    :cond_7
    move v12, v9

    goto/16 :goto_2

    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/gallery3d/glcore/GlView;->mVAlign:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_9

    iget v0, v3, Lcom/sec/android/gallery3d/glcore/GlRect;->mHeight:I

    move/from16 v17, v0

    sub-int v17, v14, v17

    div-int/lit8 v17, v17, 0x2

    add-int v13, v10, v17

    goto :goto_3

    :cond_9
    move v13, v10

    goto :goto_3

    :cond_a
    move v13, v10

    goto/16 :goto_3

    :catchall_0
    move-exception v17

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v17

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/glcore/GlView;->mChild:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v11

    goto/16 :goto_4

    :cond_c
    return-void
.end method

.method onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method public removeAllChilds()V
    .locals 3

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlView;->mChild:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlView;->mChild:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-direct {p0, v2}, Lcom/sec/android/gallery3d/glcore/GlView;->removeOneChild(Lcom/sec/android/gallery3d/glcore/GlView;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlView;->mChild:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public removeChild(Lcom/sec/android/gallery3d/glcore/GlView;)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlView;->mChild:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlView;->mChild:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/glcore/GlView;->removeOneChild(Lcom/sec/android/gallery3d/glcore/GlView;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method render(Landroid/graphics/Canvas;)V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlView;->mRect:Lcom/sec/android/gallery3d/glcore/GlRect;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v3, v0, Lcom/sec/android/gallery3d/glcore/GlRect;->mLeft:I

    int-to-float v3, v3

    iget v4, v0, Lcom/sec/android/gallery3d/glcore/GlRect;->mTop:I

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    iget v3, v0, Lcom/sec/android/gallery3d/glcore/GlRect;->mWidth:I

    iget v4, v0, Lcom/sec/android/gallery3d/glcore/GlRect;->mHeight:I

    invoke-virtual {p1, v5, v5, v3, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    invoke-virtual {p0, p1}, Lcom/sec/android/gallery3d/glcore/GlView;->onDraw(Landroid/graphics/Canvas;)V

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/glcore/GlView;->getChildCount()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/sec/android/gallery3d/glcore/GlView;->getChild(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lcom/sec/android/gallery3d/glcore/GlView;->renderChild(Landroid/graphics/Canvas;Lcom/sec/android/gallery3d/glcore/GlView;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public setAlign(II)V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlView;->mReq:Lcom/sec/android/gallery3d/glcore/GlView$GlReqAttr;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v0, :cond_0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    iput p1, p0, Lcom/sec/android/gallery3d/glcore/GlView;->mHAlign:I

    :goto_0
    iput p2, p0, Lcom/sec/android/gallery3d/glcore/GlView;->mVAlign:I

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlView;->mReq:Lcom/sec/android/gallery3d/glcore/GlView$GlReqAttr;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/sec/android/gallery3d/glcore/GlView$GlReqAttr;->mPos:Z

    monitor-exit v1

    return-void

    :pswitch_1
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/gallery3d/glcore/GlView;->mHAlign:I

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :pswitch_2
    const/4 v0, 0x1

    :try_start_1
    iput v0, p0, Lcom/sec/android/gallery3d/glcore/GlView;->mHAlign:I

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/sec/android/gallery3d/glcore/GlView;->mHAlign:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setChildVisibility(I)V
    .locals 5

    const/4 v3, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/glcore/GlView;->getChildCount()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_2

    iget-object v4, p0, Lcom/sec/android/gallery3d/glcore/GlView;->mChild:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlView;->getVisibility()I

    move-result v4

    if-ne p1, v4, :cond_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    iget v4, v0, Lcom/sec/android/gallery3d/glcore/GlView;->mViewFlags:I

    and-int/lit8 v4, v4, -0x2

    iput v4, v0, Lcom/sec/android/gallery3d/glcore/GlView;->mViewFlags:I

    :goto_2
    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    iget v4, v0, Lcom/sec/android/gallery3d/glcore/GlView;->mViewFlags:I

    or-int/lit8 v4, v4, 0x1

    iput v4, v0, Lcom/sec/android/gallery3d/glcore/GlView;->mViewFlags:I

    goto :goto_2

    :cond_2
    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/glcore/GlView;->invalidate()V

    :cond_3
    return-void
.end method

.method public setChildVisibility(ILjava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/glcore/GlView;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/glcore/GlView;->getChildCount()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_3

    iget-object v4, p0, Lcom/sec/android/gallery3d/glcore/GlView;->mChild:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlView;->getVisibility()I

    move-result v4

    if-ne p1, v4, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    iget v4, v0, Lcom/sec/android/gallery3d/glcore/GlView;->mViewFlags:I

    and-int/lit8 v4, v4, -0x2

    iput v4, v0, Lcom/sec/android/gallery3d/glcore/GlView;->mViewFlags:I

    :goto_2
    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    iget v4, v0, Lcom/sec/android/gallery3d/glcore/GlView;->mViewFlags:I

    or-int/lit8 v4, v4, 0x1

    iput v4, v0, Lcom/sec/android/gallery3d/glcore/GlView;->mViewFlags:I

    goto :goto_2

    :cond_3
    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/glcore/GlView;->invalidate()V

    :cond_4
    return-void
.end method

.method public setMargin(IIII)V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlView;->mReq:Lcom/sec/android/gallery3d/glcore/GlView$GlReqAttr;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v0, :cond_0

    iput p3, p0, Lcom/sec/android/gallery3d/glcore/GlView;->mMarginStart:I

    iput p1, p0, Lcom/sec/android/gallery3d/glcore/GlView;->mMarginEnd:I

    :goto_0
    iput p2, p0, Lcom/sec/android/gallery3d/glcore/GlView;->mMarginTop:I

    iput p4, p0, Lcom/sec/android/gallery3d/glcore/GlView;->mMarginBottom:I

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlView;->mReq:Lcom/sec/android/gallery3d/glcore/GlView$GlReqAttr;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/sec/android/gallery3d/glcore/GlView$GlReqAttr;->mPos:Z

    monitor-exit v1

    return-void

    :cond_0
    iput p1, p0, Lcom/sec/android/gallery3d/glcore/GlView;->mMarginStart:I

    iput p3, p0, Lcom/sec/android/gallery3d/glcore/GlView;->mMarginEnd:I

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setObject(Lcom/sec/android/gallery3d/glcore/GlObject;)V
    .locals 5

    const/4 v4, 0x1

    iput-object p1, p0, Lcom/sec/android/gallery3d/glcore/GlView;->mGlObject:Lcom/sec/android/gallery3d/glcore/GlObject;

    iget-object v3, p0, Lcom/sec/android/gallery3d/glcore/GlView;->mReq:Lcom/sec/android/gallery3d/glcore/GlView$GlReqAttr;

    iput-boolean v4, v3, Lcom/sec/android/gallery3d/glcore/GlView$GlReqAttr;->mPos:Z

    iget-object v3, p0, Lcom/sec/android/gallery3d/glcore/GlView;->mReq:Lcom/sec/android/gallery3d/glcore/GlView$GlReqAttr;

    iput-boolean v4, v3, Lcom/sec/android/gallery3d/glcore/GlView$GlReqAttr;->mSize:Z

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/glcore/GlView;->getChildCount()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/sec/android/gallery3d/glcore/GlView;->getChild(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/glcore/GlView;->setObject(Lcom/sec/android/gallery3d/glcore/GlObject;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setScaleRatio(F)V
    .locals 7

    iget-object v5, p0, Lcom/sec/android/gallery3d/glcore/GlView;->mReq:Lcom/sec/android/gallery3d/glcore/GlView$GlReqAttr;

    monitor-enter v5

    :try_start_0
    iput p1, p0, Lcom/sec/android/gallery3d/glcore/GlView;->mRatio:F

    iget-object v4, p0, Lcom/sec/android/gallery3d/glcore/GlView;->mReq:Lcom/sec/android/gallery3d/glcore/GlView$GlReqAttr;

    const/4 v6, 0x1

    iput-boolean v6, v4, Lcom/sec/android/gallery3d/glcore/GlView$GlReqAttr;->mSize:Z

    iget-object v4, p0, Lcom/sec/android/gallery3d/glcore/GlView;->mReq:Lcom/sec/android/gallery3d/glcore/GlView$GlReqAttr;

    const/4 v6, 0x1

    iput-boolean v6, v4, Lcom/sec/android/gallery3d/glcore/GlView$GlReqAttr;->mPos:Z

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v4, p0, Lcom/sec/android/gallery3d/glcore/GlView;->mChild:Ljava/util/ArrayList;

    if-nez v4, :cond_1

    :cond_0
    return-void

    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    :cond_1
    iget-object v4, p0, Lcom/sec/android/gallery3d/glcore/GlView;->mChild:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v4, p0, Lcom/sec/android/gallery3d/glcore/GlView;->mChild:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/glcore/GlView;

    iget-object v3, v0, Lcom/sec/android/gallery3d/glcore/GlView;->mReq:Lcom/sec/android/gallery3d/glcore/GlView$GlReqAttr;

    iget-object v5, p0, Lcom/sec/android/gallery3d/glcore/GlView;->mReq:Lcom/sec/android/gallery3d/glcore/GlView$GlReqAttr;

    monitor-enter v5

    :try_start_2
    invoke-direct {v0}, Lcom/sec/android/gallery3d/glcore/GlView;->hasTextChild()Z

    move-result v4

    if-nez v4, :cond_2

    iput p1, v0, Lcom/sec/android/gallery3d/glcore/GlView;->mRatio:F

    :cond_2
    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/sec/android/gallery3d/glcore/GlView$GlReqAttr;->mSize:Z

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/sec/android/gallery3d/glcore/GlView$GlReqAttr;->mPos:Z

    monitor-exit v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v4
.end method

.method public setSize(II)V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlView;->mReq:Lcom/sec/android/gallery3d/glcore/GlView$GlReqAttr;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlView;->mReq:Lcom/sec/android/gallery3d/glcore/GlView$GlReqAttr;

    iput p1, v0, Lcom/sec/android/gallery3d/glcore/GlView$GlReqAttr;->mW:I

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlView;->mReq:Lcom/sec/android/gallery3d/glcore/GlView$GlReqAttr;

    iput p2, v0, Lcom/sec/android/gallery3d/glcore/GlView$GlReqAttr;->mH:I

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlView;->mReq:Lcom/sec/android/gallery3d/glcore/GlView$GlReqAttr;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/sec/android/gallery3d/glcore/GlView$GlReqAttr;->mSize:Z

    iget v0, p0, Lcom/sec/android/gallery3d/glcore/GlView;->mVFlag:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sec/android/gallery3d/glcore/GlView;->mVFlag:I

    iget v0, p0, Lcom/sec/android/gallery3d/glcore/GlView;->mHFlag:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sec/android/gallery3d/glcore/GlView;->mHFlag:I

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setVisibility(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/glcore/GlView;->getVisibility()I

    move-result v0

    if-ne p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_1

    iget v0, p0, Lcom/sec/android/gallery3d/glcore/GlView;->mViewFlags:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/sec/android/gallery3d/glcore/GlView;->mViewFlags:I

    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/glcore/GlView;->invalidate()V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/sec/android/gallery3d/glcore/GlView;->mViewFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/gallery3d/glcore/GlView;->mViewFlags:I

    goto :goto_1
.end method
