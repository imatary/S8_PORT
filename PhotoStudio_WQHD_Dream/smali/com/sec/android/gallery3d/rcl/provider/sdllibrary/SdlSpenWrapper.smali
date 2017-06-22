.class public Lcom/sec/android/gallery3d/rcl/provider/sdllibrary/SdlSpenWrapper;
.super Ljava/lang/Object;
.source "SdlSpenWrapper.java"

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
    .locals 3

    const/16 v2, 0x15

    const/4 v1, 0x1

    if-ne p3, v1, :cond_1

    const/4 v1, 0x2

    const/4 v2, 0x1

    :try_start_0
    invoke-static {v1, v2}, Landroid/view/PointerIcon;->setIcon(II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-ne p3, v2, :cond_0

    const/4 v1, 0x2

    const/16 v2, 0x15

    invoke-static {v1, v2}, Landroid/view/PointerIcon;->setIcon(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
