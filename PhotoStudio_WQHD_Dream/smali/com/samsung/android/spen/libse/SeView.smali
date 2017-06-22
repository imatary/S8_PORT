.class public Lcom/samsung/android/spen/libse/SeView;
.super Ljava/lang/Object;
.source "SeView.java"

# interfaces
.implements Lcom/samsung/android/spen/libinterface/ViewInterface;


# instance fields
.field private instance:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/spen/libse/SeView;->instance:Landroid/view/View;

    iput-object p1, p0, Lcom/samsung/android/spen/libse/SeView;->instance:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public extractSmartClipData()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method public getHoverPopupWindow()Lcom/samsung/android/spen/libinterface/HoverPopupWindowInterface;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    :try_start_0
    new-instance v1, Lcom/samsung/android/spen/libse/SeHoverPopupWindow;

    iget-object v2, p0, Lcom/samsung/android/spen/libse/SeView;->instance:Landroid/view/View;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->semGetHoverPopup(Z)Lcom/samsung/android/widget/SemHoverPopupWindow;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/spen/libse/SeHoverPopupWindow;-><init>(Lcom/samsung/android/widget/SemHoverPopupWindow;)V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    :goto_0
    throw v0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public setHoverPopupType(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/spen/libse/SeView;->instance:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->semSetHoverPopupType(I)V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    :goto_0
    throw v0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public setPointerIcon(Landroid/content/Context;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/android/spen/libse/SeView;->instance:Landroid/view/View;

    const/4 v2, 0x2

    invoke-static {p1, p2}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/View;->semSetPointerIcon(ILandroid/view/PointerIcon;)V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    :goto_0
    throw v0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public setPointerIcon(Landroid/content/res/Resources;Landroid/graphics/Bitmap;FF)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/android/spen/libse/SeView;->instance:Landroid/view/View;

    const/4 v2, 0x2

    invoke-static {p2, p3, p4}, Landroid/view/PointerIcon;->create(Landroid/graphics/Bitmap;FF)Landroid/view/PointerIcon;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/View;->semSetPointerIcon(ILandroid/view/PointerIcon;)V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    :goto_0
    throw v0

    :catch_1
    move-exception v0

    goto :goto_0
.end method
