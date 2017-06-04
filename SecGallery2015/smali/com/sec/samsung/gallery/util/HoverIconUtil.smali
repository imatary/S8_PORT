.class public Lcom/sec/samsung/gallery/util/HoverIconUtil;
.super Ljava/lang/Object;
.source "HoverIconUtil.java"


# static fields
.field private static final HOVERING_PENSELECT_POINTER_01:I = 0x15

.field private static final HOVERING_SCROLLICON_DOWN:I

.field private static final HOVERING_SCROLLICON_LEFT:I

.field private static final HOVERING_SCROLLICON_RIGHT:I

.field private static final HOVERING_SCROLLICON_UP:I

.field private static final HOVERING_SPENICON_DEFAULT:I = 0x1

.field private static final HOVERING_SPENICON_MORE:I = 0xa

.field private static final MOUSE_HOVERING_ALL_SCROLL:I

.field private static final MOUSE_HOVERING_DEFAULT:I

.field private static final MOUSE_HOVERING_HORIZONTAL_DOUBLE_ARROW:I

.field private static final MOUSE_HOVERING_TOP_LEFT_DIAGONAL_DOUBLE_ARROW:I

.field private static final MOUSE_HOVERING_TOP_RIGHT_DIAGONAL_DOUBLE_ARROW:I

.field private static final MOUSE_HOVERING_VERTICAL_DOUBLE_ARROW:I

.field private static final TAG:Ljava/lang/String; = "HoverIconUtil"

.field private static mHoveringIcon:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/sec/samsung/gallery/lib/factory/PointerIconWrapper;->HOVERING_SCROLLICON_UP:I

    sput v0, Lcom/sec/samsung/gallery/util/HoverIconUtil;->HOVERING_SCROLLICON_UP:I

    sget v0, Lcom/sec/samsung/gallery/lib/factory/PointerIconWrapper;->HOVERING_SCROLLICON_RIGHT:I

    sput v0, Lcom/sec/samsung/gallery/util/HoverIconUtil;->HOVERING_SCROLLICON_RIGHT:I

    sget v0, Lcom/sec/samsung/gallery/lib/factory/PointerIconWrapper;->HOVERING_SCROLLICON_DOWN:I

    sput v0, Lcom/sec/samsung/gallery/util/HoverIconUtil;->HOVERING_SCROLLICON_DOWN:I

    sget v0, Lcom/sec/samsung/gallery/lib/factory/PointerIconWrapper;->HOVERING_SCROLLICON_LEFT:I

    sput v0, Lcom/sec/samsung/gallery/util/HoverIconUtil;->HOVERING_SCROLLICON_LEFT:I

    sget v0, Lcom/sec/samsung/gallery/lib/factory/PointerIconWrapper;->MOUSE_HOVERING_DEFAULT:I

    sput v0, Lcom/sec/samsung/gallery/util/HoverIconUtil;->MOUSE_HOVERING_DEFAULT:I

    sget v0, Lcom/sec/samsung/gallery/lib/factory/PointerIconWrapper;->MOUSE_HOVERING_HORIZONTAL_DOUBLE_ARROW:I

    sput v0, Lcom/sec/samsung/gallery/util/HoverIconUtil;->MOUSE_HOVERING_HORIZONTAL_DOUBLE_ARROW:I

    sget v0, Lcom/sec/samsung/gallery/lib/factory/PointerIconWrapper;->MOUSE_HOVERING_VERTICAL_DOUBLE_ARROW:I

    sput v0, Lcom/sec/samsung/gallery/util/HoverIconUtil;->MOUSE_HOVERING_VERTICAL_DOUBLE_ARROW:I

    sget v0, Lcom/sec/samsung/gallery/lib/factory/PointerIconWrapper;->MOUSE_HOVERING_TOP_LEFT_DIAGONAL_DOUBLE_ARROW:I

    sput v0, Lcom/sec/samsung/gallery/util/HoverIconUtil;->MOUSE_HOVERING_TOP_LEFT_DIAGONAL_DOUBLE_ARROW:I

    sget v0, Lcom/sec/samsung/gallery/lib/factory/PointerIconWrapper;->MOUSE_HOVERING_TOP_RIGHT_DIAGONAL_DOUBLE_ARROW:I

    sput v0, Lcom/sec/samsung/gallery/util/HoverIconUtil;->MOUSE_HOVERING_TOP_RIGHT_DIAGONAL_DOUBLE_ARROW:I

    sget v0, Lcom/sec/samsung/gallery/lib/factory/PointerIconWrapper;->MOUSE_HOVERING_ALL_SCROLL:I

    sput v0, Lcom/sec/samsung/gallery/util/HoverIconUtil;->MOUSE_HOVERING_ALL_SCROLL:I

    const/4 v0, 0x1

    sput v0, Lcom/sec/samsung/gallery/util/HoverIconUtil;->mHoveringIcon:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isHoveringIconDefault()Z
    .locals 2

    const/4 v0, 0x1

    sget v1, Lcom/sec/samsung/gallery/util/HoverIconUtil;->mHoveringIcon:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isHoveringIconMore()Z
    .locals 2

    sget v0, Lcom/sec/samsung/gallery/util/HoverIconUtil;->mHoveringIcon:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isHoveringIconPenSelect()Z
    .locals 2

    sget v0, Lcom/sec/samsung/gallery/util/HoverIconUtil;->mHoveringIcon:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isHoveringIconPenSelectView(Landroid/content/Context;)Z
    .locals 6

    move-object v5, p0

    check-cast v5, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v1

    check-cast p0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isPickMode()Z

    move-result v3

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isMultiPickMode()Z

    move-result v2

    :cond_0
    const/4 v4, 0x1

    if-eqz v1, :cond_2

    instance-of v5, v1, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    if-nez v5, :cond_2

    instance-of v5, v1, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    if-eqz v5, :cond_1

    move-object v5, v1

    check-cast v5, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->isSupportPenSelect()Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    instance-of v5, v1, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    if-nez v5, :cond_2

    instance-of v5, v1, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;

    if-nez v5, :cond_2

    if-nez v3, :cond_2

    if-eqz v2, :cond_3

    instance-of v5, v1, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    if-eqz v5, :cond_3

    :cond_2
    const/4 v4, 0x0

    :cond_3
    return v4
.end method

.method public static setHoveringIconTo(Landroid/content/Context;Landroid/view/View;I)V
    .locals 4

    sget v1, Lcom/sec/samsung/gallery/util/HoverIconUtil;->mHoveringIcon:I

    packed-switch p2, :pswitch_data_0

    :goto_0
    sget v2, Lcom/sec/samsung/gallery/util/HoverIconUtil;->mHoveringIcon:I

    if-ne v2, v1, :cond_0

    :goto_1
    return-void

    :pswitch_0
    sget v1, Lcom/sec/samsung/gallery/util/HoverIconUtil;->HOVERING_SCROLLICON_UP:I

    goto :goto_0

    :pswitch_1
    sget v1, Lcom/sec/samsung/gallery/util/HoverIconUtil;->HOVERING_SCROLLICON_DOWN:I

    goto :goto_0

    :pswitch_2
    sget v1, Lcom/sec/samsung/gallery/util/HoverIconUtil;->HOVERING_SCROLLICON_LEFT:I

    goto :goto_0

    :pswitch_3
    sget v1, Lcom/sec/samsung/gallery/util/HoverIconUtil;->HOVERING_SCROLLICON_RIGHT:I

    goto :goto_0

    :cond_0
    sput v1, Lcom/sec/samsung/gallery/util/HoverIconUtil;->mHoveringIcon:I

    const/4 v2, 0x2

    :try_start_0
    sget v3, Lcom/sec/samsung/gallery/util/HoverIconUtil;->mHoveringIcon:I

    invoke-static {p0, p1, v2, v3}, Lcom/sec/samsung/gallery/lib/factory/PointerIconWrapper;->setIcon(Landroid/content/Context;Landroid/view/View;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "HoverIconUtil"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static setHoveringIconToDefault(Landroid/content/Context;Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x1

    sget v1, Lcom/sec/samsung/gallery/util/HoverIconUtil;->mHoveringIcon:I

    if-ne v1, v2, :cond_0

    :goto_0
    return-void

    :cond_0
    sput v2, Lcom/sec/samsung/gallery/util/HoverIconUtil;->mHoveringIcon:I

    const/4 v1, 0x2

    :try_start_0
    sget v2, Lcom/sec/samsung/gallery/lib/factory/PointerIconWrapper;->POINTER_ICON_HOVER_POINTER_DEFAULT:I

    invoke-static {p0, p1, v1, v2}, Lcom/sec/samsung/gallery/lib/factory/PointerIconWrapper;->setIcon(Landroid/content/Context;Landroid/view/View;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "HoverIconUtil"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setHoveringIconToMoreIcon(Landroid/content/Context;Landroid/view/View;)V
    .locals 3

    const/16 v1, 0xa

    sput v1, Lcom/sec/samsung/gallery/util/HoverIconUtil;->mHoveringIcon:I

    const/4 v1, 0x2

    :try_start_0
    sget v2, Lcom/sec/samsung/gallery/lib/factory/PointerIconWrapper;->POINTER_ICON_HOVER_POINTER_MORE:I

    invoke-static {p0, p1, v1, v2}, Lcom/sec/samsung/gallery/lib/factory/PointerIconWrapper;->setIcon(Landroid/content/Context;Landroid/view/View;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "HoverIconUtil"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setHoveringIconToPenSelect(Landroid/content/Context;Landroid/view/View;)V
    .locals 3

    const/16 v2, 0x15

    sget v1, Lcom/sec/samsung/gallery/util/HoverIconUtil;->mHoveringIcon:I

    if-ne v1, v2, :cond_0

    :goto_0
    return-void

    :cond_0
    sput v2, Lcom/sec/samsung/gallery/util/HoverIconUtil;->mHoveringIcon:I

    const/4 v1, 0x2

    :try_start_0
    sget v2, Lcom/sec/samsung/gallery/lib/factory/PointerIconWrapper;->POINTER_ICON_HOVER_PEN_SELECT:I

    invoke-static {p0, p1, v1, v2}, Lcom/sec/samsung/gallery/lib/factory/PointerIconWrapper;->setIcon(Landroid/content/Context;Landroid/view/View;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "HoverIconUtil"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setMouseHoveringIconTo(Landroid/content/Context;Landroid/view/View;I)V
    .locals 4

    sget v1, Lcom/sec/samsung/gallery/util/HoverIconUtil;->mHoveringIcon:I

    packed-switch p2, :pswitch_data_0

    :goto_0
    sget v2, Lcom/sec/samsung/gallery/util/HoverIconUtil;->mHoveringIcon:I

    if-ne v2, v1, :cond_0

    :goto_1
    return-void

    :pswitch_0
    sget v1, Lcom/sec/samsung/gallery/lib/factory/PointerIconWrapper;->MOUSE_HOVERING_DEFAULT:I

    goto :goto_0

    :pswitch_1
    sget v1, Lcom/sec/samsung/gallery/lib/factory/PointerIconWrapper;->MOUSE_HOVERING_HORIZONTAL_DOUBLE_ARROW:I

    goto :goto_0

    :pswitch_2
    sget v1, Lcom/sec/samsung/gallery/lib/factory/PointerIconWrapper;->MOUSE_HOVERING_VERTICAL_DOUBLE_ARROW:I

    goto :goto_0

    :pswitch_3
    sget v1, Lcom/sec/samsung/gallery/lib/factory/PointerIconWrapper;->MOUSE_HOVERING_TOP_LEFT_DIAGONAL_DOUBLE_ARROW:I

    goto :goto_0

    :pswitch_4
    sget v1, Lcom/sec/samsung/gallery/lib/factory/PointerIconWrapper;->MOUSE_HOVERING_TOP_RIGHT_DIAGONAL_DOUBLE_ARROW:I

    goto :goto_0

    :pswitch_5
    sget v1, Lcom/sec/samsung/gallery/lib/factory/PointerIconWrapper;->MOUSE_HOVERING_ALL_SCROLL:I

    goto :goto_0

    :cond_0
    sput v1, Lcom/sec/samsung/gallery/util/HoverIconUtil;->mHoveringIcon:I

    const/4 v2, 0x3

    :try_start_0
    sget v3, Lcom/sec/samsung/gallery/util/HoverIconUtil;->mHoveringIcon:I

    invoke-static {p0, p1, v2, v3}, Lcom/sec/samsung/gallery/lib/factory/PointerIconWrapper;->setIcon(Landroid/content/Context;Landroid/view/View;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "HoverIconUtil"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
