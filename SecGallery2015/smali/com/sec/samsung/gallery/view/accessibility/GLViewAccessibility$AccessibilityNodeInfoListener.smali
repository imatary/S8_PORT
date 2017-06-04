.class public interface abstract Lcom/sec/samsung/gallery/view/accessibility/GLViewAccessibility$AccessibilityNodeInfoListener;
.super Ljava/lang/Object;
.source "GLViewAccessibility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/accessibility/GLViewAccessibility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AccessibilityNodeInfoListener"
.end annotation


# virtual methods
.method public abstract getIndexOffset()I
.end method

.method public abstract hasAccessibilityChildren()Z
.end method

.method public abstract isReqeustHandlable(I)Z
.end method

.method public abstract performAction(II)Z
.end method

.method public abstract setupAccInfo(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
.end method

.method public abstract update(Landroid/view/accessibility/AccessibilityNodeInfo;)V
.end method
