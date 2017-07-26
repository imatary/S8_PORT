.class public Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;
.super Landroid/widget/FrameLayout;
.source "FragmentView.java"


# static fields
.field private static final a:Ljava/lang/String; = "PlugView"

.field private static b:Ljava/lang/String;


# instance fields
.field private c:Landroid/view/ViewGroup;

.field private d:Landroid/os/Bundle;

.field protected e:Landroid/os/Bundle;

.field f:Z

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "bundle_super"

    sput-object v0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;->a(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;->f:Z

    return-void
.end method

.method protected a(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/ItemsDialogFragmentView;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2, p3, p4}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/ItemsDialogFragmentView;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;I)V

    :cond_0
    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Runnable;",
            ">;>;)V"
        }
    .end annotation

    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;->a(Ljava/lang/String;Ljava/util/List;I)V

    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Runnable;",
            ">;>;I)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/ItemsDialogFragmentView;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;I)V

    :cond_0
    return-void
.end method

.method public a_()V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;->f:Z

    return-void
.end method

.method public b_()V
    .locals 3

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;->e:Landroid/os/Bundle;

    invoke-virtual {p0, v0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;->a(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    invoke-virtual {p0, v0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;->a(Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;->j()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    const/16 v2, 0x11

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p0, v0, v1}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;->e:Landroid/os/Bundle;

    invoke-virtual {p0, v0, v1}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;->a(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;->k()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;->a()V

    :cond_1
    return-void
.end method

.method public c_()V
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;->c:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public d_()V
    .locals 0

    return-void
.end method

.method public dispatchWindowFocusChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchWindowFocusChanged(Z)V

    return-void
.end method

.method public getArguments()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;->d:Landroid/os/Bundle;

    return-object v0
.end method

.method public getDeepestFocusedChild()Landroid/view/View;
    .locals 3

    const/4 v1, 0x0

    move-object v0, p0

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_1
    return-object v0

    :cond_0
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method public getParentView()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;->c:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public isAttachedToWindow()Z
    .locals 1

    iget-boolean v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;->g:Z

    return v0
.end method

.method protected j()Landroid/widget/FrameLayout$LayoutParams;
    .locals 2

    const/4 v1, -0x1

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public k()Z
    .locals 1

    iget-boolean v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;->f:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;->g:Z

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;->b_()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;->g:Z

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;->b()V

    :cond_0
    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;->d_()V

    invoke-static {}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;->a()Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;->a(Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;)Ljava/lang/String;

    invoke-static {}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;->a()Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;->b(Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;)V

    iput-object v1, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;->c:Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;->d:Landroid/os/Bundle;

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    instance-of v0, p1, Landroid/os/Bundle;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/os/Bundle;

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;->e:Landroid/os/Bundle;

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;->e:Landroid/os/Bundle;

    sget-object v1, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;->e:Landroid/os/Bundle;

    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;->e:Landroid/os/Bundle;

    sget-object v2, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;->e:Landroid/os/Bundle;

    return-object v0
.end method

.method public setArguments(Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;->d:Landroid/os/Bundle;

    return-void
.end method

.method public setParentView(Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;->c:Landroid/view/ViewGroup;

    return-void
.end method
