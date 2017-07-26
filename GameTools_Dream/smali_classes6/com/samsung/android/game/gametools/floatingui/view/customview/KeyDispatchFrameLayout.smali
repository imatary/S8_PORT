.class public Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchFrameLayout;
.super Landroid/widget/FrameLayout;
.source "KeyDispatchFrameLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchFrameLayout$DispatchKeyListener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchFrameLayout$DispatchKeyListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchFrameLayout;->mListener:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchFrameLayout$DispatchKeyListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchFrameLayout;->mListener:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchFrameLayout$DispatchKeyListener;

    invoke-interface {v1, p1}, Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchFrameLayout$DispatchKeyListener;->onDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setDispatchKeyListener(Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchFrameLayout$DispatchKeyListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchFrameLayout;->mListener:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchFrameLayout$DispatchKeyListener;

    return-void
.end method
