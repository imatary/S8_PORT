.class public Lcom/sec/samsung/gallery/lib/factory/LayoutParamsWrapper;
.super Ljava/lang/Object;
.source "LayoutParamsWrapper.java"


# static fields
.field public static final SAMSUNG_FLAG_SOFT_INPUT_ADJUST_RESIZE_FULLSCREEN:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput v0, Lcom/sec/samsung/gallery/lib/factory/LayoutParamsWrapper;->SAMSUNG_FLAG_SOFT_INPUT_ADJUST_RESIZE_FULLSCREEN:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addExtensionFlags(Landroid/view/WindowManager$LayoutParams;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/samsung/gallery/lib/se/SeLayoutParams;->addExtensionFlags(Landroid/view/WindowManager$LayoutParams;I)V

    return-void
.end method

.method public static clearExtensionFlags(Landroid/view/WindowManager$LayoutParams;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/samsung/gallery/lib/se/SeLayoutParams;->clearExtensionFlags(Landroid/view/WindowManager$LayoutParams;I)V

    return-void
.end method

.method public static setMarginsRelative(Landroid/widget/RelativeLayout$LayoutParams;IIII)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/sec/samsung/gallery/lib/se/SeLayoutParams;->setMarginsRelative(Landroid/widget/RelativeLayout$LayoutParams;IIII)V

    return-void
.end method

.method public static setScreenDimDuration(Landroid/view/WindowManager$LayoutParams;J)V
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/sec/samsung/gallery/lib/se/SeLayoutParams;->setScreenDimDuration(Landroid/view/WindowManager$LayoutParams;J)V

    return-void
.end method

.method public static setUserActivityTimeout(Landroid/view/WindowManager$LayoutParams;J)V
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/sec/samsung/gallery/lib/se/SeLayoutParams;->setUserActivityTimeout(Landroid/view/WindowManager$LayoutParams;J)V

    return-void
.end method
