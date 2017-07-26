.class Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView$3$1;
.super Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView$a;
.source "ProfileMainFragmentView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView$3;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView$3;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView$3;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView$3$1;->a:Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView$3;

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/DialogInterface;I)V
    .locals 3

    invoke-static {}, Lcom/naver/glink/android/sdk/login/LoginHelper;->a()Lcom/naver/glink/android/sdk/login/LoginHelper$LoginType;

    move-result-object v0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView$3$1;->a:Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView$3;

    iget-object v1, v1, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView$3;->a:Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;

    invoke-virtual {v1}, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/login/LoginHelper$LoginType;->logout(Landroid/content/Context;)V

    sget-object v0, Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;->HOME:Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/tabs/b;->a(Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView$3$1;->a:Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView$3;

    iget-object v0, v0, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView$3;->a:Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView$3$1;->a:Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView$3;

    iget-object v1, v1, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView$3;->a:Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;

    sget v2, Lcom/naver/glink/android/sdk/R$string;->logout_complete_message:I

    invoke-virtual {v1, v2}, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->c(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView$3$1;->a:Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView$3;

    iget-object v0, v0, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView$3;->a:Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->i(Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;)Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView$3$1;->a:Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView$3;

    iget-object v0, v0, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView$3;->a:Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->j(Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView$3$1;->a:Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView$3;

    iget-object v1, v1, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView$3;->a:Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;

    invoke-static {v1}, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->i(Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;)Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView$3$1;->a:Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView$3;

    iget-object v0, v0, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView$3;->a:Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->a(Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;)Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;

    return-void
.end method
