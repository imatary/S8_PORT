.class public Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;
.super Lcom/naver/glink/android/sdk/model/BaseModel;
.source "WritingArticle.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;",
            ">;"
        }
    .end annotation
.end field

.field public static final a:I = 0x4


# instance fields
.field private b:I

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/naver/glink/android/sdk/ui/write/model/Content;",
            ">;"
        }
    .end annotation
.end field

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle$1;

    invoke-direct {v0}, Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle$1;-><init>()V

    sput-object v0, Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/model/BaseModel;-><init>()V

    iput v0, p0, Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;->b:I

    iput v0, p0, Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;->c:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;->e:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;I)I
    .locals 0

    iput p1, p0, Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;->b:I

    return p1
.end method

.method public static a()Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle$a;
    .locals 1

    const/4 v0, -0x1

    invoke-static {v0, v0}, Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;->a(II)Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle$a;

    move-result-object v0

    return-object v0
.end method

.method public static a(II)Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle$a;
    .locals 2

    new-instance v0, Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle$a;

    const/4 v1, 0x4

    invoke-direct {v0, p0, p1, v1}, Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle$a;-><init>(III)V

    return-object v0
.end method

.method static synthetic a(Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;->d:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;->e:Ljava/util/List;

    return-object p1
.end method

.method static synthetic b(Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;I)I
    .locals 0

    iput p1, p0, Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;->c:I

    return p1
.end method

.method static synthetic c(Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;I)I
    .locals 0

    iput p1, p0, Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;->f:I

    return p1
.end method


# virtual methods
.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;->b:I

    return-void
.end method

.method public a(Lcom/naver/glink/android/sdk/api/Responses$WriteArticleResponse;)V
    .locals 1

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;->b:I

    invoke-virtual {p1, v0}, Lcom/naver/glink/android/sdk/api/Responses$WriteArticleResponse;->getMenu(I)Lcom/naver/glink/android/sdk/model/Menu;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    iput v0, p0, Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;->b:I

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/model/Menu;->getMenuId()I

    move-result v0

    iput v0, p0, Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;->b:I

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lcom/naver/glink/android/sdk/api/Responses$WriteArticleResponse;->property:Lcom/naver/glink/android/sdk/api/Responses$Property;

    iget-object v0, v0, Lcom/naver/glink/android/sdk/api/Responses$Property;->subject:Ljava/lang/String;

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;->d:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/naver/glink/android/sdk/api/Responses$WriteArticleResponse;->getMenu()Lcom/naver/glink/android/sdk/model/Menu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/model/Menu;->getMenuId()I

    move-result v0

    iput v0, p0, Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;->b:I

    invoke-virtual {p1}, Lcom/naver/glink/android/sdk/api/Responses$WriteArticleResponse;->getContents()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;->e:Ljava/util/List;

    goto :goto_0
.end method

.method public a(Lcom/naver/glink/android/sdk/ui/write/model/Content;)V
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lcom/naver/glink/android/sdk/ui/write/model/Content;Lcom/naver/glink/android/sdk/ui/write/model/Content;)V
    .locals 2

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;->e:Ljava/util/List;

    invoke-interface {v1, v0, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;->d:Ljava/lang/String;

    return-void
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;->c:I

    return v0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;->f:I

    return-void
.end method

.method public b(Lcom/naver/glink/android/sdk/ui/write/model/Content;)V
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;->b:I

    return v0
.end method

.method public c(I)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/naver/glink/android/sdk/ui/write/model/Attachment;",
            ">;"
        }
    .end annotation

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;->o()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;->k()Ljava/util/List;

    move-result-object v2

    iget v0, p0, Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;->f:I

    mul-int v3, p1, v0

    iget v0, p0, Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;->f:I

    add-int/2addr v0, v3

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    :goto_1
    invoke-interface {v2, v3, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, v1

    goto :goto_0

    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_1
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;->d:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/naver/glink/android/sdk/ui/write/model/Content;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;->e:Ljava/util/List;

    return-object v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;->f:I

    return v0
.end method

.method public g()Z
    .locals 2

    iget v0, p0, Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    sget v0, Lcom/naver/glink/android/sdk/R$string;->save_error_menu:I

    invoke-static {v0}, Lcom/naver/glink/android/sdk/c;->a(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/naver/glink/android/sdk/a/q;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/naver/glink/android/sdk/R$string;->save_error_subject:I

    invoke-static {v0}, Lcom/naver/glink/android/sdk/c;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/naver/glink/android/sdk/a/q;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Lcom/naver/glink/android/sdk/R$string;->save_error_contents:I

    invoke-static {v0}, Lcom/naver/glink/android/sdk/c;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;->j()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;->k()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    goto :goto_0
.end method

.method j()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/naver/glink/android/sdk/ui/write/model/Content;

    instance-of v2, v0, Lcom/naver/glink/android/sdk/ui/write/model/Text;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/naver/glink/android/sdk/ui/write/model/Text;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/write/model/Text;->a()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public k()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/naver/glink/android/sdk/ui/write/model/Attachment;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;->e:Ljava/util/List;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/write/model/a;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public l()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/naver/glink/android/sdk/ui/write/model/Attachment;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;->k()Ljava/util/List;

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

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/write/model/Attachment;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public m()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/naver/glink/android/sdk/ui/write/model/ImageAttachment;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;->e:Ljava/util/List;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/write/model/a;->c(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public n()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/naver/glink/android/sdk/ui/write/model/VideoAttachment;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;->e:Ljava/util/List;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/write/model/a;->d(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public o()I
    .locals 3

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;->k()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;->f:I

    div-int v1, v0, v1

    iget v2, p0, Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;->f:I

    rem-int/2addr v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public p()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;->q()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/naver/glink/android/sdk/a/r;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public q()Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/naver/glink/android/sdk/ui/write/model/Content;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/write/model/Content;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget v0, p0, Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;->c:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;->e:Ljava/util/List;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/naver/glink/android/sdk/ui/write/model/Content;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    return-void
.end method
