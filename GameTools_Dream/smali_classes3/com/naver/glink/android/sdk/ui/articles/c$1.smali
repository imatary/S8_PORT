.class final Lcom/naver/glink/android/sdk/ui/articles/c$1;
.super Lcom/naver/glink/android/sdk/api/request/RequestListener;
.source "MenusDialogHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/articles/c;->a(Landroid/content/Context;ILcom/naver/glink/android/sdk/ui/articles/c$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/naver/glink/android/sdk/api/request/RequestListener",
        "<",
        "Lcom/naver/glink/android/sdk/api/Responses$MenusResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:I

.field final synthetic c:Lcom/naver/glink/android/sdk/ui/articles/c$a;


# direct methods
.method constructor <init>(Landroid/content/Context;ILcom/naver/glink/android/sdk/ui/articles/c$a;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/articles/c$1;->a:Landroid/content/Context;

    iput p2, p0, Lcom/naver/glink/android/sdk/ui/articles/c$1;->b:I

    iput-object p3, p0, Lcom/naver/glink/android/sdk/ui/articles/c$1;->c:Lcom/naver/glink/android/sdk/ui/articles/c$a;

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/api/request/RequestListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/naver/glink/android/sdk/api/Responses$MenusResponse;)V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p1, Lcom/naver/glink/android/sdk/api/Responses$MenusResponse;->metadata:Lcom/naver/glink/android/sdk/api/Responses$MenusResponse$MetaData;

    iget-object v1, v1, Lcom/naver/glink/android/sdk/api/Responses$MenusResponse$MetaData;->allPosts:Ljava/lang/String;

    invoke-static {v1}, Lcom/naver/glink/android/sdk/model/Menu;->allArticles(Ljava/lang/String;)Lcom/naver/glink/android/sdk/model/Menu;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p1, Lcom/naver/glink/android/sdk/api/Responses$MenusResponse;->menus:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/articles/c$1;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/naver/glink/android/sdk/ui/articles/c;->a(Landroid/content/Context;Ljava/util/List;)V

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/articles/c$1;->a:Landroid/content/Context;

    iget v2, p0, Lcom/naver/glink/android/sdk/ui/articles/c$1;->b:I

    iget-object v3, p0, Lcom/naver/glink/android/sdk/ui/articles/c$1;->c:Lcom/naver/glink/android/sdk/ui/articles/c$a;

    invoke-static {v1, v0, v2, v3}, Lcom/naver/glink/android/sdk/ui/articles/c;->a(Landroid/content/Context;Ljava/util/List;ILcom/naver/glink/android/sdk/ui/articles/c$a;)V

    return-void
.end method

.method public synthetic onSuccess(Lcom/naver/glink/android/sdk/api/Response;)V
    .locals 0

    check-cast p1, Lcom/naver/glink/android/sdk/api/Responses$MenusResponse;

    invoke-virtual {p0, p1}, Lcom/naver/glink/android/sdk/ui/articles/c$1;->a(Lcom/naver/glink/android/sdk/api/Responses$MenusResponse;)V

    return-void
.end method
