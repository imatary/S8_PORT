.class public abstract Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView;
.super Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;
.source "PlugFragmentView.java"


# instance fields
.field private a:Landroid/view/ViewGroup;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final varargs a(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 2

    invoke-super {p0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;->a()V

    invoke-static {p0}, Lcom/naver/glink/android/sdk/a/a;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;->a(Landroid/view/View;Landroid/os/Bundle;)V

    sget v0, Lcom/naver/glink/android/sdk/R$id;->fragment_error_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView;->a:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView;->a:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView;->a:Landroid/view/ViewGroup;

    sget v1, Lcom/naver/glink/android/sdk/R$id;->retry:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->c()Lcom/naver/glink/android/sdk/configure/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/naver/glink/android/sdk/configure/d;->f(Landroid/view/View;)V

    new-instance v1, Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView$1;

    invoke-direct {v1, p0}, Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView$1;-><init>(Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView;->a:Landroid/view/ViewGroup;

    sget v1, Lcom/naver/glink/android/sdk/R$id;->btn_login:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->c()Lcom/naver/glink/android/sdk/configure/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/naver/glink/android/sdk/configure/d;->f(Landroid/view/View;)V

    new-instance v1, Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView$2;

    invoke-direct {v1, p0}, Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView$2;-><init>(Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView;->a:Landroid/view/ViewGroup;

    sget v1, Lcom/naver/glink/android/sdk/R$id;->btn_logout:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->c()Lcom/naver/glink/android/sdk/configure/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/naver/glink/android/sdk/configure/d;->f(Landroid/view/View;)V

    new-instance v1, Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView$3;

    invoke-direct {v1, p0}, Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView$3;-><init>(Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/widget/EditText;)V
    .locals 1

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/naver/glink/android/sdk/a/h;->a(Landroid/content/Context;Landroid/widget/EditText;)V

    return-void
.end method

.method public a(Lcom/naver/glink/android/sdk/api/Response;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/naver/glink/android/sdk/api/Response;->hasErrorMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/naver/glink/android/sdk/api/Response;->getError()Lcom/naver/glink/android/sdk/api/GlinkError;

    move-result-object v0

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/api/GlinkError;->isLoginError()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/naver/glink/android/sdk/api/Response;->getErrorMessage(Landroid/content/Context;Lcom/naver/glink/android/sdk/api/Response;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/naver/glink/android/sdk/api/Response;->hasErrorMessage()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/naver/glink/android/sdk/api/Response;->getError()Lcom/naver/glink/android/sdk/api/GlinkError;

    move-result-object v0

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/api/GlinkError;->isCloseMemberError()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/naver/glink/android/sdk/api/Response;->getErrorMessage(Landroid/content/Context;Lcom/naver/glink/android/sdk/api/Response;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/naver/glink/android/sdk/api/Response;->getErrorMessage(Landroid/content/Context;Lcom/naver/glink/android/sdk/api/Response;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/Object;)V
    .locals 0

    invoke-static {p1}, Lcom/naver/glink/android/sdk/a/a;->c(Ljava/lang/Object;)V

    return-void
.end method

.method protected a(Ljava/lang/Runnable;)V
    .locals 1

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x0

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/naver/glink/android/sdk/R$string;->network_error:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView;->c(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView;->a:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView;->a:Landroid/view/ViewGroup;

    sget v1, Lcom/naver/glink/android/sdk/R$id;->message:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView;->a:Landroid/view/ViewGroup;

    sget v1, Lcom/naver/glink/android/sdk/R$id;->retry:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView;->a:Landroid/view/ViewGroup;

    sget v1, Lcom/naver/glink/android/sdk/R$id;->btn_login:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView;->a:Landroid/view/ViewGroup;

    sget v1, Lcom/naver/glink/android/sdk/R$id;->btn_logout:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method public b()V
    .locals 0

    invoke-super {p0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;->b()V

    invoke-static {p0}, Lcom/naver/glink/android/sdk/a/a;->b(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView;->g()V

    invoke-static {}, Lcom/naver/glink/android/sdk/ui/tabs/b;->i()V

    return-void
.end method

.method public b(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView;->c(Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x0

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/naver/glink/android/sdk/R$string;->network_error:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView;->c(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView;->a:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView;->a:Landroid/view/ViewGroup;

    sget v1, Lcom/naver/glink/android/sdk/R$id;->message:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView;->a:Landroid/view/ViewGroup;

    sget v1, Lcom/naver/glink/android/sdk/R$id;->retry:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView;->a:Landroid/view/ViewGroup;

    sget v1, Lcom/naver/glink/android/sdk/R$id;->btn_login:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView;->a:Landroid/view/ViewGroup;

    sget v1, Lcom/naver/glink/android/sdk/R$id;->btn_logout:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method public final c(I)Ljava/lang/String;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x0

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/naver/glink/android/sdk/R$string;->network_error:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView;->c(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView;->a:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView;->a:Landroid/view/ViewGroup;

    sget v1, Lcom/naver/glink/android/sdk/R$id;->message:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView;->a:Landroid/view/ViewGroup;

    sget v1, Lcom/naver/glink/android/sdk/R$id;->retry:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView;->a:Landroid/view/ViewGroup;

    sget v1, Lcom/naver/glink/android/sdk/R$id;->btn_login:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView;->a:Landroid/view/ViewGroup;

    sget v1, Lcom/naver/glink/android/sdk/R$id;->btn_logout:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method public f()V
    .locals 2

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView;->a:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView;->a:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public g()V
    .locals 1

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/naver/glink/android/sdk/a/h;->a(Landroid/content/Context;Landroid/view/ViewGroup;)V

    return-void
.end method

.method public h()V
    .locals 0

    return-void
.end method

.method public i()V
    .locals 0

    return-void
.end method
