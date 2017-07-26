.class Lcom/naver/glink/android/sdk/ui/media/AllMediaFragmentView$3$1;
.super Lcom/naver/glink/android/sdk/api/request/RequestListener;
.source "AllMediaFragmentView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/media/AllMediaFragmentView$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
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
.field final synthetic a:Lcom/naver/glink/android/sdk/ui/media/AllMediaFragmentView$3;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/media/AllMediaFragmentView$3;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/media/AllMediaFragmentView$3$1;->a:Lcom/naver/glink/android/sdk/ui/media/AllMediaFragmentView$3;

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/api/request/RequestListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/naver/glink/android/sdk/api/Responses$MenusResponse;)V
    .locals 1

    iget-object v0, p1, Lcom/naver/glink/android/sdk/api/Responses$MenusResponse;->metadata:Lcom/naver/glink/android/sdk/api/Responses$MenusResponse$MetaData;

    iget-object v0, v0, Lcom/naver/glink/android/sdk/api/Responses$MenusResponse$MetaData;->allPosts:Ljava/lang/String;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/model/Menu;->allArticles(Ljava/lang/String;)Lcom/naver/glink/android/sdk/model/Menu;

    move-result-object v0

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/tabs/b;->b(Lcom/naver/glink/android/sdk/model/Menu;)V

    return-void
.end method

.method public synthetic onSuccess(Lcom/naver/glink/android/sdk/api/Response;)V
    .locals 0

    check-cast p1, Lcom/naver/glink/android/sdk/api/Responses$MenusResponse;

    invoke-virtual {p0, p1}, Lcom/naver/glink/android/sdk/ui/media/AllMediaFragmentView$3$1;->a(Lcom/naver/glink/android/sdk/api/Responses$MenusResponse;)V

    return-void
.end method
