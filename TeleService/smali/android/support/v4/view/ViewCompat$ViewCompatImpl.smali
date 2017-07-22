.class interface abstract Landroid/support/v4/view/ViewCompat$ViewCompatImpl;
.super Ljava/lang/Object;
.source "ViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "ViewCompatImpl"
.end annotation


# virtual methods
.method public abstract getElevation(Landroid/view/View;)F
.end method

.method public abstract getFitsSystemWindows(Landroid/view/View;)Z
.end method

.method public abstract getImportantForAccessibility(Landroid/view/View;)I
.end method

.method public abstract getLayerType(Landroid/view/View;)I
.end method

.method public abstract getLayoutDirection(Landroid/view/View;)I
.end method

.method public abstract getParentForAccessibility(Landroid/view/View;)Landroid/view/ViewParent;
.end method

.method public abstract hasOverlappingRendering(Landroid/view/View;)Z
.end method

.method public abstract isAttachedToWindow(Landroid/view/View;)Z
.end method

.method public abstract offsetLeftAndRight(Landroid/view/View;I)V
.end method

.method public abstract offsetTopAndBottom(Landroid/view/View;I)V
.end method

.method public abstract postInvalidateOnAnimation(Landroid/view/View;)V
.end method

.method public abstract setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V
    .param p2    # Landroid/support/v4/view/AccessibilityDelegateCompat;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setElevation(Landroid/view/View;F)V
.end method

.method public abstract setImportantForAccessibility(Landroid/view/View;I)V
.end method

.method public abstract setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V
.end method

.method public abstract setSaveFromParentEnabled(Landroid/view/View;Z)V
.end method
