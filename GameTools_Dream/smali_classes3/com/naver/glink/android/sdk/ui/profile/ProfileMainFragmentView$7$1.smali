.class Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView$7$1;
.super Ljava/lang/Object;
.source "ProfileMainFragmentView.java"

# interfaces
.implements Lcom/naver/glink/android/sdk/Glink$OnLoggedInListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView$7;->a(Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView$7;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView$7;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView$7$1;->a:Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoggedIn(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView$7$1;->a:Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView$7;

    iget-object v0, v0, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView$7;->a:Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->f(Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;)Landroid/support/v4/widget/SwipeRefreshLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView$7$1;->a:Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView$7;

    iget-object v0, v0, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView$7;->a:Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->e()V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView$7$1;->a:Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView$7;

    iget-object v0, v0, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView$7;->a:Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->c()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView$7$1;->a:Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView$7;

    iget-object v0, v0, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView$7;->a:Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/naver/glink/android/sdk/a/i;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView$7$1;->a:Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView$7;

    iget-object v0, v0, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView$7;->a:Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;

    sget v1, Lcom/naver/glink/android/sdk/R$string;->network_error:I

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->b(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView$7$1;->a:Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView$7;

    iget-object v0, v0, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView$7;->a:Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->f(Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;)Landroid/support/v4/widget/SwipeRefreshLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView$7$1;->a:Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView$7;

    iget-object v0, v0, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView$7;->a:Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->l(Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;)V

    goto :goto_0
.end method
