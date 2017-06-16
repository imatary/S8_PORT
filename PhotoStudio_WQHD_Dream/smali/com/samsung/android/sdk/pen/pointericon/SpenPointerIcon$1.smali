.class Lcom/samsung/android/sdk/pen/pointericon/SpenPointerIcon$1;
.super Ljava/lang/Object;
.source "SpenPointerIcon.java"

# interfaces
.implements Landroid/view/View$OnHoverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/pen/pointericon/SpenPointerIcon;->setPointerIcon(Landroid/graphics/drawable/Drawable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/pen/pointericon/SpenPointerIcon;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/pen/pointericon/SpenPointerIcon;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/pointericon/SpenPointerIcon$1;->this$0:Lcom/samsung/android/sdk/pen/pointericon/SpenPointerIcon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8

    const/4 v7, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    return v7

    :pswitch_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/pointericon/SpenPointerIcon$1;->this$0:Lcom/samsung/android/sdk/pen/pointericon/SpenPointerIcon;

    # getter for: Lcom/samsung/android/sdk/pen/pointericon/SpenPointerIcon;->mPointerIconWrapper:Lcom/samsung/android/spen/libwrapper/PointerIconWrapper;
    invoke-static {v1}, Lcom/samsung/android/sdk/pen/pointericon/SpenPointerIcon;->access$200(Lcom/samsung/android/sdk/pen/pointericon/SpenPointerIcon;)Lcom/samsung/android/spen/libwrapper/PointerIconWrapper;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/pointericon/SpenPointerIcon$1;->this$0:Lcom/samsung/android/sdk/pen/pointericon/SpenPointerIcon;

    # getter for: Lcom/samsung/android/sdk/pen/pointericon/SpenPointerIcon;->mView:Landroid/view/View;
    invoke-static {v2}, Lcom/samsung/android/sdk/pen/pointericon/SpenPointerIcon;->access$000(Lcom/samsung/android/sdk/pen/pointericon/SpenPointerIcon;)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/pointericon/SpenPointerIcon$1;->this$0:Lcom/samsung/android/sdk/pen/pointericon/SpenPointerIcon;

    # getter for: Lcom/samsung/android/sdk/pen/pointericon/SpenPointerIcon;->mDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v3}, Lcom/samsung/android/sdk/pen/pointericon/SpenPointerIcon;->access$100(Lcom/samsung/android/sdk/pen/pointericon/SpenPointerIcon;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    new-instance v4, Landroid/graphics/Point;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/spen/libwrapper/PointerIconWrapper;->setHoveringSpenIcon(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/Point;)V
    :try_end_0
    .catch Lcom/samsung/android/spen/libwrapper/utils/PlatformException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;->printStackTrace()V

    goto :goto_0

    :pswitch_1
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/pointericon/SpenPointerIcon$1;->this$0:Lcom/samsung/android/sdk/pen/pointericon/SpenPointerIcon;

    # getter for: Lcom/samsung/android/sdk/pen/pointericon/SpenPointerIcon;->mPointerIconWrapper:Lcom/samsung/android/spen/libwrapper/PointerIconWrapper;
    invoke-static {v1}, Lcom/samsung/android/sdk/pen/pointericon/SpenPointerIcon;->access$200(Lcom/samsung/android/sdk/pen/pointericon/SpenPointerIcon;)Lcom/samsung/android/spen/libwrapper/PointerIconWrapper;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/pointericon/SpenPointerIcon$1;->this$0:Lcom/samsung/android/sdk/pen/pointericon/SpenPointerIcon;

    # getter for: Lcom/samsung/android/sdk/pen/pointericon/SpenPointerIcon;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/samsung/android/sdk/pen/pointericon/SpenPointerIcon;->access$300(Lcom/samsung/android/sdk/pen/pointericon/SpenPointerIcon;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/pointericon/SpenPointerIcon$1;->this$0:Lcom/samsung/android/sdk/pen/pointericon/SpenPointerIcon;

    # getter for: Lcom/samsung/android/sdk/pen/pointericon/SpenPointerIcon;->mView:Landroid/view/View;
    invoke-static {v3}, Lcom/samsung/android/sdk/pen/pointericon/SpenPointerIcon;->access$000(Lcom/samsung/android/sdk/pen/pointericon/SpenPointerIcon;)Landroid/view/View;

    move-result-object v3

    sget v4, Lcom/samsung/android/spen/libwrapper/PointerIconWrapper;->HOVERING_SPENICON_DEFAULT:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/spen/libwrapper/PointerIconWrapper;->setHoveringSpenIcon(Landroid/content/Context;Landroid/view/View;I)V
    :try_end_1
    .catch Lcom/samsung/android/spen/libwrapper/utils/PlatformException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;->printStackTrace()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
