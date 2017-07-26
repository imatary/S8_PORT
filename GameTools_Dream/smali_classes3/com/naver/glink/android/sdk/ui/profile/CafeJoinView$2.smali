.class Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView$2;
.super Lcom/naver/glink/android/sdk/a/e;
.source "CafeJoinView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;->a(Landroid/content/Context;Lcom/naver/glink/android/sdk/api/Responses$MemberResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/naver/glink/android/sdk/api/Responses$MemberResponse;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;Lcom/naver/glink/android/sdk/api/Responses$MemberResponse;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView$2;->c:Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;

    iput-object p2, p0, Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView$2;->a:Lcom/naver/glink/android/sdk/api/Responses$MemberResponse;

    iput-object p3, p0, Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView$2;->b:Landroid/content/Context;

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/a/e;-><init>()V

    return-void
.end method


# virtual methods
.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 6

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView$2;->c:Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;->b(Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;)Lcom/naver/glink/android/sdk/ui/profile/a;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView$2;->c:Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;->c(Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;)Landroid/view/View;

    move-result-object v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView$2;->c:Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;->b(Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;)Lcom/naver/glink/android/sdk/ui/profile/a;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView$2;->a:Lcom/naver/glink/android/sdk/api/Responses$MemberResponse;

    iget-object v5, p0, Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView$2;->b:Landroid/content/Context;

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Lcom/naver/glink/android/sdk/ui/profile/a;->a(Ljava/lang/String;ZZLcom/naver/glink/android/sdk/api/Responses$MemberResponse;Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
