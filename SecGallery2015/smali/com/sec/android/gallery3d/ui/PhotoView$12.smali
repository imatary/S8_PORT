.class Lcom/sec/android/gallery3d/ui/PhotoView$12;
.super Ljava/lang/Object;
.source "PhotoView.java"

# interfaces
.implements Lcom/sec/samsung/gallery/view/accessibility/GLViewAccessibility$AccessibilityNodeInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/ui/PhotoView;->initAccessibilityListener()V
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

.field final synthetic this$0:Lcom/sec/android/gallery3d/ui/PhotoView;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/ui/PhotoView;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/gallery3d/ui/PhotoView$12;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView$12;->mVirtualIds:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getIndexOffset()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hasAccessibilityChildren()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView$12;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$100(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/ui/PhotoIconView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/PhotoIconView;->getCurrentIcon()Lcom/sec/android/gallery3d/ui/playicon/IconType;

    move-result-object v0

    sget-object v1, Lcom/sec/android/gallery3d/ui/playicon/IconType;->NO_ICON:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView$12;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$8600(Lcom/sec/android/gallery3d/ui/PhotoView;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView$12;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$1800(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView$12;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v1}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$2100(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/util/GalleryVisionUtils;->isSupportType(Lcom/sec/android/gallery3d/interfaces/LibraryContext;Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReqeustHandlable(I)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView$12;->mVirtualIds:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public performAction(II)Z
    .locals 10

    const/16 v4, 0x3eb

    const/high16 v5, -0x40800000    # -1.0f

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView$12;->mVirtualIds:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return v7

    :cond_0
    const/4 v8, 0x0

    const/16 v0, 0x40

    if-ne p2, v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView$12;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$8700(Lcom/sec/android/gallery3d/ui/PhotoView;)Landroid/graphics/Rect;

    move-result-object v9

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v9}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v9}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    int-to-float v6, v6

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    :cond_1
    :goto_1
    if-eqz v8, :cond_2

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView$12;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-virtual {v0, v8}, Lcom/sec/android/gallery3d/ui/PhotoView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

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

    move-result-object v8

    goto :goto_1
.end method

.method public setupAccInfo(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    .locals 6

    const/4 v5, 0x0

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PhotoView$12;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v3}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$1700(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/ui/PhotoView$Listener;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/gallery3d/ui/PhotoView$Listener;->isMoreInfoOn()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    if-nez v1, :cond_1

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PhotoView$12;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v3}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$8600(Lcom/sec/android/gallery3d/ui/PhotoView;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PhotoView$12;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v3}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$1800(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/PhotoView$12;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v4}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$2100(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/android/gallery3d/util/GalleryVisionUtils;->isSupportType(Lcom/sec/android/gallery3d/interfaces/LibraryContext;Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PhotoView$12;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v3}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$2000(Lcom/sec/android/gallery3d/ui/PhotoView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    :goto_0
    const/4 v3, 0x2

    new-array v2, v3, [I

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PhotoView$12;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v3}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$1800(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getGlRootView()Lcom/sec/android/gallery3d/glcore/LibGLRootView;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->getLocationOnScreen([I)V

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PhotoView$12;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v3}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$8700(Lcom/sec/android/gallery3d/ui/PhotoView;)Landroid/graphics/Rect;

    move-result-object v0

    aget v3, v2, v5

    const/4 v4, 0x1

    aget v4, v2, v4

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    :cond_1
    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PhotoView$12;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v3}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$1100(Lcom/sec/android/gallery3d/ui/PhotoView;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PhotoView$12;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v3}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$1800(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getGlRootView()Lcom/sec/android/gallery3d/glcore/LibGLRootView;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PhotoView$12;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v3}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$1800(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getGlRootView()Lcom/sec/android/gallery3d/glcore/LibGLRootView;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    return-void

    :cond_2
    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PhotoView$12;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v3}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$100(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/ui/PhotoIconView;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public update(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView$12;->mVirtualIds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView$12;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v1}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$1800(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getGlRootView()Lcom/sec/android/gallery3d/glcore/LibGLRootView;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView$12;->mVirtualIds:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView$12;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView$12;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v2}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$2100(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$8500(Lcom/sec/android/gallery3d/ui/PhotoView;Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView$12;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v1}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$3600(Lcom/sec/android/gallery3d/ui/PhotoView;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView$12;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v1}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$1800(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getGlRootView()Lcom/sec/android/gallery3d/glcore/LibGLRootView;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView$12;->mVirtualIds:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
