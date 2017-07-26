.class public Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle$a;
.super Ljava/lang/Object;
.source "WritingArticle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:I

.field private final b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/naver/glink/android/sdk/ui/write/model/Content;",
            ">;"
        }
    .end annotation
.end field

.field private e:I


# direct methods
.method constructor <init>(III)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle$a;->d:Ljava/util/List;

    iput p1, p0, Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle$a;->a:I

    iput p2, p0, Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle$a;->b:I

    iput p3, p0, Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle$a;->e:I

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle$a;->d:Ljava/util/List;

    new-instance v1, Lcom/naver/glink/android/sdk/ui/write/model/Text;

    const-string/jumbo v2, ""

    invoke-direct {v1, v2}, Lcom/naver/glink/android/sdk/ui/write/model/Text;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle$a;
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle$a;->c:Ljava/lang/String;

    return-object p0
.end method

.method public a()Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;
    .locals 2

    new-instance v0, Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;-><init>(Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle$1;)V

    iget v1, p0, Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle$a;->a:I

    invoke-static {v0, v1}, Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;->a(Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;I)I

    iget v1, p0, Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle$a;->b:I

    invoke-static {v0, v1}, Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;->b(Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;I)I

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle$a;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;->a(Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle$a;->d:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;->a(Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;Ljava/util/List;)Ljava/util/List;

    iget v1, p0, Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle$a;->e:I

    invoke-static {v0, v1}, Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;->c(Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;I)I

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle$a;
    .locals 2

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle$a;->d:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/naver/glink/android/sdk/ui/write/model/Text;

    invoke-virtual {v0, p1}, Lcom/naver/glink/android/sdk/ui/write/model/Text;->a(Ljava/lang/String;)V

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle$a;
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle$a;->d:Ljava/util/List;

    new-instance v1, Lcom/naver/glink/android/sdk/ui/write/model/ImageAttachment;

    invoke-static {p1}, Lcom/naver/glink/android/sdk/a/t;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/naver/glink/android/sdk/ui/write/model/ImageAttachment;-><init>(Landroid/net/Uri;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle$a;
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle$a;->d:Ljava/util/List;

    new-instance v1, Lcom/naver/glink/android/sdk/ui/write/model/VideoAttachment;

    invoke-static {p1}, Lcom/naver/glink/android/sdk/a/t;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/naver/glink/android/sdk/ui/write/model/VideoAttachment;-><init>(Landroid/net/Uri;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method
