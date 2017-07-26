.class public Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a/c;
.super Landroid/app/Fragment;
.source "LifecycleFragment.java"


# instance fields
.field private a:Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method public static a()Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a/c;
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a/c;

    invoke-direct {v1}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a/c;-><init>()V

    invoke-virtual {v1, v0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a/c;->setArguments(Landroid/os/Bundle;)V

    return-object v1
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a/c;->a:Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a/c;->a:Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a/b;

    invoke-interface {v0, p1, p2, p3}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a/b;->a(IILandroid/content/Intent;)V

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a/c;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a/c;->a:Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a/c;->a:Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a/b;

    invoke-interface {v0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a/b;->c()V

    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onLowMemory()V
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a/c;->a:Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a/c;->a:Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a/b;

    invoke-interface {v0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a/b;->d()V

    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onLowMemory()V

    return-void
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a/c;->a:Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a/c;->a:Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a/b;

    invoke-interface {v0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a/b;->b()V

    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a/c;->a:Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a/c;->a:Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a/b;

    invoke-interface {v0, p1, p2, p3}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a/b;->a(I[Ljava/lang/String;[I)V

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method

.method public onResume()V
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a/c;->a:Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a/c;->a:Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a/b;

    invoke-interface {v0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a/b;->a()V

    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a/c;->a:Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a/c;->a:Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a/b;

    invoke-interface {v0, p1}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a/b;->a(I)V

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Fragment;->onTrimMemory(I)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    new-instance v0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a/a;

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a/c;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a/a;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a/c;->a:Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a/b;

    return-void
.end method
