.class Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView$1;
.super Lcom/naver/glink/android/sdk/a/e;
.source "ProfileModifyDialogFragmentView.java"


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

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView$1;->a:Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/a/e;-><init>()V

    return-void
.end method


# virtual methods
.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 6

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView$1;->a:Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->c(Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;)Lcom/naver/glink/android/sdk/ui/profile/a;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView$1;->a:Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;

    invoke-static {v2}, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->a(Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;)Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    iget-object v4, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView$1;->a:Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;

    invoke-static {v4}, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->b(Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;)Lcom/naver/glink/android/sdk/api/Responses$MemberResponse;

    move-result-object v4

    iget-object v5, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView$1;->a:Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;

    invoke-virtual {v5}, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/naver/glink/android/sdk/ui/profile/a;->a(Ljava/lang/String;ZZLcom/naver/glink/android/sdk/api/Responses$MemberResponse;Landroid/content/Context;)V

    return-void

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
