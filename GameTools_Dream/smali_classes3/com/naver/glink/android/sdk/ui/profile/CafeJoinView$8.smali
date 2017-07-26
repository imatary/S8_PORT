.class Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView$8;
.super Ljava/lang/Object;
.source "CafeJoinView.java"

# interfaces
.implements Lcom/naver/glink/android/sdk/ui/profile/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView$8;->a:Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView$8;->a:Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;->d(Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView$8;->a:Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;->d(Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView$8;->a:Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;->a(Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;Lcom/naver/glink/android/sdk/api/Responses$AvailableResponse;)Lcom/naver/glink/android/sdk/api/Responses$AvailableResponse;

    :cond_0
    return-void
.end method

.method public a(Lcom/naver/glink/android/sdk/api/Response;)V
    .locals 1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v0, p1, Lcom/naver/glink/android/sdk/api/Responses$JoinResponse;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/naver/glink/android/sdk/api/Responses$JoinResponse;

    iget-boolean v0, v0, Lcom/naver/glink/android/sdk/api/Responses$JoinResponse;->success:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView$8;->a:Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;->f(Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;)Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView$8;->a:Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;->f(Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;)Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView$a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView$a;->a(Lcom/naver/glink/android/sdk/api/Response;)V

    goto :goto_0
.end method

.method public a(Lcom/naver/glink/android/sdk/api/Response;Lcom/android/volley/VolleyError;)V
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView$8;->a:Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;->f(Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;)Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView$8;->a:Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;->f(Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;)Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView$a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView$a;->b(Lcom/naver/glink/android/sdk/api/Response;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/naver/glink/android/sdk/api/Responses$AvailableResponse;Ljava/lang/String;ZI)V
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView$8;->a:Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;->b(Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;)Lcom/naver/glink/android/sdk/ui/profile/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView$8;->a:Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;

    invoke-virtual {v0, p2, p3, p4}, Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;->a(Ljava/lang/String;ZI)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView$8;->a:Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;

    invoke-static {v0, p1}, Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;->a(Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;Lcom/naver/glink/android/sdk/api/Responses$AvailableResponse;)Lcom/naver/glink/android/sdk/api/Responses$AvailableResponse;

    :cond_0
    return-void
.end method
