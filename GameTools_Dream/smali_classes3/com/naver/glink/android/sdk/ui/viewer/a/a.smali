.class public Lcom/naver/glink/android/sdk/ui/viewer/a/a;
.super Ljava/lang/Object;
.source "AllMediaLoaderDataSource.java"

# interfaces
.implements Lcom/naver/glink/android/sdk/ui/viewer/a/c;


# instance fields
.field private final a:Lcom/naver/glink/android/sdk/ui/media/b;

.field private b:Lcom/naver/glink/android/sdk/ui/media/b$a;


# direct methods
.method public constructor <init>(Lcom/naver/glink/android/sdk/ui/media/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/viewer/a/a;->a:Lcom/naver/glink/android/sdk/ui/media/b;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/a/a;->a:Lcom/naver/glink/android/sdk/ui/media/b;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/media/b;->b()I

    move-result v0

    return v0
.end method

.method public a(I)Lcom/naver/glink/android/sdk/api/response/ArticleMedia;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/a/a;->a:Lcom/naver/glink/android/sdk/ui/media/b;

    invoke-virtual {v0, p1}, Lcom/naver/glink/android/sdk/ui/media/b;->a(I)Lcom/naver/glink/android/sdk/api/response/ArticleMedia;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/naver/glink/android/sdk/ui/viewer/a/c$a;)V
    .locals 2

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/a/a;->b:Lcom/naver/glink/android/sdk/ui/media/b$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/a/a;->a:Lcom/naver/glink/android/sdk/ui/media/b;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/viewer/a/a;->b:Lcom/naver/glink/android/sdk/ui/media/b$a;

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/ui/media/b;->b(Lcom/naver/glink/android/sdk/ui/media/b$a;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/a/a;->b:Lcom/naver/glink/android/sdk/ui/media/b$a;

    :cond_0
    if-eqz p1, :cond_1

    new-instance v0, Lcom/naver/glink/android/sdk/ui/viewer/a/a$1;

    invoke-direct {v0, p0, p1}, Lcom/naver/glink/android/sdk/ui/viewer/a/a$1;-><init>(Lcom/naver/glink/android/sdk/ui/viewer/a/a;Lcom/naver/glink/android/sdk/ui/viewer/a/c$a;)V

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/a/a;->b:Lcom/naver/glink/android/sdk/ui/media/b$a;

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/a/a;->a:Lcom/naver/glink/android/sdk/ui/media/b;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/viewer/a/a;->b:Lcom/naver/glink/android/sdk/ui/media/b$a;

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/ui/media/b;->a(Lcom/naver/glink/android/sdk/ui/media/b$a;)V

    :cond_1
    return-void
.end method
