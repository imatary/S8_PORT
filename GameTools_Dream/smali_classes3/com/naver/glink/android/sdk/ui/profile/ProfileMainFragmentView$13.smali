.class Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView$13;
.super Ljava/lang/Object;
.source "ProfileMainFragmentView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->a(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView$13;->a:Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView$13;->a:Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->c(Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView$13;->a:Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->d(Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView$13;->a:Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;

    invoke-static {v1}, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->b(Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;)Lcom/naver/glink/android/sdk/api/Responses$MemberResponse;

    move-result-object v1

    iget-object v1, v1, Lcom/naver/glink/android/sdk/api/Responses$MemberResponse;->articleCount:Lcom/naver/glink/android/sdk/api/Responses$MemberResponse$ArticleCount;

    iget v1, v1, Lcom/naver/glink/android/sdk/api/Responses$MemberResponse$ArticleCount;->write:I

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView$13;->a:Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;

    invoke-static {v2}, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->b(Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;)Lcom/naver/glink/android/sdk/api/Responses$MemberResponse;

    move-result-object v2

    iget-object v2, v2, Lcom/naver/glink/android/sdk/api/Responses$MemberResponse;->articleCount:Lcom/naver/glink/android/sdk/api/Responses$MemberResponse$ArticleCount;

    iget v2, v2, Lcom/naver/glink/android/sdk/api/Responses$MemberResponse$ArticleCount;->comment:I

    iget-object v3, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView$13;->a:Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;

    invoke-static {v3}, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->b(Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;)Lcom/naver/glink/android/sdk/api/Responses$MemberResponse;

    move-result-object v3

    iget-object v3, v3, Lcom/naver/glink/android/sdk/api/Responses$MemberResponse;->articleCount:Lcom/naver/glink/android/sdk/api/Responses$MemberResponse$ArticleCount;

    iget v3, v3, Lcom/naver/glink/android/sdk/api/Responses$MemberResponse$ArticleCount;->like:I

    iget-object v4, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView$13;->a:Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;

    invoke-static {v4}, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->e(Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;)Z

    move-result v4

    const-string/jumbo v5, "W"

    invoke-static/range {v0 .. v5}, Lcom/naver/glink/android/sdk/ui/tabs/b;->a(Ljava/lang/String;IIIZLjava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView$13;->a:Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->b(Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;)Lcom/naver/glink/android/sdk/api/Responses$MemberResponse;

    move-result-object v0

    iget-object v0, v0, Lcom/naver/glink/android/sdk/api/Responses$MemberResponse;->memberId:Ljava/lang/String;

    goto :goto_0
.end method
