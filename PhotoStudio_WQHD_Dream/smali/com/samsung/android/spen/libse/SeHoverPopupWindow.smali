.class public Lcom/samsung/android/spen/libse/SeHoverPopupWindow;
.super Ljava/lang/Object;
.source "SeHoverPopupWindow.java"

# interfaces
.implements Lcom/samsung/android/spen/libinterface/HoverPopupWindowInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/spen/libse/SeHoverPopupWindow$Gravity;
    }
.end annotation


# static fields
.field public static TYPE_NONE:I

.field public static TYPE_TOOLTIP:I

.field public static TYPE_USER_CUSTOM:I

.field public static TYPE_WIDGET_DEFAULT:I


# instance fields
.field instance:Lcom/samsung/android/widget/SemHoverPopupWindow;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/samsung/android/spen/libse/SeHoverPopupWindow;->TYPE_NONE:I

    const/4 v0, 0x1

    sput v0, Lcom/samsung/android/spen/libse/SeHoverPopupWindow;->TYPE_TOOLTIP:I

    const/4 v0, 0x3

    sput v0, Lcom/samsung/android/spen/libse/SeHoverPopupWindow;->TYPE_USER_CUSTOM:I

    const/4 v0, 0x2

    sput v0, Lcom/samsung/android/spen/libse/SeHoverPopupWindow;->TYPE_WIDGET_DEFAULT:I

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/widget/SemHoverPopupWindow;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/spen/libse/SeHoverPopupWindow;->instance:Lcom/samsung/android/widget/SemHoverPopupWindow;

    iput-object p1, p0, Lcom/samsung/android/spen/libse/SeHoverPopupWindow;->instance:Lcom/samsung/android/widget/SemHoverPopupWindow;

    return-void
.end method


# virtual methods
.method public setContent(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/spen/libse/SeHoverPopupWindow;->instance:Lcom/samsung/android/widget/SemHoverPopupWindow;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/spen/libse/SeHoverPopupWindow;->instance:Lcom/samsung/android/widget/SemHoverPopupWindow;

    invoke-virtual {v1, p1}, Lcom/samsung/android/widget/SemHoverPopupWindow;->setContent(Landroid/view/View;)V
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

.method public setContent(Ljava/lang/CharSequence;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/spen/libse/SeHoverPopupWindow;->instance:Lcom/samsung/android/widget/SemHoverPopupWindow;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/spen/libse/SeHoverPopupWindow;->instance:Lcom/samsung/android/widget/SemHoverPopupWindow;

    invoke-virtual {v1, p1}, Lcom/samsung/android/widget/SemHoverPopupWindow;->setContent(Ljava/lang/CharSequence;)V
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

.method public setGravity(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/spen/libse/SeHoverPopupWindow;->instance:Lcom/samsung/android/widget/SemHoverPopupWindow;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/spen/libse/SeHoverPopupWindow;->instance:Lcom/samsung/android/widget/SemHoverPopupWindow;

    invoke-virtual {v1, p1}, Lcom/samsung/android/widget/SemHoverPopupWindow;->setGravity(I)V
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

.method public setHoverPopupListener(Lcom/samsung/android/spen/libinterface/HoverPopupWindowInterface$HoverPopupWindowListenerCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    :try_start_0
    new-instance v1, Lcom/samsung/android/spen/libse/SeHoverPopupWindow$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/spen/libse/SeHoverPopupWindow$1;-><init>(Lcom/samsung/android/spen/libse/SeHoverPopupWindow;Lcom/samsung/android/spen/libinterface/HoverPopupWindowInterface$HoverPopupWindowListenerCallback;)V
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

.method public setOffset(II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/spen/libse/SeHoverPopupWindow;->instance:Lcom/samsung/android/widget/SemHoverPopupWindow;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/spen/libse/SeHoverPopupWindow;->instance:Lcom/samsung/android/widget/SemHoverPopupWindow;

    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/widget/SemHoverPopupWindow;->setOffset(II)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    return-void

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    :goto_0
    throw v0

    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method public show()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/spen/libse/SeHoverPopupWindow;->instance:Lcom/samsung/android/widget/SemHoverPopupWindow;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/spen/libse/SeHoverPopupWindow;->instance:Lcom/samsung/android/widget/SemHoverPopupWindow;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemHoverPopupWindow;->show()V
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

.method public show(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/spen/libse/SeHoverPopupWindow;->instance:Lcom/samsung/android/widget/SemHoverPopupWindow;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/spen/libse/SeHoverPopupWindow;->instance:Lcom/samsung/android/widget/SemHoverPopupWindow;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemHoverPopupWindow;->show()V
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
