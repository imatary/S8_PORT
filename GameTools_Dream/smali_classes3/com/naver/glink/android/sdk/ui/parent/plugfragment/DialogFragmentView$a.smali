.class Lcom/naver/glink/android/sdk/ui/parent/plugfragment/DialogFragmentView$a;
.super Landroid/app/Dialog;
.source "DialogFragmentView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naver/glink/android/sdk/ui/parent/plugfragment/DialogFragmentView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/naver/glink/android/sdk/ui/parent/plugfragment/DialogFragmentView;


# direct methods
.method public constructor <init>(Lcom/naver/glink/android/sdk/ui/parent/plugfragment/DialogFragmentView;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/DialogFragmentView$a;->a:Lcom/naver/glink/android/sdk/ui/parent/plugfragment/DialogFragmentView;

    invoke-direct {p0, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/DialogFragmentView$a;->a:Lcom/naver/glink/android/sdk/ui/parent/plugfragment/DialogFragmentView;

    invoke-virtual {v0, p1}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/DialogFragmentView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
