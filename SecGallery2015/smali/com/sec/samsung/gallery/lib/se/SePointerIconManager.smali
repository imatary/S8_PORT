.class public Lcom/sec/samsung/gallery/lib/se/SePointerIconManager;
.super Ljava/lang/Object;
.source "SePointerIconManager.java"


# static fields
.field public static final HOVERING_SCROLLICON_DOWN:I = 0x4e2f

.field public static final HOVERING_SCROLLICON_LEFT:I = 0x4e31

.field public static final HOVERING_SCROLLICON_RIGHT:I = 0x4e2d

.field public static final HOVERING_SCROLLICON_UP:I = 0x4e2b

.field public static final MOUSE_HOVERING_ALL_SCROLL:I = 0x3f5

.field public static final MOUSE_HOVERING_DEFAULT:I = 0x3e8

.field public static final MOUSE_HOVERING_HORIZONTAL_DOUBLE_ARROW:I = 0x3f6

.field public static final MOUSE_HOVERING_TOP_LEFT_DIAGONAL_DOUBLE_ARROW:I = 0x3f9

.field public static final MOUSE_HOVERING_TOP_RIGHT_DIAGONAL_DOUBLE_ARROW:I = 0x3f8

.field public static final MOUSE_HOVERING_VERTICAL_DOUBLE_ARROW:I = 0x3f7

.field public static final POINTER_ICON_HOVER_PEN_SELECT:I = 0x4e35

.field public static final POINTER_ICON_HOVER_POINTER_DEFAULT:I = 0x4e21

.field public static final POINTER_ICON_HOVER_POINTER_MORE:I = 0x4e2a

.field private static final TAG:Ljava/lang/String; = "SePointerIconManager"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setIcon(Landroid/content/Context;Landroid/view/View;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    :cond_0
    const-string/jumbo v0, "SePointerIconManager"

    const-string/jumbo v1, "setIcon: view or context is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    invoke-static {p0, p3}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/view/View;->semSetPointerIcon(ILandroid/view/PointerIcon;)V

    goto :goto_0
.end method
