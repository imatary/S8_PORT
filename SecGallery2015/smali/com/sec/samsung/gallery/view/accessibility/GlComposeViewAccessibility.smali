.class public Lcom/sec/samsung/gallery/view/accessibility/GlComposeViewAccessibility;
.super Ljava/lang/Object;
.source "GlComposeViewAccessibility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/view/accessibility/GlComposeViewAccessibility$AccessibilityNodeInfoListener;
    }
.end annotation


# instance fields
.field private mAccessibilityNodeInfoListener:Lcom/sec/samsung/gallery/view/accessibility/GlComposeViewAccessibility$AccessibilityNodeInfoListener;

.field private final mContext:Landroid/content/Context;

.field private final mMainView:Landroid/view/View;

.field private final mView:Lcom/sec/android/gallery3d/glcore/GlRootView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/gallery3d/glcore/GlRootView;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/accessibility/GlComposeViewAccessibility;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/accessibility/GlComposeViewAccessibility;->mView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    check-cast p1, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v0, 0x7f1200d5

    invoke-virtual {p1, v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/accessibility/GlComposeViewAccessibility;->mMainView:Landroid/view/View;

    return-void
.end method

.method private getVirtualRect(Lcom/sec/android/gallery3d/glcore/GlObject;)Landroid/graphics/Rect;
    .locals 8

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v1}, Lcom/sec/android/gallery3d/glcore/GlObject;->getGlObjectRect(Landroid/graphics/Rect;)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/accessibility/GlComposeViewAccessibility;->mContext:Landroid/content/Context;

    check-cast v4, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v5

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/accessibility/GlComposeViewAccessibility;->mContext:Landroid/content/Context;

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isTabletPickerMode(Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/accessibility/GlComposeViewAccessibility;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0264

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/accessibility/GlComposeViewAccessibility;->mContext:Landroid/content/Context;

    check-cast v4, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/accessibility/GlComposeViewAccessibility;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b01ee

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v3, v4, 0x2

    iget v4, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v3

    iget v5, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v2

    iget v6, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v3

    iget v7, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v7, v2

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    :cond_0
    iget v4, v1, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/accessibility/GlComposeViewAccessibility;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getActionBarSize(Landroid/content/Context;)I

    move-result v5

    if-ge v4, v5, :cond_1

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/accessibility/GlComposeViewAccessibility;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getActionBarSize(Landroid/content/Context;)I

    move-result v4

    iput v4, v1, Landroid/graphics/Rect;->top:I

    :cond_1
    invoke-static {}, Lcom/sec/samsung/gallery/util/TTSUtil;->isTalkBackEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    iget v4, v1, Landroid/graphics/Rect;->right:I

    iget v5, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    div-int/lit8 v0, v4, 0x2

    iget v4, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v0

    iput v4, v1, Landroid/graphics/Rect;->left:I

    iget v4, v1, Landroid/graphics/Rect;->left:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v1, Landroid/graphics/Rect;->right:I

    :cond_2
    return-object v1
.end method


# virtual methods
.method public createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/accessibility/GlComposeViewAccessibility;->mView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/glcore/GlRootView;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v3

    check-cast v3, Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider;->getFocusedIndex()I

    move-result v0

    const/4 v3, -0x1

    if-ne p1, v3, :cond_1

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/accessibility/GlComposeViewAccessibility;->mMainView:Landroid/view/View;

    invoke-static {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/accessibility/GlComposeViewAccessibility;->mView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v3, v2}, Lcom/sec/android/gallery3d/glcore/GlRootView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    sget-object v3, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_BACKWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    sget-object v3, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_FORWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/accessibility/GlComposeViewAccessibility;->mAccessibilityNodeInfoListener:Lcom/sec/samsung/gallery/view/accessibility/GlComposeViewAccessibility$AccessibilityNodeInfoListener;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/accessibility/GlComposeViewAccessibility;->mAccessibilityNodeInfoListener:Lcom/sec/samsung/gallery/view/accessibility/GlComposeViewAccessibility$AccessibilityNodeInfoListener;

    invoke-interface {v3, v2}, Lcom/sec/samsung/gallery/view/accessibility/GlComposeViewAccessibility$AccessibilityNodeInfoListener;->update(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/accessibility/GlComposeViewAccessibility;->mAccessibilityNodeInfoListener:Lcom/sec/samsung/gallery/view/accessibility/GlComposeViewAccessibility$AccessibilityNodeInfoListener;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/accessibility/GlComposeViewAccessibility;->mAccessibilityNodeInfoListener:Lcom/sec/samsung/gallery/view/accessibility/GlComposeViewAccessibility$AccessibilityNodeInfoListener;

    invoke-interface {v3, p1}, Lcom/sec/samsung/gallery/view/accessibility/GlComposeViewAccessibility$AccessibilityNodeInfoListener;->getObject(I)Lcom/sec/android/gallery3d/glcore/GlObject;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    sget-object v3, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_ACCESSIBILITY_FOCUS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    sget-object v3, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLEAR_ACCESSIBILITY_FOCUS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    sget-object v3, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SELECT:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    sget-object v3, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLEAR_SELECTION:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    sget-object v3, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_FOCUS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glcore/GlObject;->getClickListener()Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

    move-result-object v3

    if-eqz v3, :cond_2

    sget-object v3, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_2
    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glcore/GlObject;->getLongClickListener()Lcom/sec/android/gallery3d/glcore/GlObject$GlLongClickListener;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/accessibility/GlComposeViewAccessibility;->mContext:Landroid/content/Context;

    check-cast v3, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v3

    if-nez v3, :cond_3

    sget-object v3, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_LONG_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_3
    sget-object v3, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_BACKWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    sget-object v3, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_FORWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/accessibility/GlComposeViewAccessibility;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/accessibility/GlComposeViewAccessibility;->mView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v2, v3, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/accessibility/GlComposeViewAccessibility;->mMainView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/view/accessibility/GlComposeViewAccessibility;->getVirtualRect(Lcom/sec/android/gallery3d/glcore/GlObject;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    if-ne p1, v0, :cond_5

    move v3, v4

    :goto_1
    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocused(Z)V

    if-ne p1, v0, :cond_4

    move v5, v4

    :cond_4
    invoke-virtual {v2, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAccessibilityFocused(Z)V

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    goto/16 :goto_0

    :cond_5
    move v3, v5

    goto :goto_1
.end method

.method public performAction(II)Z
    .locals 22

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/view/accessibility/GlComposeViewAccessibility;->mView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/glcore/GlRootView;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v18

    check-cast v18, Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider;

    invoke-virtual/range {v18 .. v18}, Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider;->getFocusedIndex()I

    move-result v19

    sparse-switch p2, :sswitch_data_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :sswitch_0
    move/from16 v0, v19

    move/from16 v1, p1

    if-ne v0, v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider;->setFocusedIndex(I)V

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/view/accessibility/GlComposeViewAccessibility;->mAccessibilityNodeInfoListener:Lcom/sec/samsung/gallery/view/accessibility/GlComposeViewAccessibility$AccessibilityNodeInfoListener;

    if-eqz v2, :cond_1

    const/4 v2, -0x1

    move/from16 v0, p1

    if-eq v0, v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/view/accessibility/GlComposeViewAccessibility;->mAccessibilityNodeInfoListener:Lcom/sec/samsung/gallery/view/accessibility/GlComposeViewAccessibility$AccessibilityNodeInfoListener;

    move/from16 v0, p1

    invoke-interface {v2, v0}, Lcom/sec/samsung/gallery/view/accessibility/GlComposeViewAccessibility$AccessibilityNodeInfoListener;->getObject(I)Lcom/sec/android/gallery3d/glcore/GlObject;

    move-result-object v20

    :cond_1
    if-nez v20, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/gallery3d/glcore/GlObject;->getCenterX()F

    move-result v7

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/gallery3d/glcore/GlObject;->getCenterY()F

    move-result v8

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/16 v6, 0x3eb

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/sec/android/gallery3d/glcore/GlObject;->onTouch(Landroid/view/MotionEvent;)Z

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider;->setCurrentSelectedItem(Lcom/sec/android/gallery3d/glcore/GlObject;)V

    const v2, 0x8000

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider;->sendAccessibilityEventForVirtualView(Lcom/sec/android/gallery3d/glcore/GlObject;I)V

    const/4 v2, 0x1

    goto :goto_0

    :sswitch_1
    move/from16 v0, v19

    move/from16 v1, p1

    if-ne v0, v1, :cond_5

    const/4 v2, -0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider;->setFocusedIndex(I)V

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/view/accessibility/GlComposeViewAccessibility;->mAccessibilityNodeInfoListener:Lcom/sec/samsung/gallery/view/accessibility/GlComposeViewAccessibility$AccessibilityNodeInfoListener;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/view/accessibility/GlComposeViewAccessibility;->mAccessibilityNodeInfoListener:Lcom/sec/samsung/gallery/view/accessibility/GlComposeViewAccessibility$AccessibilityNodeInfoListener;

    move/from16 v0, p1

    invoke-interface {v2, v0}, Lcom/sec/samsung/gallery/view/accessibility/GlComposeViewAccessibility$AccessibilityNodeInfoListener;->getObject(I)Lcom/sec/android/gallery3d/glcore/GlObject;

    move-result-object v20

    :cond_3
    if-nez v20, :cond_4

    const/4 v2, 0x0

    goto :goto_0

    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    const/16 v14, 0x3eb

    const/high16 v15, -0x40800000    # -1.0f

    const/high16 v16, -0x40800000    # -1.0f

    const/16 v17, 0x0

    invoke-static/range {v10 .. v17}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/sec/android/gallery3d/glcore/GlObject;->onTouch(Landroid/view/MotionEvent;)Z

    const/high16 v2, 0x10000

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider;->sendAccessibilityEventForVirtualView(Lcom/sec/android/gallery3d/glcore/GlObject;I)V

    :cond_5
    const/4 v2, 0x1

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x40 -> :sswitch_0
        0x80 -> :sswitch_1
    .end sparse-switch
.end method

.method public setAccessibilityNodeInfoListener(Lcom/sec/samsung/gallery/view/accessibility/GlComposeViewAccessibility$AccessibilityNodeInfoListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/accessibility/GlComposeViewAccessibility;->mAccessibilityNodeInfoListener:Lcom/sec/samsung/gallery/view/accessibility/GlComposeViewAccessibility$AccessibilityNodeInfoListener;

    return-void
.end method
