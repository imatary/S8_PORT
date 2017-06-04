.class public Lcom/sec/samsung/gallery/lib/se/SeHoverPopupWindowManager;
.super Ljava/lang/Object;
.source "SeHoverPopupWindowManager.java"

# interfaces
.implements Lcom/sec/samsung/gallery/lib/libinterface/HoverPopupWindowInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dismiss(Landroid/view/View;)V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->semGetHoverPopup(Z)Lcom/samsung/android/widget/SemHoverPopupWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public setPopupGravity(Landroid/widget/EditText;)V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->semGetHoverPopup(Z)Lcom/samsung/android/widget/SemHoverPopupWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x5050

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemHoverPopupWindow;->setGravity(I)V

    :cond_0
    return-void
.end method

.method public show(Landroid/view/View;)V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->semGetHoverPopup(Z)Lcom/samsung/android/widget/SemHoverPopupWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->show()V

    :cond_0
    return-void
.end method
