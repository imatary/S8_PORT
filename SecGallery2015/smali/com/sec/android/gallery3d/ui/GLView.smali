.class public Lcom/sec/android/gallery3d/ui/GLView;
.super Ljava/lang/Object;
.source "GLView.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "WrongCall"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/ui/GLView$OnClickListener;
    }
.end annotation


# static fields
.field private static final FLAG_INVISIBLE:I = 0x1

.field private static final FLAG_LAYOUT_REQUESTED:I = 0x4

.field private static final FLAG_SET_MEASURED_SIZE:I = 0x2

.field public static final INVISIBLE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "GLView"

.field public static final VISIBLE:I


# instance fields
.field private mAnimation:Lcom/sec/android/gallery3d/anim/CanvasAnimation;

.field private mBackgroundColor:[F

.field final mBounds:Landroid/graphics/Rect;

.field final mBoundsCenter:Landroid/graphics/Rect;

.field private mComponents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/ui/GLView;",
            ">;"
        }
    .end annotation
.end field

.field mGLViewAccessibility:Lcom/sec/samsung/gallery/view/accessibility/GLViewAccessibility;

.field mGLViewAccessibilityListener:Lcom/sec/samsung/gallery/view/accessibility/GLViewAccessibility$AccessibilityNodeInfoListener;

.field private mLastHeightSpec:I

.field private mLastWidthSpec:I

.field private mMeasuredHeight:I

.field private mMotionTarget:Lcom/sec/android/gallery3d/ui/GLView;

.field final mPaddings:Landroid/graphics/Rect;

.field mParent:Lcom/sec/android/gallery3d/ui/GLView;

.field private mRoot:Lcom/sec/android/gallery3d/ui/GLRoot;

.field mScrollX:I

.field mScrollY:I

.field private mViewFlags:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/GLView;->mBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/GLView;->mBoundsCenter:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/GLView;->mPaddings:Landroid/graphics/Rect;

    iput v1, p0, Lcom/sec/android/gallery3d/ui/GLView;->mViewFlags:I

    iput v1, p0, Lcom/sec/android/gallery3d/ui/GLView;->mMeasuredHeight:I

    iput v2, p0, Lcom/sec/android/gallery3d/ui/GLView;->mLastWidthSpec:I

    iput v2, p0, Lcom/sec/android/gallery3d/ui/GLView;->mLastHeightSpec:I

    iput v1, p0, Lcom/sec/android/gallery3d/ui/GLView;->mScrollY:I

    iput v1, p0, Lcom/sec/android/gallery3d/ui/GLView;->mScrollX:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/GLView;->mGLViewAccessibility:Lcom/sec/samsung/gallery/view/accessibility/GLViewAccessibility;

    return-void
.end method

.method private dispatchTouchEvent(Landroid/view/MotionEvent;IILcom/sec/android/gallery3d/ui/GLView;Z)Z
    .locals 5

    instance-of v3, p4, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;

    if-eqz v3, :cond_1

    iget-object v1, p4, Lcom/sec/android/gallery3d/ui/GLView;->mBoundsCenter:Landroid/graphics/Rect;

    :goto_0
    iget v0, v1, Landroid/graphics/Rect;->left:I

    iget v2, v1, Landroid/graphics/Rect;->top:I

    if-eqz p5, :cond_0

    invoke-virtual {v1, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_0
    neg-int v3, v0

    int-to-float v3, v3

    neg-int v4, v2

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    invoke-virtual {p4, p1}, Lcom/sec/android/gallery3d/ui/GLView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_2

    int-to-float v3, v0

    int-to-float v4, v2

    invoke-virtual {p1, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    const/4 v3, 0x1

    :goto_1
    return v3

    :cond_1
    iget-object v1, p4, Lcom/sec/android/gallery3d/ui/GLView;->mBounds:Landroid/graphics/Rect;

    goto :goto_0

    :cond_2
    int-to-float v3, v0

    int-to-float v4, v2

    invoke-virtual {p1, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private getComponent(I)Lcom/sec/android/gallery3d/ui/GLView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/GLView;->mComponents:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/GLView;->mComponents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/ui/GLView;

    return-object v0
.end method

.method private getComponentCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/GLView;->mComponents:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/GLView;->mComponents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method private onAttachToRoot(Lcom/sec/android/gallery3d/ui/GLRoot;)V
    .locals 3

    iput-object p1, p0, Lcom/sec/android/gallery3d/ui/GLView;->mRoot:Lcom/sec/android/gallery3d/ui/GLRoot;

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/GLView;->getComponentCount()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-direct {p0, v0}, Lcom/sec/android/gallery3d/ui/GLView;->getComponent(I)Lcom/sec/android/gallery3d/ui/GLView;

    move-result-object v2

    invoke-direct {v2, p1}, Lcom/sec/android/gallery3d/ui/GLView;->onAttachToRoot(Lcom/sec/android/gallery3d/ui/GLRoot;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private onDetachFromRoot()V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/GLView;->getComponentCount()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-direct {p0, v0}, Lcom/sec/android/gallery3d/ui/GLView;->getComponent(I)Lcom/sec/android/gallery3d/ui/GLView;

    move-result-object v2

    invoke-direct {v2}, Lcom/sec/android/gallery3d/ui/GLView;->onDetachFromRoot()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/gallery3d/ui/GLView;->mRoot:Lcom/sec/android/gallery3d/ui/GLRoot;

    return-void
.end method

.method private removeOneComponent(Lcom/sec/android/gallery3d/ui/GLView;)V
    .locals 9

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/GLView;->mMotionTarget:Lcom/sec/android/gallery3d/ui/GLView;

    if-ne v2, p1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v4, 0x3

    const/4 v7, 0x0

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/sec/android/gallery3d/ui/GLView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    :cond_0
    invoke-direct {p1}, Lcom/sec/android/gallery3d/ui/GLView;->onDetachFromRoot()V

    const/4 v2, 0x0

    iput-object v2, p1, Lcom/sec/android/gallery3d/ui/GLView;->mParent:Lcom/sec/android/gallery3d/ui/GLView;

    return-void
.end method

.method private setBounds(IIII)Z
    .locals 4

    sub-int v1, p3, p1

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/GLView;->mBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/GLView;->mBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    if-ne v1, v2, :cond_0

    sub-int v1, p4, p2

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/GLView;->mBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/GLView;->mBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    if-eq v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/GLView;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addComponent(Lcom/sec/android/gallery3d/ui/GLView;)V
    .locals 1

    iget-object v0, p1, Lcom/sec/android/gallery3d/ui/GLView;->mParent:Lcom/sec/android/gallery3d/ui/GLView;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/GLView;->mComponents:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/GLView;->mComponents:Ljava/util/ArrayList;

    :cond_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/GLView;->mComponents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object p0, p1, Lcom/sec/android/gallery3d/ui/GLView;->mParent:Lcom/sec/android/gallery3d/ui/GLView;

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/GLView;->mRoot:Lcom/sec/android/gallery3d/ui/GLRoot;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/GLView;->mRoot:Lcom/sec/android/gallery3d/ui/GLRoot;

    invoke-direct {p1, v0}, Lcom/sec/android/gallery3d/ui/GLView;->onAttachToRoot(Lcom/sec/android/gallery3d/ui/GLRoot;)V

    :cond_2
    return-void
.end method

.method public attachToRoot(Lcom/sec/android/gallery3d/ui/GLRoot;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/GLView;->mParent:Lcom/sec/android/gallery3d/ui/GLView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/GLView;->mRoot:Lcom/sec/android/gallery3d/ui/GLRoot;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/sec/android/gallery3d/common/Utils;->assertTrue(Z)V

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/ui/GLView;->onAttachToRoot(Lcom/sec/android/gallery3d/ui/GLRoot;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bounds()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/GLView;->mBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public createAccessibilityNodeInfo(ILcom/sec/android/gallery3d/glcore/LibGLRootView;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 5

    invoke-static {p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/GLView;->getComponentCount()I

    move-result v3

    :goto_0
    if-ge v1, v3, :cond_1

    invoke-direct {p0, v1}, Lcom/sec/android/gallery3d/ui/GLView;->getComponent(I)Lcom/sec/android/gallery3d/ui/GLView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v4, v0, Lcom/sec/android/gallery3d/ui/GLView;->mGLViewAccessibility:Lcom/sec/samsung/gallery/view/accessibility/GLViewAccessibility;

    if-eqz v4, :cond_0

    iget-object v4, v0, Lcom/sec/android/gallery3d/ui/GLView;->mGLViewAccessibility:Lcom/sec/samsung/gallery/view/accessibility/GLViewAccessibility;

    invoke-virtual {v4, p1, v2}, Lcom/sec/samsung/gallery/view/accessibility/GLViewAccessibility;->createAccessibilityNodeInfo(ILandroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public detachFromRoot()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/GLView;->mParent:Lcom/sec/android/gallery3d/ui/GLView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/GLView;->mRoot:Lcom/sec/android/gallery3d/ui/GLRoot;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/sec/android/gallery3d/common/Utils;->assertTrue(Z)V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/GLView;->onDetachFromRoot()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchDragEvent(Landroid/view/DragEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/GLView;->mComponents:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    return v1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/GLView;->mComponents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/GLView;->mComponents:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/ui/GLView;

    invoke-virtual {v1, p1}, Lcom/sec/android/gallery3d/ui/GLView;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_0
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

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/GLView;->mMotionTarget:Lcom/sec/android/gallery3d/ui/GLView;

    if-eqz v0, :cond_0

    if-nez v10, :cond_3

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/GLView;->mMotionTarget:Lcom/sec/android/gallery3d/ui/GLView;

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/gallery3d/ui/GLView;->dispatchTouchEvent(Landroid/view/MotionEvent;IILcom/sec/android/gallery3d/ui/GLView;Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/GLView;->mMotionTarget:Lcom/sec/android/gallery3d/ui/GLView;

    :cond_0
    if-eqz v10, :cond_1

    const/16 v0, 0x3e8

    if-eq v10, v0, :cond_1

    const/16 v0, 0x3ea

    if-eq v10, v0, :cond_1

    const/16 v0, 0x8

    if-eq v10, v0, :cond_1

    const/16 v0, 0x3eb

    if-ne v10, v0, :cond_7

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/GLView;->getComponentCount()I

    move-result v0

    add-int/lit8 v11, v0, -0x1

    :goto_0
    if-ltz v11, :cond_7

    invoke-direct {p0, v11}, Lcom/sec/android/gallery3d/ui/GLView;->getComponent(I)Lcom/sec/android/gallery3d/ui/GLView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/ui/GLView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_6

    :cond_2
    add-int/lit8 v11, v11, -0x1

    goto :goto_0

    :cond_3
    iget-object v8, p0, Lcom/sec/android/gallery3d/ui/GLView;->mMotionTarget:Lcom/sec/android/gallery3d/ui/GLView;

    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, p1

    move v6, v2

    move v7, v3

    invoke-direct/range {v4 .. v9}, Lcom/sec/android/gallery3d/ui/GLView;->dispatchTouchEvent(Landroid/view/MotionEvent;IILcom/sec/android/gallery3d/ui/GLView;Z)Z

    const/4 v0, 0x3

    if-eq v10, v0, :cond_4

    const/4 v0, 0x1

    if-eq v10, v0, :cond_4

    const/16 v0, 0x3e9

    if-ne v10, v0, :cond_5

    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/GLView;->mMotionTarget:Lcom/sec/android/gallery3d/ui/GLView;

    :cond_5
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_6
    const/4 v9, 0x1

    move-object v4, p0

    move-object v5, p1

    move v6, v2

    move v7, v3

    invoke-direct/range {v4 .. v9}, Lcom/sec/android/gallery3d/ui/GLView;->dispatchTouchEvent(Landroid/view/MotionEvent;IILcom/sec/android/gallery3d/ui/GLView;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-object v8, p0, Lcom/sec/android/gallery3d/ui/GLView;->mMotionTarget:Lcom/sec/android/gallery3d/ui/GLView;

    const/4 v0, 0x1

    goto :goto_1

    :cond_7
    invoke-virtual {p0, p1}, Lcom/sec/android/gallery3d/ui/GLView;->onTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_1
.end method

.method dumpTree(Ljava/lang/String;)V
    .locals 5

    const-string/jumbo v2, "GLView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/GLView;->getComponentCount()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-direct {p0, v0}, Lcom/sec/android/gallery3d/ui/GLView;->getComponent(I)Lcom/sec/android/gallery3d/ui/GLView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "...."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/ui/GLView;->dumpTree(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getGLRoot()Lcom/sec/android/gallery3d/ui/GLRoot;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/GLView;->mRoot:Lcom/sec/android/gallery3d/ui/GLRoot;

    return-object v0
.end method

.method public getHeight()I
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/GLView;->mBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/GLView;->mBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getMeasuredHeight()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/ui/GLView;->mMeasuredHeight:I

    return v0
.end method

.method public getPaddings()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/GLView;->mPaddings:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getVisibility()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/ui/GLView;->mViewFlags:I

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
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/GLView;->mBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/GLView;->mBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    return v0
.end method

.method protected initAccessibilityListener()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/GLView;->mGLViewAccessibilityListener:Lcom/sec/samsung/gallery/view/accessibility/GLViewAccessibility$AccessibilityNodeInfoListener;

    return-void
.end method

.method public invalidate()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/GLView;->mRoot:Lcom/sec/android/gallery3d/ui/GLRoot;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/sec/android/gallery3d/ui/GLRoot;->requestRender()V

    :cond_0
    return-void
.end method

.method public layout(IIII)V
    .locals 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/gallery3d/ui/GLView;->setBounds(IIII)Z

    move-result v1

    iget v0, p0, Lcom/sec/android/gallery3d/ui/GLView;->mViewFlags:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/sec/android/gallery3d/ui/GLView;->mViewFlags:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/gallery3d/ui/GLView;->onLayout(ZIIII)V

    return-void
.end method

.method lockRendering()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/GLView;->mRoot:Lcom/sec/android/gallery3d/ui/GLRoot;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/GLView;->mRoot:Lcom/sec/android/gallery3d/ui/GLRoot;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/ui/GLRoot;->lockRenderThread()V

    :cond_0
    return-void
.end method

.method public measure(II)V
    .locals 3

    iget v0, p0, Lcom/sec/android/gallery3d/ui/GLView;->mLastWidthSpec:I

    if-ne p1, v0, :cond_1

    iget v0, p0, Lcom/sec/android/gallery3d/ui/GLView;->mLastHeightSpec:I

    if-ne p2, v0, :cond_1

    iget v0, p0, Lcom/sec/android/gallery3d/ui/GLView;->mViewFlags:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iput p1, p0, Lcom/sec/android/gallery3d/ui/GLView;->mLastWidthSpec:I

    iput p2, p0, Lcom/sec/android/gallery3d/ui/GLView;->mLastHeightSpec:I

    iget v0, p0, Lcom/sec/android/gallery3d/ui/GLView;->mViewFlags:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/sec/android/gallery3d/ui/GLView;->mViewFlags:I

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/gallery3d/ui/GLView;->onMeasure(II)V

    iget v0, p0, Lcom/sec/android/gallery3d/ui/GLView;->mViewFlags:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " should call setMeasuredSize() in onMeasure()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onGenericMotionCancel()V
    .locals 0

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/GLView;->mComponents:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    return v1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/GLView;->mComponents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/GLView;->mComponents:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/ui/GLView;

    invoke-virtual {v1, p1, p2}, Lcom/sec/android/gallery3d/ui/GLView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/GLView;->mComponents:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    return v1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/GLView;->mComponents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/GLView;->mComponents:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/ui/GLView;

    invoke-virtual {v1, p1, p2}, Lcom/sec/android/gallery3d/ui/GLView;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/GLView;->mComponents:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    return v1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/GLView;->mComponents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/GLView;->mComponents:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/ui/GLView;

    invoke-virtual {v1, p1, p2}, Lcom/sec/android/gallery3d/ui/GLView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    return-void
.end method

.method onMeasure(II)V
    .locals 0

    return-void
.end method

.method onTouch(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method onVisibilityChanged(I)V
    .locals 4

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/GLView;->getComponentCount()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-direct {p0, v1}, Lcom/sec/android/gallery3d/ui/GLView;->getComponent(I)Lcom/sec/android/gallery3d/ui/GLView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/GLView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/ui/GLView;->onVisibilityChanged(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public performAction(II)Z
    .locals 5

    const/4 v3, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/GLView;->getComponentCount()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-direct {p0, v1}, Lcom/sec/android/gallery3d/ui/GLView;->getComponent(I)Lcom/sec/android/gallery3d/ui/GLView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v4, v0, Lcom/sec/android/gallery3d/ui/GLView;->mGLViewAccessibility:Lcom/sec/samsung/gallery/view/accessibility/GLViewAccessibility;

    if-eqz v4, :cond_0

    iget-object v4, v0, Lcom/sec/android/gallery3d/ui/GLView;->mGLViewAccessibility:Lcom/sec/samsung/gallery/view/accessibility/GLViewAccessibility;

    invoke-virtual {v4, p1, p2}, Lcom/sec/samsung/gallery/view/accessibility/GLViewAccessibility;->performAction(II)Z

    move-result v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method public removeComponent(Lcom/sec/android/gallery3d/ui/GLView;)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/GLView;->mComponents:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/GLView;->mComponents:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/ui/GLView;->removeOneComponent(Lcom/sec/android/gallery3d/ui/GLView;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public render(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/sec/android/gallery3d/ui/GLView;->renderBackground(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;)V

    invoke-interface {p1}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->save()V

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/GLView;->getComponentCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-direct {p0, v0}, Lcom/sec/android/gallery3d/ui/GLView;->getComponent(I)Lcom/sec/android/gallery3d/ui/GLView;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/sec/android/gallery3d/ui/GLView;->renderChild(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;Lcom/sec/android/gallery3d/ui/GLView;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->restore()V

    return-void
.end method

.method protected renderBackground(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/GLView;->mBackgroundColor:[F

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/GLView;->mBackgroundColor:[F

    invoke-interface {p1, v0}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->clearBuffer([F)V

    :cond_0
    return-void
.end method

.method renderChild(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;Lcom/sec/android/gallery3d/ui/GLView;)V
    .locals 6

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/ui/GLView;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p2, Lcom/sec/android/gallery3d/ui/GLView;->mAnimation:Lcom/sec/android/gallery3d/anim/CanvasAnimation;

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v3, p2, Lcom/sec/android/gallery3d/ui/GLView;->mBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget v4, p0, Lcom/sec/android/gallery3d/ui/GLView;->mScrollX:I

    sub-int v1, v3, v4

    iget-object v3, p2, Lcom/sec/android/gallery3d/ui/GLView;->mBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget v4, p0, Lcom/sec/android/gallery3d/ui/GLView;->mScrollY:I

    sub-int v2, v3, v4

    int-to-float v3, v1

    int-to-float v4, v2

    invoke-interface {p1, v3, v4}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->translate(FF)V

    iget-object v0, p2, Lcom/sec/android/gallery3d/ui/GLView;->mAnimation:Lcom/sec/android/gallery3d/anim/CanvasAnimation;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/anim/CanvasAnimation;->getCanvasSaveFlags()I

    move-result v3

    invoke-interface {p1, v3}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->save(I)V

    invoke-static {}, Lcom/sec/android/gallery3d/ui/AnimationTime;->get()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/sec/android/gallery3d/anim/CanvasAnimation;->calculate(J)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/GLView;->invalidate()V

    :goto_1
    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/anim/CanvasAnimation;->apply(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;)V

    :cond_1
    invoke-virtual {p2, p1}, Lcom/sec/android/gallery3d/ui/GLView;->render(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;)V

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->restore()V

    :cond_2
    neg-int v3, v1

    int-to-float v3, v3

    neg-int v4, v2

    int-to-float v4, v4

    invoke-interface {p1, v3, v4}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->translate(FF)V

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    iput-object v3, p2, Lcom/sec/android/gallery3d/ui/GLView;->mAnimation:Lcom/sec/android/gallery3d/anim/CanvasAnimation;

    goto :goto_1
.end method

.method public requestLayout()V
    .locals 3

    const/4 v2, -0x1

    iget v1, p0, Lcom/sec/android/gallery3d/ui/GLView;->mViewFlags:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/sec/android/gallery3d/ui/GLView;->mViewFlags:I

    iput v2, p0, Lcom/sec/android/gallery3d/ui/GLView;->mLastHeightSpec:I

    iput v2, p0, Lcom/sec/android/gallery3d/ui/GLView;->mLastWidthSpec:I

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/GLView;->mParent:Lcom/sec/android/gallery3d/ui/GLView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/GLView;->mParent:Lcom/sec/android/gallery3d/ui/GLView;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/GLView;->requestLayout()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/GLView;->mRoot:Lcom/sec/android/gallery3d/ui/GLRoot;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/sec/android/gallery3d/ui/GLRoot;->requestLayoutContentPane()V

    goto :goto_0
.end method

.method public setBackgroundColor([F)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/ui/GLView;->mBackgroundColor:[F

    return-void
.end method

.method public setBoundsCenter(IIII)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/GLView;->mBoundsCenter:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method setMeasuredSize(II)V
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/ui/GLView;->mViewFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sec/android/gallery3d/ui/GLView;->mViewFlags:I

    iput p2, p0, Lcom/sec/android/gallery3d/ui/GLView;->mMeasuredHeight:I

    return-void
.end method

.method setPaddings(IIII)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/GLView;->mPaddings:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/GLView;->getVisibility()I

    move-result v0

    if-ne p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_1

    iget v0, p0, Lcom/sec/android/gallery3d/ui/GLView;->mViewFlags:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/sec/android/gallery3d/ui/GLView;->mViewFlags:I

    :goto_1
    invoke-virtual {p0, p1}, Lcom/sec/android/gallery3d/ui/GLView;->onVisibilityChanged(I)V

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/GLView;->invalidate()V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/sec/android/gallery3d/ui/GLView;->mViewFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/gallery3d/ui/GLView;->mViewFlags:I

    goto :goto_1
.end method

.method startAnimation(Lcom/sec/android/gallery3d/anim/CanvasAnimation;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/GLView;->mRoot:Lcom/sec/android/gallery3d/ui/GLRoot;

    if-nez v0, :cond_0

    const-string/jumbo v1, "GLView"

    const-string/jumbo v2, "root null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/sec/android/gallery3d/ui/GLView;->mAnimation:Lcom/sec/android/gallery3d/anim/CanvasAnimation;

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/GLView;->mAnimation:Lcom/sec/android/gallery3d/anim/CanvasAnimation;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/GLView;->mAnimation:Lcom/sec/android/gallery3d/anim/CanvasAnimation;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/anim/CanvasAnimation;->start()V

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/GLView;->mAnimation:Lcom/sec/android/gallery3d/anim/CanvasAnimation;

    invoke-interface {v0, v1}, Lcom/sec/android/gallery3d/ui/GLRoot;->registerLaunchedAnimation(Lcom/sec/android/gallery3d/anim/CanvasAnimation;)V

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/GLView;->invalidate()V

    goto :goto_0
.end method

.method unlockRendering()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/GLView;->mRoot:Lcom/sec/android/gallery3d/ui/GLRoot;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/GLView;->mRoot:Lcom/sec/android/gallery3d/ui/GLRoot;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/ui/GLRoot;->unlockRenderThread()V

    :cond_0
    return-void
.end method
