.class public Lcom/naver/glink/android/sdk/ui/write/model/a;
.super Ljava/lang/Object;
.source "ContentsHelper.java"


# static fields
.field private static a:Lcom/google/gson/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/JsonDeserializer",
            "<",
            "Ljava/util/List;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/naver/glink/android/sdk/ui/write/model/a$2;

    invoke-direct {v0}, Lcom/naver/glink/android/sdk/ui/write/model/a$2;-><init>()V

    sput-object v0, Lcom/naver/glink/android/sdk/ui/write/model/a;->a:Lcom/google/gson/JsonDeserializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/gson/Gson;
    .locals 3

    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    new-instance v1, Lcom/naver/glink/android/sdk/ui/write/model/a$1;

    invoke-direct {v1}, Lcom/naver/glink/android/sdk/ui/write/model/a$1;-><init>()V

    invoke-virtual {v1}, Lcom/naver/glink/android/sdk/ui/write/model/a$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    sget-object v2, Lcom/naver/glink/android/sdk/ui/write/model/a;->a:Lcom/google/gson/JsonDeserializer;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/naver/glink/android/sdk/ui/write/model/Content;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/naver/glink/android/sdk/ui/write/model/a;->a()Lcom/google/gson/Gson;

    move-result-object v0

    const-class v1, Ljava/util/List;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string/jumbo v1, "type"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v4, "text"

    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v1, Lcom/naver/glink/android/sdk/ui/write/model/Text;

    invoke-direct {v1, v0}, Lcom/naver/glink/android/sdk/ui/write/model/Text;-><init>(Ljava/util/Map;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string/jumbo v4, "photo"

    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v1, Lcom/naver/glink/android/sdk/ui/write/model/ImageAttachment;

    invoke-direct {v1, v0}, Lcom/naver/glink/android/sdk/ui/write/model/ImageAttachment;-><init>(Ljava/util/Map;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const-string/jumbo v4, "video"

    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/naver/glink/android/sdk/ui/write/model/VideoAttachment;

    invoke-direct {v1, v0}, Lcom/naver/glink/android/sdk/ui/write/model/VideoAttachment;-><init>(Ljava/util/Map;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v2
.end method

.method public static a(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/naver/glink/android/sdk/api/Responses$Property$ResolvedArticle;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/naver/glink/android/sdk/ui/write/model/Content;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/naver/glink/android/sdk/api/Responses$Property$ResolvedArticle;

    iget-object v3, v0, Lcom/naver/glink/android/sdk/api/Responses$Property$ResolvedArticle;->mediaType:Ljava/lang/String;

    const-string/jumbo v4, "TEXT"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Lcom/naver/glink/android/sdk/ui/write/model/Text;

    invoke-direct {v3, v0}, Lcom/naver/glink/android/sdk/ui/write/model/Text;-><init>(Lcom/naver/glink/android/sdk/api/Responses$Property$ResolvedArticle;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v3, v0, Lcom/naver/glink/android/sdk/api/Responses$Property$ResolvedArticle;->mediaType:Ljava/lang/String;

    const-string/jumbo v4, "IMAGE"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Lcom/naver/glink/android/sdk/ui/write/model/ImageAttachment;

    invoke-direct {v3, v0}, Lcom/naver/glink/android/sdk/ui/write/model/ImageAttachment;-><init>(Lcom/naver/glink/android/sdk/api/Responses$Property$ResolvedArticle;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v3, v0, Lcom/naver/glink/android/sdk/api/Responses$Property$ResolvedArticle;->mediaType:Ljava/lang/String;

    const-string/jumbo v4, "MOVIE"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Lcom/naver/glink/android/sdk/ui/write/model/VideoAttachment;

    invoke-direct {v3, v0}, Lcom/naver/glink/android/sdk/ui/write/model/VideoAttachment;-><init>(Lcom/naver/glink/android/sdk/api/Responses$Property$ResolvedArticle;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public static b(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/naver/glink/android/sdk/ui/write/model/Content;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/naver/glink/android/sdk/ui/write/model/Attachment;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/naver/glink/android/sdk/ui/write/model/Content;

    instance-of v3, v0, Lcom/naver/glink/android/sdk/ui/write/model/Attachment;

    if-eqz v3, :cond_0

    check-cast v0, Lcom/naver/glink/android/sdk/ui/write/model/Attachment;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static c(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/naver/glink/android/sdk/ui/write/model/Content;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/naver/glink/android/sdk/ui/write/model/ImageAttachment;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0}, Lcom/naver/glink/android/sdk/ui/write/model/a;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/naver/glink/android/sdk/ui/write/model/Attachment;

    instance-of v3, v0, Lcom/naver/glink/android/sdk/ui/write/model/ImageAttachment;

    if-eqz v3, :cond_0

    check-cast v0, Lcom/naver/glink/android/sdk/ui/write/model/ImageAttachment;

    iget-object v3, v0, Lcom/naver/glink/android/sdk/ui/write/model/ImageAttachment;->d:Landroid/net/Uri;

    if-eqz v3, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static d(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/naver/glink/android/sdk/ui/write/model/Content;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/naver/glink/android/sdk/ui/write/model/VideoAttachment;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0}, Lcom/naver/glink/android/sdk/ui/write/model/a;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/naver/glink/android/sdk/ui/write/model/Attachment;

    instance-of v3, v0, Lcom/naver/glink/android/sdk/ui/write/model/VideoAttachment;

    if-eqz v3, :cond_0

    check-cast v0, Lcom/naver/glink/android/sdk/ui/write/model/VideoAttachment;

    iget-object v3, v0, Lcom/naver/glink/android/sdk/ui/write/model/VideoAttachment;->d:Landroid/net/Uri;

    if-eqz v3, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method
