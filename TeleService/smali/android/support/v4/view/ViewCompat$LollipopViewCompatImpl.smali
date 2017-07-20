.class Landroid/support/v4/view/ViewCompat$LollipopViewCompatImpl;
.super Landroid/support/v4/view/ViewCompat$KitKatViewCompatImpl;
.source "ViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LollipopViewCompatImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/view/ViewCompat$KitKatViewCompatImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getElevation(Landroid/view/View;)F
    .locals 1

    invoke-static {p1}, Landroid/support/v4/view/ViewCompatLollipop;->getElevation(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public offsetLeftAndRight(Landroid/view/View;I)V
    .locals 0

    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatLollipop;->offsetLeftAndRight(Landroid/view/View;I)V

    return-void
.end method

.method public offsetTopAndBottom(Landroid/view/View;I)V
    .locals 0

    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatLollipop;->offsetTopAndBottom(Landroid/view/View;I)V

    return-void
.end method

.method public setElevation(Landroid/view/View;F)V
    .locals 0

    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatLollipop;->setElevation(Landroid/view/View;F)V

    return-void
.end method
