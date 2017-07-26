.class public abstract Lcom/naver/glink/android/sdk/ui/write/model/Attachment;
.super Lcom/naver/glink/android/sdk/ui/write/model/Content;
.source "Attachment.java"


# instance fields
.field public a:Lcom/naver/glink/android/sdk/api/Response;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/api/Responses$Property$ResolvedArticle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/naver/glink/android/sdk/ui/write/model/Content;-><init>(Lcom/naver/glink/android/sdk/api/Responses$Property$ResolvedArticle;)V

    return-void
.end method

.method constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/naver/glink/android/sdk/ui/write/model/Content;-><init>(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/naver/glink/android/sdk/api/Response;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/write/model/Attachment;->a:Lcom/naver/glink/android/sdk/api/Response;

    return-void
.end method

.method a()Z
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/model/Attachment;->a:Lcom/naver/glink/android/sdk/api/Response;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/model/Attachment;->b:Lcom/naver/glink/android/sdk/api/Responses$Property$ResolvedArticle;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/model/Attachment;->c:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
