.class Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView$3;
.super Ljava/lang/Object;
.source "CafeJoinView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;->a(Landroid/content/Context;Lcom/naver/glink/android/sdk/api/Responses$MemberResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/naver/glink/android/sdk/api/Responses$MemberResponse;

.field final synthetic c:Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;Landroid/content/Context;Lcom/naver/glink/android/sdk/api/Responses$MemberResponse;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView$3;->c:Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;

    iput-object p2, p0, Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView$3;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView$3;->b:Lcom/naver/glink/android/sdk/api/Responses$MemberResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView$3;->c:Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;->b(Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;)Lcom/naver/glink/android/sdk/ui/profile/a;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView$3;->c:Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView$3;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView$3;->c:Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;->b(Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;)Lcom/naver/glink/android/sdk/ui/profile/a;

    move-result-object v0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView$3;->c:Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;

    invoke-static {v1}, Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;->a(Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView$3;->b:Lcom/naver/glink/android/sdk/api/Responses$MemberResponse;

    iget-object v3, p0, Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView$3;->a:Landroid/content/Context;

    invoke-virtual {v0, v1, v2, v3}, Lcom/naver/glink/android/sdk/ui/profile/a;->a(Ljava/lang/String;Lcom/naver/glink/android/sdk/api/Responses$MemberResponse;Landroid/content/Context;)V

    goto :goto_0
.end method
