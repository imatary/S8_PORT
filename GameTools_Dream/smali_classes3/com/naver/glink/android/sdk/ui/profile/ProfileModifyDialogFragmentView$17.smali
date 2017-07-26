.class Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView$17;
.super Ljava/lang/Object;
.source "ProfileModifyDialogFragmentView.java"

# interfaces
.implements Lcom/naver/glink/android/sdk/ui/profile/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView$17;->a:Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView$17;->a:Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->i(Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public a(Lcom/naver/glink/android/sdk/api/Response;)V
    .locals 6

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView$17;->a:Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->b(Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;)Lcom/naver/glink/android/sdk/api/Responses$MemberResponse;

    move-result-object v0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView$17;->a:Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;

    invoke-static {v1}, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->d(Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/naver/glink/android/sdk/api/Responses$MemberResponse;->nickname:Ljava/lang/String;

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView$17;->a:Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->c(Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;)Lcom/naver/glink/android/sdk/ui/profile/a;

    move-result-object v0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView$17;->a:Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;

    invoke-static {v1}, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->b(Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;)Lcom/naver/glink/android/sdk/api/Responses$MemberResponse;

    move-result-object v1

    iget-object v1, v1, Lcom/naver/glink/android/sdk/api/Responses$MemberResponse;->nickname:Ljava/lang/String;

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView$17;->a:Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;

    invoke-static {v2}, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->a(Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    iget-object v4, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView$17;->a:Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;

    invoke-static {v4}, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->b(Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;)Lcom/naver/glink/android/sdk/api/Responses$MemberResponse;

    move-result-object v4

    iget-object v5, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView$17;->a:Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;

    invoke-virtual {v5}, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/naver/glink/android/sdk/ui/profile/a;->a(Ljava/lang/String;ZZLcom/naver/glink/android/sdk/api/Responses$MemberResponse;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView$17;->a:Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView$17;->a:Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;

    invoke-virtual {v1}, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/naver/glink/android/sdk/R$string;->modify_complete_message:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView$17;->a:Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->dismiss()V

    return-void

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method public a(Lcom/naver/glink/android/sdk/api/Response;Lcom/android/volley/VolleyError;)V
    .locals 2

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView$17;->a:Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/naver/glink/android/sdk/api/Response;->getError()Lcom/naver/glink/android/sdk/api/GlinkError;

    move-result-object v1

    iget-object v1, v1, Lcom/naver/glink/android/sdk/api/GlinkError;->errorMessage:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/naver/glink/android/sdk/api/Responses$AvailableResponse;Ljava/lang/String;ZI)V
    .locals 2

    new-instance v0, Lcom/naver/glink/android/sdk/a/p;

    invoke-direct {v0}, Lcom/naver/glink/android/sdk/a/p;-><init>()V

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView$17;->a:Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;

    invoke-virtual {v1}, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p4}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, p2, v1}, Lcom/naver/glink/android/sdk/a/p;->a(Ljava/lang/String;I)Lcom/naver/glink/android/sdk/a/p;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView$17;->a:Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;

    invoke-static {v1}, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->j(Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/a/p;->a()Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView$17;->a:Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;

    invoke-static {v0, p3}, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->a(Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;Z)Z

    :cond_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView$17;->a:Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->i(Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method
