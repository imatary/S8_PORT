.class Lcom/naver/glink/android/sdk/ui/profile/a$1$1;
.super Lcom/naver/glink/android/sdk/api/request/RequestListener;
.source "NickNameHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/profile/a$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/naver/glink/android/sdk/api/request/RequestListener",
        "<",
        "Lcom/naver/glink/android/sdk/api/Responses$AvailableResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/naver/glink/android/sdk/ui/profile/a$1;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/profile/a$1;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/profile/a$1$1;->a:Lcom/naver/glink/android/sdk/ui/profile/a$1;

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/api/request/RequestListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/naver/glink/android/sdk/api/Responses$AvailableResponse;)V
    .locals 4

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/a$1$1;->a:Lcom/naver/glink/android/sdk/ui/profile/a$1;

    iget-object v0, v0, Lcom/naver/glink/android/sdk/ui/profile/a$1;->a:Lcom/naver/glink/android/sdk/api/request/Request;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/profile/a$1$1;->a:Lcom/naver/glink/android/sdk/ui/profile/a$1;

    iget-object v1, v1, Lcom/naver/glink/android/sdk/ui/profile/a$1;->c:Lcom/naver/glink/android/sdk/ui/profile/a;

    invoke-static {v1}, Lcom/naver/glink/android/sdk/ui/profile/a;->a(Lcom/naver/glink/android/sdk/ui/profile/a;)Lcom/naver/glink/android/sdk/api/request/Request;

    move-result-object v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/a$1$1;->a:Lcom/naver/glink/android/sdk/ui/profile/a$1;

    iget-object v0, v0, Lcom/naver/glink/android/sdk/ui/profile/a$1;->c:Lcom/naver/glink/android/sdk/ui/profile/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/naver/glink/android/sdk/ui/profile/a;->a(Lcom/naver/glink/android/sdk/ui/profile/a;Lcom/naver/glink/android/sdk/api/request/Request;)Lcom/naver/glink/android/sdk/api/request/Request;

    invoke-static {}, Lcom/naver/glink/android/sdk/ui/profile/a;->b()Ljava/util/Map;

    move-result-object v0

    iget v1, p1, Lcom/naver/glink/android/sdk/api/Responses$AvailableResponse;->messageCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    sget v0, Lcom/naver/glink/android/sdk/R$string;->not_available_nickname_message:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/profile/a$1$1;->a:Lcom/naver/glink/android/sdk/ui/profile/a$1;

    iget-object v1, v1, Lcom/naver/glink/android/sdk/ui/profile/a$1;->b:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/a$1$1;->a:Lcom/naver/glink/android/sdk/ui/profile/a$1;

    iget-object v0, v0, Lcom/naver/glink/android/sdk/ui/profile/a$1;->c:Lcom/naver/glink/android/sdk/ui/profile/a;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/profile/a;->b(Lcom/naver/glink/android/sdk/ui/profile/a;)Lcom/naver/glink/android/sdk/ui/profile/a$a;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/a$1$1;->a:Lcom/naver/glink/android/sdk/ui/profile/a$1;

    iget-object v0, v0, Lcom/naver/glink/android/sdk/ui/profile/a$1;->c:Lcom/naver/glink/android/sdk/ui/profile/a;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/profile/a;->b(Lcom/naver/glink/android/sdk/ui/profile/a;)Lcom/naver/glink/android/sdk/ui/profile/a$a;

    move-result-object v2

    iget-boolean v3, p1, Lcom/naver/glink/android/sdk/api/Responses$AvailableResponse;->available:Z

    iget-boolean v0, p1, Lcom/naver/glink/android/sdk/api/Responses$AvailableResponse;->available:Z

    if-eqz v0, :cond_2

    sget v0, Lcom/naver/glink/android/sdk/R$color;->blue2:I

    :goto_0
    invoke-interface {v2, p1, v1, v3, v0}, Lcom/naver/glink/android/sdk/ui/profile/a$a;->a(Lcom/naver/glink/android/sdk/api/Responses$AvailableResponse;Ljava/lang/String;ZI)V

    :cond_1
    return-void

    :cond_2
    sget v0, Lcom/naver/glink/android/sdk/R$color;->red1:I

    goto :goto_0
.end method

.method public synthetic onSuccess(Lcom/naver/glink/android/sdk/api/Response;)V
    .locals 0

    check-cast p1, Lcom/naver/glink/android/sdk/api/Responses$AvailableResponse;

    invoke-virtual {p0, p1}, Lcom/naver/glink/android/sdk/ui/profile/a$1$1;->a(Lcom/naver/glink/android/sdk/api/Responses$AvailableResponse;)V

    return-void
.end method
