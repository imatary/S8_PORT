.class public Lcom/sec/samsung/gallery/lib/factory/PointerIconWrapper;
.super Ljava/lang/Object;
.source "PointerIconWrapper.java"


# static fields
.field public static final HOVERING_SCROLLICON_DOWN:I

.field public static final HOVERING_SCROLLICON_LEFT:I

.field public static final HOVERING_SCROLLICON_RIGHT:I

.field public static final HOVERING_SCROLLICON_UP:I

.field public static final MOUSE_HOVERING_ALL_SCROLL:I

.field public static final MOUSE_HOVERING_DEFAULT:I

.field public static final MOUSE_HOVERING_HORIZONTAL_DOUBLE_ARROW:I

.field public static final MOUSE_HOVERING_TOP_LEFT_DIAGONAL_DOUBLE_ARROW:I

.field public static final MOUSE_HOVERING_TOP_RIGHT_DIAGONAL_DOUBLE_ARROW:I

.field public static final MOUSE_HOVERING_VERTICAL_DOUBLE_ARROW:I

.field public static final POINTER_ICON_HOVER_PEN_SELECT:I

.field public static final POINTER_ICON_HOVER_POINTER_DEFAULT:I

.field public static final POINTER_ICON_HOVER_POINTER_MORE:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x4e2a

    sput v0, Lcom/sec/samsung/gallery/lib/factory/PointerIconWrapper;->POINTER_ICON_HOVER_POINTER_MORE:I

    const/16 v0, 0x4e21

    sput v0, Lcom/sec/samsung/gallery/lib/factory/PointerIconWrapper;->POINTER_ICON_HOVER_POINTER_DEFAULT:I

    const/16 v0, 0x4e35

    sput v0, Lcom/sec/samsung/gallery/lib/factory/PointerIconWrapper;->POINTER_ICON_HOVER_PEN_SELECT:I

    const/16 v0, 0x4e2b

    sput v0, Lcom/sec/samsung/gallery/lib/factory/PointerIconWrapper;->HOVERING_SCROLLICON_UP:I

    const/16 v0, 0x4e2f

    sput v0, Lcom/sec/samsung/gallery/lib/factory/PointerIconWrapper;->HOVERING_SCROLLICON_DOWN:I

    const/16 v0, 0x4e31

    sput v0, Lcom/sec/samsung/gallery/lib/factory/PointerIconWrapper;->HOVERING_SCROLLICON_LEFT:I

    const/16 v0, 0x4e2d

    sput v0, Lcom/sec/samsung/gallery/lib/factory/PointerIconWrapper;->HOVERING_SCROLLICON_RIGHT:I

    const/16 v0, 0x3e8

    sput v0, Lcom/sec/samsung/gallery/lib/factory/PointerIconWrapper;->MOUSE_HOVERING_DEFAULT:I

    const/16 v0, 0x3f6

    sput v0, Lcom/sec/samsung/gallery/lib/factory/PointerIconWrapper;->MOUSE_HOVERING_HORIZONTAL_DOUBLE_ARROW:I

    const/16 v0, 0x3f7

    sput v0, Lcom/sec/samsung/gallery/lib/factory/PointerIconWrapper;->MOUSE_HOVERING_VERTICAL_DOUBLE_ARROW:I

    const/16 v0, 0x3f9

    sput v0, Lcom/sec/samsung/gallery/lib/factory/PointerIconWrapper;->MOUSE_HOVERING_TOP_LEFT_DIAGONAL_DOUBLE_ARROW:I

    const/16 v0, 0x3f8

    sput v0, Lcom/sec/samsung/gallery/lib/factory/PointerIconWrapper;->MOUSE_HOVERING_TOP_RIGHT_DIAGONAL_DOUBLE_ARROW:I

    const/16 v0, 0x3f5

    sput v0, Lcom/sec/samsung/gallery/lib/factory/PointerIconWrapper;->MOUSE_HOVERING_ALL_SCROLL:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setIcon(Landroid/content/Context;Landroid/view/View;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lcom/sec/samsung/gallery/lib/se/SePointerIconManager;->setIcon(Landroid/content/Context;Landroid/view/View;II)V

    return-void
.end method
