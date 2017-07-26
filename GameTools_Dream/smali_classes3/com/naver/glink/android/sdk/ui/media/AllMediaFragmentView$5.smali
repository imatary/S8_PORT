.class Lcom/naver/glink/android/sdk/ui/media/AllMediaFragmentView$5;
.super Lcom/naver/glink/android/sdk/api/request/RequestListener;
.source "AllMediaFragmentView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/media/AllMediaFragmentView;->c()V
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
.field final synthetic a:Lcom/naver/glink/android/sdk/ui/media/AllMediaFragmentView;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/media/AllMediaFragmentView;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/media/AllMediaFragmentView$5;->a:Lcom/naver/glink/android/sdk/ui/media/AllMediaFragmentView;

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/api/request/RequestListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/naver/glink/android/sdk/api/Responses$MenusResponse;)V
    .locals 3

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/media/AllMediaFragmentView$5;->a:Lcom/naver/glink/android/sdk/ui/media/AllMediaFragmentView;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/media/AllMediaFragmentView;->c(Lcom/naver/glink/android/sdk/ui/media/AllMediaFragmentView;)Lcom/naver/glink/android/sdk/model/Menu;

    move-result-object v1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/media/AllMediaFragmentView$5;->a:Lcom/naver/glink/android/sdk/ui/media/AllMediaFragmentView;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/media/AllMediaFragmentView;->c(Lcom/naver/glink/android/sdk/ui/media/AllMediaFragmentView;)Lcom/naver/glink/android/sdk/model/Menu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/model/Menu;->getType()Lcom/naver/glink/android/sdk/model/Menu$Type;

    move-result-object v0

    sget-object v2, Lcom/naver/glink/android/sdk/model/Menu$Type;->IMAGES:Lcom/naver/glink/android/sdk/model/Menu$Type;

    if-ne v0, v2, :cond_0

    iget-object v0, p1, Lcom/naver/glink/android/sdk/api/Responses$MenusResponse;->metadata:Lcom/naver/glink/android/sdk/api/Responses$MenusResponse$MetaData;

    iget-object v0, v0, Lcom/naver/glink/android/sdk/api/Responses$MenusResponse$MetaData;->allPhotos:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v0}, Lcom/naver/glink/android/sdk/model/Menu;->setMenuName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/media/AllMediaFragmentView$5;->a:Lcom/naver/glink/android/sdk/ui/media/AllMediaFragmentView;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/media/AllMediaFragmentView$5;->a:Lcom/naver/glink/android/sdk/ui/media/AllMediaFragmentView;

    invoke-static {v1}, Lcom/naver/glink/android/sdk/ui/media/AllMediaFragmentView;->c(Lcom/naver/glink/android/sdk/ui/media/AllMediaFragmentView;)Lcom/naver/glink/android/sdk/model/Menu;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/naver/glink/android/sdk/ui/media/AllMediaFragmentView;->a(Lcom/naver/glink/android/sdk/ui/media/AllMediaFragmentView;Lcom/naver/glink/android/sdk/model/Menu;)V

    return-void

    :cond_0
    iget-object v0, p1, Lcom/naver/glink/android/sdk/api/Responses$MenusResponse;->metadata:Lcom/naver/glink/android/sdk/api/Responses$MenusResponse$MetaData;

    iget-object v0, v0, Lcom/naver/glink/android/sdk/api/Responses$MenusResponse$MetaData;->allVideos:Ljava/lang/String;

    goto :goto_0
.end method

.method public synthetic onSuccess(Lcom/naver/glink/android/sdk/api/Response;)V
    .locals 0

    check-cast p1, Lcom/naver/glink/android/sdk/api/Responses$MenusResponse;

    invoke-virtual {p0, p1}, Lcom/naver/glink/android/sdk/ui/media/AllMediaFragmentView$5;->a(Lcom/naver/glink/android/sdk/api/Responses$MenusResponse;)V

    return-void
.end method
