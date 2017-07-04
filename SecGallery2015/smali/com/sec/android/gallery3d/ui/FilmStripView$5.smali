.class Lcom/sec/android/gallery3d/ui/FilmStripView$5;
.super Ljava/lang/Object;
.source "FilmStripView.java"

# interfaces
.implements Lcom/sec/samsung/gallery/view/accessibility/GLViewAccessibility$AccessibilityNodeInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/ui/FilmStripView;->initAccessibilityListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mVirtualIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sec/android/gallery3d/ui/FilmStripView;

.field private virtualStartIndex:I

.field private virtualVisibleStart:I


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/ui/FilmStripView;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/gallery3d/ui/FilmStripView$5;->this$0:Lcom/sec/android/gallery3d/ui/FilmStripView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView$5;->mVirtualIds:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getIndexOffset()I
    .locals 2

    iget v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView$5;->virtualVisibleStart:I

    iget v1, p0, Lcom/sec/android/gallery3d/ui/FilmStripView$5;->virtualStartIndex:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public hasAccessibilityChildren()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isReqeustHandlable(I)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView$5;->mVirtualIds:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public performAction(II)Z
    .locals 12

    const/16 v4, 0x3eb

    const/high16 v5, -0x40800000    # -1.0f

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView$5;->mVirtualIds:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView$5;->this$0:Lcom/sec/android/gallery3d/ui/FilmStripView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/ui/FilmStripView;->setGenericFocusIndex(I)V

    :goto_0
    return v7

    :cond_0
    const/4 v9, 0x0

    const/16 v0, 0x40

    if-ne p2, v0, :cond_3

    iget v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView$5;->virtualVisibleStart:I

    sub-int v0, p1, v0

    iget v1, p0, Lcom/sec/android/gallery3d/ui/FilmStripView$5;->virtualStartIndex:I

    add-int v8, v0, v1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView$5;->this$0:Lcom/sec/android/gallery3d/ui/FilmStripView;

    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/FilmStripView;->access$100(Lcom/sec/android/gallery3d/ui/FilmStripView;)Lcom/sec/android/gallery3d/ui/SlotView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SlotView;->getScrollX()I

    move-result v0

    neg-int v11, v0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView$5;->this$0:Lcom/sec/android/gallery3d/ui/FilmStripView;

    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/FilmStripView;->access$100(Lcom/sec/android/gallery3d/ui/FilmStripView;)Lcom/sec/android/gallery3d/ui/SlotView;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/sec/android/gallery3d/ui/SlotView;->getSlotRect(I)Landroid/graphics/Rect;

    move-result-object v10

    iget v0, v10, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v11

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/FilmStripView$5;->this$0:Lcom/sec/android/gallery3d/ui/FilmStripView;

    invoke-static {v1}, Lcom/sec/android/gallery3d/ui/FilmStripView;->access$1800(Lcom/sec/android/gallery3d/ui/FilmStripView;)I

    move-result v1

    add-int/2addr v0, v1

    iget v1, v10, Landroid/graphics/Rect;->top:I

    iget v2, v10, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v11

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/FilmStripView$5;->this$0:Lcom/sec/android/gallery3d/ui/FilmStripView;

    invoke-static {v3}, Lcom/sec/android/gallery3d/ui/FilmStripView;->access$1800(Lcom/sec/android/gallery3d/ui/FilmStripView;)I

    move-result v3

    add-int/2addr v2, v3

    iget v3, v10, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v10}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v10}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    int-to-float v6, v6

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v9

    :cond_1
    :goto_1
    if-eqz v9, :cond_2

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView$5;->this$0:Lcom/sec/android/gallery3d/ui/FilmStripView;

    invoke-virtual {v0, v9}, Lcom/sec/android/gallery3d/ui/FilmStripView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_2
    const/4 v7, 0x1

    goto :goto_0

    :cond_3
    const/16 v0, 0x80

    if-ne p2, v0, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v9

    goto :goto_1
.end method

.method public setupAccInfo(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    .locals 9

    iget v4, p0, Lcom/sec/android/gallery3d/ui/FilmStripView$5;->virtualVisibleStart:I

    sub-int v4, p2, v4

    iget v5, p0, Lcom/sec/android/gallery3d/ui/FilmStripView$5;->virtualStartIndex:I

    add-int v0, v4, v5

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/FilmStripView$5;->this$0:Lcom/sec/android/gallery3d/ui/FilmStripView;

    invoke-static {v4}, Lcom/sec/android/gallery3d/ui/FilmStripView;->access$1700(Lcom/sec/android/gallery3d/ui/FilmStripView;)Lcom/sec/android/gallery3d/app/AlbumDataLoader;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->get(I)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/FilmStripView$5;->this$0:Lcom/sec/android/gallery3d/ui/FilmStripView;

    invoke-static {v4}, Lcom/sec/android/gallery3d/ui/FilmStripView;->access$100(Lcom/sec/android/gallery3d/ui/FilmStripView;)Lcom/sec/android/gallery3d/ui/SlotView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/ui/SlotView;->getScrollX()I

    move-result v4

    neg-int v3, v4

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/FilmStripView$5;->this$0:Lcom/sec/android/gallery3d/ui/FilmStripView;

    invoke-static {v4}, Lcom/sec/android/gallery3d/ui/FilmStripView;->access$100(Lcom/sec/android/gallery3d/ui/FilmStripView;)Lcom/sec/android/gallery3d/ui/SlotView;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/sec/android/gallery3d/ui/SlotView;->getSlotRect(I)Landroid/graphics/Rect;

    move-result-object v2

    iget v4, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v3

    iget-object v5, p0, Lcom/sec/android/gallery3d/ui/FilmStripView$5;->this$0:Lcom/sec/android/gallery3d/ui/FilmStripView;

    invoke-static {v5}, Lcom/sec/android/gallery3d/ui/FilmStripView;->access$1800(Lcom/sec/android/gallery3d/ui/FilmStripView;)I

    move-result v5

    add-int/2addr v4, v5

    iget v5, v2, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Lcom/sec/android/gallery3d/ui/FilmStripView$5;->this$0:Lcom/sec/android/gallery3d/ui/FilmStripView;

    iget-object v6, v6, Lcom/sec/android/gallery3d/ui/FilmStripView;->mBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/sec/android/gallery3d/ui/FilmStripView$5;->this$0:Lcom/sec/android/gallery3d/ui/FilmStripView;

    invoke-static {v6}, Lcom/sec/android/gallery3d/ui/FilmStripView;->access$1900(Lcom/sec/android/gallery3d/ui/FilmStripView;)I

    move-result v6

    add-int/2addr v5, v6

    iget v6, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v3

    iget-object v7, p0, Lcom/sec/android/gallery3d/ui/FilmStripView$5;->this$0:Lcom/sec/android/gallery3d/ui/FilmStripView;

    invoke-static {v7}, Lcom/sec/android/gallery3d/ui/FilmStripView;->access$1800(Lcom/sec/android/gallery3d/ui/FilmStripView;)I

    move-result v7

    add-int/2addr v6, v7

    iget v7, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v8, p0, Lcom/sec/android/gallery3d/ui/FilmStripView$5;->this$0:Lcom/sec/android/gallery3d/ui/FilmStripView;

    iget-object v8, v8, Lcom/sec/android/gallery3d/ui/FilmStripView;->mBounds:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/sec/android/gallery3d/ui/FilmStripView$5;->this$0:Lcom/sec/android/gallery3d/ui/FilmStripView;

    invoke-static {v8}, Lcom/sec/android/gallery3d/ui/FilmStripView;->access$1900(Lcom/sec/android/gallery3d/ui/FilmStripView;)I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    :cond_0
    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/FilmStripView$5;->this$0:Lcom/sec/android/gallery3d/ui/FilmStripView;

    invoke-static {v4}, Lcom/sec/android/gallery3d/ui/FilmStripView;->access$2000(Lcom/sec/android/gallery3d/ui/FilmStripView;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/FilmStripView$5;->this$0:Lcom/sec/android/gallery3d/ui/FilmStripView;

    invoke-static {v4}, Lcom/sec/android/gallery3d/ui/FilmStripView;->access$1600(Lcom/sec/android/gallery3d/ui/FilmStripView;)Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getGlRootView()Lcom/sec/android/gallery3d/glcore/LibGLRootView;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/FilmStripView$5;->this$0:Lcom/sec/android/gallery3d/ui/FilmStripView;

    invoke-static {v4}, Lcom/sec/android/gallery3d/ui/FilmStripView;->access$1600(Lcom/sec/android/gallery3d/ui/FilmStripView;)Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getGlRootView()Lcom/sec/android/gallery3d/glcore/LibGLRootView;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    return-void
.end method

.method public update(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 5

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/FilmStripView$5;->mVirtualIds:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v1

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/FilmStripView$5;->this$0:Lcom/sec/android/gallery3d/ui/FilmStripView;

    invoke-static {v3}, Lcom/sec/android/gallery3d/ui/FilmStripView;->access$100(Lcom/sec/android/gallery3d/ui/FilmStripView;)Lcom/sec/android/gallery3d/ui/SlotView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/ui/SlotView;->getVisibleEnd()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/FilmStripView$5;->this$0:Lcom/sec/android/gallery3d/ui/FilmStripView;

    invoke-static {v4}, Lcom/sec/android/gallery3d/ui/FilmStripView;->access$100(Lcom/sec/android/gallery3d/ui/FilmStripView;)Lcom/sec/android/gallery3d/ui/SlotView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/ui/SlotView;->getVisibleStart()I

    move-result v4

    sub-int v2, v3, v4

    iput v1, p0, Lcom/sec/android/gallery3d/ui/FilmStripView$5;->virtualVisibleStart:I

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/FilmStripView$5;->this$0:Lcom/sec/android/gallery3d/ui/FilmStripView;

    invoke-static {v3}, Lcom/sec/android/gallery3d/ui/FilmStripView;->access$100(Lcom/sec/android/gallery3d/ui/FilmStripView;)Lcom/sec/android/gallery3d/ui/SlotView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/ui/SlotView;->getVisibleStart()I

    move-result v3

    iput v3, p0, Lcom/sec/android/gallery3d/ui/FilmStripView$5;->virtualStartIndex:I

    const/4 v0, 0x1

    :goto_0
    if-gt v0, v2, :cond_0

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/FilmStripView$5;->this$0:Lcom/sec/android/gallery3d/ui/FilmStripView;

    invoke-static {v3}, Lcom/sec/android/gallery3d/ui/FilmStripView;->access$1600(Lcom/sec/android/gallery3d/ui/FilmStripView;)Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getGlRootView()Lcom/sec/android/gallery3d/glcore/LibGLRootView;

    move-result-object v3

    invoke-virtual {p1, v3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/FilmStripView$5;->mVirtualIds:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
