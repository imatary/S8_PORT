.class public Lcom/sec/samsung/gallery/view/accessibility/GLViewAccessibility;
.super Ljava/lang/Object;
.source "GLViewAccessibility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/view/accessibility/GLViewAccessibility$AccessibilityNodeInfoListener;
    }
.end annotation


# instance fields
.field private mAccessibilityNodeInfoListener:Lcom/sec/samsung/gallery/view/accessibility/GLViewAccessibility$AccessibilityNodeInfoListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createAccessibilityNodeInfo(ILandroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/accessibility/GLViewAccessibility;->mAccessibilityNodeInfoListener:Lcom/sec/samsung/gallery/view/accessibility/GLViewAccessibility$AccessibilityNodeInfoListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/accessibility/GLViewAccessibility;->mAccessibilityNodeInfoListener:Lcom/sec/samsung/gallery/view/accessibility/GLViewAccessibility$AccessibilityNodeInfoListener;

    invoke-interface {v0}, Lcom/sec/samsung/gallery/view/accessibility/GLViewAccessibility$AccessibilityNodeInfoListener;->hasAccessibilityChildren()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    const/4 p2, 0x0

    :cond_1
    :goto_0
    return-object p2

    :cond_2
    const/4 v0, -0x1

    if-ne p1, v0, :cond_3

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_BACKWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_FORWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/accessibility/GLViewAccessibility;->mAccessibilityNodeInfoListener:Lcom/sec/samsung/gallery/view/accessibility/GLViewAccessibility$AccessibilityNodeInfoListener;

    invoke-interface {v0, p2}, Lcom/sec/samsung/gallery/view/accessibility/GLViewAccessibility$AccessibilityNodeInfoListener;->update(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/accessibility/GLViewAccessibility;->mAccessibilityNodeInfoListener:Lcom/sec/samsung/gallery/view/accessibility/GLViewAccessibility$AccessibilityNodeInfoListener;

    invoke-interface {v0, p1}, Lcom/sec/samsung/gallery/view/accessibility/GLViewAccessibility$AccessibilityNodeInfoListener;->isReqeustHandlable(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/accessibility/GLViewAccessibility;->mAccessibilityNodeInfoListener:Lcom/sec/samsung/gallery/view/accessibility/GLViewAccessibility$AccessibilityNodeInfoListener;

    invoke-interface {v0, p2, p1}, Lcom/sec/samsung/gallery/view/accessibility/GLViewAccessibility$AccessibilityNodeInfoListener;->setupAccInfo(Landroid/view/accessibility/AccessibilityNodeInfo;I)V

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_ACCESSIBILITY_FOCUS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLEAR_ACCESSIBILITY_FOCUS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_BACKWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_FORWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    const-string/jumbo v0, ""

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocused(Z)V

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAccessibilityFocused(Z)V

    goto :goto_0
.end method

.method public performAction(II)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/accessibility/GLViewAccessibility;->mAccessibilityNodeInfoListener:Lcom/sec/samsung/gallery/view/accessibility/GLViewAccessibility$AccessibilityNodeInfoListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/accessibility/GLViewAccessibility;->mAccessibilityNodeInfoListener:Lcom/sec/samsung/gallery/view/accessibility/GLViewAccessibility$AccessibilityNodeInfoListener;

    invoke-interface {v0, p1, p2}, Lcom/sec/samsung/gallery/view/accessibility/GLViewAccessibility$AccessibilityNodeInfoListener;->performAction(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAccessibilityNodeInfoListener(Lcom/sec/samsung/gallery/view/accessibility/GLViewAccessibility$AccessibilityNodeInfoListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/accessibility/GLViewAccessibility;->mAccessibilityNodeInfoListener:Lcom/sec/samsung/gallery/view/accessibility/GLViewAccessibility$AccessibilityNodeInfoListener;

    return-void
.end method
