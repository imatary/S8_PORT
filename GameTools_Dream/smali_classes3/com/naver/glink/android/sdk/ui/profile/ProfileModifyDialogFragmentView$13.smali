.class Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView$13;
.super Ljava/lang/Object;
.source "ProfileModifyDialogFragmentView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->a(Landroid/view/View;Landroid/os/Bundle;)V
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

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView$13;->a:Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView$13;->a:Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->c(Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;)Lcom/naver/glink/android/sdk/ui/profile/a;

    move-result-object v0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView$13;->a:Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;

    invoke-static {v1}, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->d(Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView$13;->a:Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;

    invoke-static {v2}, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->b(Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;)Lcom/naver/glink/android/sdk/api/Responses$MemberResponse;

    move-result-object v2

    iget-object v3, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView$13;->a:Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;

    invoke-static {v3}, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->e(Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView$13;->a:Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;

    invoke-static {v4}, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->f(Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView$13;->a:Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;

    invoke-virtual {v5}, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/naver/glink/android/sdk/ui/profile/a;->a(Ljava/lang/String;Lcom/naver/glink/android/sdk/api/Responses$MemberResponse;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView$13;->a:Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->c()V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView$13;->a:Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->b(Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;Z)Z

    return-void
.end method
