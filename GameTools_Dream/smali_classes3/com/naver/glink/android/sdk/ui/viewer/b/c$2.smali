.class Lcom/naver/glink/android/sdk/ui/viewer/b/c$2;
.super Lcom/naver/glink/android/sdk/api/request/RequestListener;
.source "VideoViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/viewer/b/c;->a(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/naver/glink/android/sdk/api/request/RequestListener",
        "<",
        "Lcom/naver/glink/android/sdk/api/Responses$PlayUrlResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/naver/glink/android/sdk/ui/viewer/b/c;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/viewer/b/c;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/viewer/b/c$2;->c:Lcom/naver/glink/android/sdk/ui/viewer/b/c;

    iput-object p2, p0, Lcom/naver/glink/android/sdk/ui/viewer/b/c$2;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/naver/glink/android/sdk/ui/viewer/b/c$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/api/request/RequestListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/naver/glink/android/sdk/api/Responses$PlayUrlResponse;)V
    .locals 3

    iget-boolean v0, p1, Lcom/naver/glink/android/sdk/api/Responses$PlayUrlResponse;->isEncodingComplete:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/naver/glink/android/sdk/api/Responses$PlayUrlResponse;->playUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/b/c$2;->c:Lcom/naver/glink/android/sdk/ui/viewer/b/c;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/viewer/b/c;->c(Lcom/naver/glink/android/sdk/ui/viewer/b/c;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p1, Lcom/naver/glink/android/sdk/api/Responses$PlayUrlResponse;->playUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/a/t;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/viewer/b/c$2;->c:Lcom/naver/glink/android/sdk/ui/viewer/b/c;

    iget-object v1, v1, Lcom/naver/glink/android/sdk/ui/viewer/b/c;->a:Lcom/naver/glink/android/sdk/ui/widget/video/PlugVideoView;

    invoke-virtual {v1, v0}, Lcom/naver/glink/android/sdk/ui/widget/video/PlugVideoView;->setVideoURI(Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/b/c$2;->c:Lcom/naver/glink/android/sdk/ui/viewer/b/c;

    iget-object v0, v0, Lcom/naver/glink/android/sdk/ui/viewer/b/c;->a:Lcom/naver/glink/android/sdk/ui/widget/video/PlugVideoView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/ui/widget/video/PlugVideoView;->setShouldAutoplay(Z)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/b/c$2;->c:Lcom/naver/glink/android/sdk/ui/viewer/b/c;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/viewer/b/c;->b(Lcom/naver/glink/android/sdk/ui/viewer/b/c;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/b/c$2;->c:Lcom/naver/glink/android/sdk/ui/viewer/b/c;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/viewer/b/c$2;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/viewer/b/c$2;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/naver/glink/android/sdk/ui/viewer/b/c;->b(Lcom/naver/glink/android/sdk/ui/viewer/b/c;Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/naver/glink/android/sdk/ui/viewer/b/c;->d()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public synthetic onSuccess(Lcom/naver/glink/android/sdk/api/Response;)V
    .locals 0

    check-cast p1, Lcom/naver/glink/android/sdk/api/Responses$PlayUrlResponse;

    invoke-virtual {p0, p1}, Lcom/naver/glink/android/sdk/ui/viewer/b/c$2;->a(Lcom/naver/glink/android/sdk/api/Responses$PlayUrlResponse;)V

    return-void
.end method
