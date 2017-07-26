.class public Lcom/naver/glink/android/sdk/api/Responses$WriteArticleResponse;
.super Lcom/naver/glink/android/sdk/api/Response;
.source "Responses.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naver/glink/android/sdk/api/Responses;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WriteArticleResponse"
.end annotation


# instance fields
.field public articleId:I

.field private contents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/naver/glink/android/sdk/ui/write/model/Content;",
            ">;"
        }
    .end annotation
.end field

.field public menuId:I

.field public menus:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/naver/glink/android/sdk/model/Menu;",
            ">;"
        }
    .end annotation
.end field

.field public property:Lcom/naver/glink/android/sdk/api/Responses$Property;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/api/Response;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/api/Responses$WriteArticleResponse;->menus:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getContents()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/naver/glink/android/sdk/ui/write/model/Content;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/naver/glink/android/sdk/api/Responses$WriteArticleResponse;->contents:Ljava/util/List;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/api/Responses$WriteArticleResponse;->property:Lcom/naver/glink/android/sdk/api/Responses$Property;

    iget-object v0, v0, Lcom/naver/glink/android/sdk/api/Responses$Property;->contents:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/naver/glink/android/sdk/api/Responses$WriteArticleResponse;->property:Lcom/naver/glink/android/sdk/api/Responses$Property;

    iget-object v0, v0, Lcom/naver/glink/android/sdk/api/Responses$Property;->contents:Ljava/lang/String;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/write/model/a;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/api/Responses$WriteArticleResponse;->contents:Ljava/util/List;

    :goto_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/api/Responses$WriteArticleResponse;->contents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/api/Responses$WriteArticleResponse;->contents:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/naver/glink/android/sdk/ui/write/model/Text;

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/api/Responses$WriteArticleResponse;->contents:Ljava/util/List;

    new-instance v1, Lcom/naver/glink/android/sdk/ui/write/model/Text;

    const-string/jumbo v2, ""

    invoke-direct {v1, v2}, Lcom/naver/glink/android/sdk/ui/write/model/Text;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, p0, Lcom/naver/glink/android/sdk/api/Responses$WriteArticleResponse;->contents:Ljava/util/List;

    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/naver/glink/android/sdk/api/Responses$WriteArticleResponse;->property:Lcom/naver/glink/android/sdk/api/Responses$Property;

    iget-object v0, v0, Lcom/naver/glink/android/sdk/api/Responses$Property;->resolvedArticleList:Ljava/util/List;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/write/model/a;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/api/Responses$WriteArticleResponse;->contents:Ljava/util/List;

    goto :goto_0
.end method

.method public getMenu()Lcom/naver/glink/android/sdk/model/Menu;
    .locals 1

    iget v0, p0, Lcom/naver/glink/android/sdk/api/Responses$WriteArticleResponse;->menuId:I

    invoke-virtual {p0, v0}, Lcom/naver/glink/android/sdk/api/Responses$WriteArticleResponse;->getMenu(I)Lcom/naver/glink/android/sdk/model/Menu;

    move-result-object v0

    return-object v0
.end method

.method public getMenu(I)Lcom/naver/glink/android/sdk/model/Menu;
    .locals 4

    const/4 v1, 0x0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/api/Responses$WriteArticleResponse;->menus:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/naver/glink/android/sdk/model/Menu;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/model/Menu;->getMenuId()I

    move-result v3

    if-ne v3, p1, :cond_1

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method
