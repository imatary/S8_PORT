.class public Lcom/samsung/android/spen/libsdl/SdlView;
.super Ljava/lang/Object;
.source "SdlView.java"

# interfaces
.implements Lcom/samsung/android/spen/libinterface/ViewInterface;


# instance fields
.field private instance:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/spen/libsdl/SdlView;->instance:Landroid/view/View;

    iput-object p1, p0, Lcom/samsung/android/spen/libsdl/SdlView;->instance:Landroid/view/View;

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
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    :try_start_0
    new-instance v1, Lcom/samsung/android/spen/libsdl/SdlHoverPopupWindow;

    iget-object v2, p0, Lcom/samsung/android/spen/libsdl/SdlView;->instance:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/spen/libsdl/SdlHoverPopupWindow;-><init>(Landroid/widget/HoverPopupWindow;)V
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
    iget-object v1, p0, Lcom/samsung/android/spen/libsdl/SdlView;->instance:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setHoverPopupType(I)V
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
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method public setPointerIcon(Landroid/content/res/Resources;Landroid/graphics/Bitmap;FF)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method
