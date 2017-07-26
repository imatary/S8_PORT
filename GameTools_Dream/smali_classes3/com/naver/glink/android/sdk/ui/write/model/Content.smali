.class public abstract Lcom/naver/glink/android/sdk/ui/write/model/Content;
.super Lcom/naver/glink/android/sdk/model/BaseModel;
.source "Content.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field public final b:Lcom/naver/glink/android/sdk/api/Responses$Property$ResolvedArticle;

.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/api/Responses$Property$ResolvedArticle;)V
    .locals 1

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/model/BaseModel;-><init>()V

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/write/model/Content;->b:Lcom/naver/glink/android/sdk/api/Responses$Property$ResolvedArticle;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/model/Content;->c:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Ljava/util/Map;)V
    .locals 1
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

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/model/BaseModel;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/model/Content;->b:Lcom/naver/glink/android/sdk/api/Responses$Property$ResolvedArticle;

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/write/model/Content;->c:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method b()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/model/Content;->b:Lcom/naver/glink/android/sdk/api/Responses$Property$ResolvedArticle;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "mediaType"

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/write/model/Content;->b:Lcom/naver/glink/android/sdk/api/Responses$Property$ResolvedArticle;

    iget-object v2, v2, Lcom/naver/glink/android/sdk/api/Responses$Property$ResolvedArticle;->mediaType:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "htmlTag"

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/write/model/Content;->b:Lcom/naver/glink/android/sdk/api/Responses$Property$ResolvedArticle;

    iget-object v2, v2, Lcom/naver/glink/android/sdk/api/Responses$Property$ResolvedArticle;->htmlTag:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "param"

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/write/model/Content;->b:Lcom/naver/glink/android/sdk/api/Responses$Property$ResolvedArticle;

    iget-object v2, v2, Lcom/naver/glink/android/sdk/api/Responses$Property$ResolvedArticle;->param:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/model/Content;->c:Ljava/util/Map;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/model/Content;->c:Ljava/util/Map;

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto :goto_0
.end method
