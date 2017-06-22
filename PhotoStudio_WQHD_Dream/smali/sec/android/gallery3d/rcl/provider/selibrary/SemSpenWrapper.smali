.class public Lsec/android/gallery3d/rcl/provider/selibrary/SemSpenWrapper;
.super Ljava/lang/Object;
.source "SemSpenWrapper.java"

# interfaces
.implements Lcom/sec/android/gallery3d/rcl/provider/libinterface/SpenInterface;


# static fields
.field private static final HOVERING_SPENICON_DEFAULT:I = 0x1

.field private static final HOVERING_SPENICON_PENSELECT:I = 0x15


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setIcon(Landroid/widget/GridView;Landroid/content/Context;I)V
    .locals 2

    const/16 v0, 0x15

    if-ne p3, v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    const/4 v0, 0x2

    const/16 v1, 0x4e35

    invoke-static {p2, v1}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/GridView;->semSetPointerIcon(ILandroid/view/PointerIcon;)V

    :cond_0
    return-void
.end method
