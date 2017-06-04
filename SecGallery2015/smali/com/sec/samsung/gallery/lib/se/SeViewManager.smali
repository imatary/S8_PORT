.class public Lcom/sec/samsung/gallery/lib/se/SeViewManager;
.super Ljava/lang/Object;
.source "SeViewManager.java"

# interfaces
.implements Lcom/sec/samsung/gallery/lib/libinterface/ViewInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addStrokeTextEffect(Landroid/widget/RemoteViews;IFIF)V
    .locals 0

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/widget/RemoteViews;->semAddStrokeTextEffect(IFIF)V

    return-void
.end method

.method public addStrokeTextEffect(Landroid/widget/TextView;FIF)V
    .locals 0

    invoke-virtual {p1, p2, p3, p4}, Landroid/widget/TextView;->semAddStrokeTextEffect(FIF)I

    return-void
.end method

.method public clearAllTextEffect(Landroid/widget/TextView;)V
    .locals 0

    invoke-virtual {p1}, Landroid/widget/TextView;->semClearAllTextEffect()V

    return-void
.end method

.method public getDragAndDropFlag()I
    .locals 1

    const/16 v0, 0x101

    return v0
.end method

.method public setHoverPopupType(Landroid/view/View;I)V
    .locals 1

    const/4 v0, 0x1

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p1, v0}, Landroid/view/View;->semSetHoverPopupType(I)V

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->semSetHoverPopupType(I)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1, v0}, Landroid/view/View;->semSetHoverPopupType(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
