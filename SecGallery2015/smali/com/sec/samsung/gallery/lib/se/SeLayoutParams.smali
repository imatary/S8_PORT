.class public Lcom/sec/samsung/gallery/lib/se/SeLayoutParams;
.super Ljava/lang/Object;
.source "SeLayoutParams.java"


# static fields
.field public static final SAMSUNG_FLAG_SOFT_INPUT_ADJUST_RESIZE_FULLSCREEN:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addExtensionFlags(Landroid/view/WindowManager$LayoutParams;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/WindowManager$LayoutParams;->semAddExtensionFlags(I)V

    return-void
.end method

.method public static clearExtensionFlags(Landroid/view/WindowManager$LayoutParams;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/WindowManager$LayoutParams;->semClearExtensionFlags(I)V

    return-void
.end method

.method public static setMarginsRelative(Landroid/widget/RelativeLayout$LayoutParams;IIII)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout$LayoutParams;->semSetMarginsRelative(IIII)V

    return-void
.end method

.method public static setScreenDimDuration(Landroid/view/WindowManager$LayoutParams;J)V
    .locals 1

    invoke-virtual {p0, p1, p2}, Landroid/view/WindowManager$LayoutParams;->semSetScreenDimDuration(J)V

    return-void
.end method

.method public static setUserActivityTimeout(Landroid/view/WindowManager$LayoutParams;J)V
    .locals 1

    invoke-virtual {p0, p1, p2}, Landroid/view/WindowManager$LayoutParams;->semSetScreenTimeout(J)V

    return-void
.end method
