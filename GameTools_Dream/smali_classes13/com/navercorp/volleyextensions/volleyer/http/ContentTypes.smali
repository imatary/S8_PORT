.class public Lcom/navercorp/volleyextensions/volleyer/http/ContentTypes;
.super Ljava/lang/Object;
.source "ContentTypes.java"


# instance fields
.field private contentTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/navercorp/volleyextensions/volleyer/http/ContentType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>([Lcom/navercorp/volleyextensions/volleyer/http/ContentType;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/navercorp/volleyextensions/volleyer/http/ContentTypes;->contentTypes:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/navercorp/volleyextensions/volleyer/http/ContentTypes;->setContentTypes([Lcom/navercorp/volleyextensions/volleyer/http/ContentType;)V

    invoke-direct {p0}, Lcom/navercorp/volleyextensions/volleyer/http/ContentTypes;->assertTypeArguments()V

    return-void
.end method

.method private addContentType(Lcom/navercorp/volleyextensions/volleyer/http/ContentType;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/navercorp/volleyextensions/volleyer/http/ContentTypes;->contentTypes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private assertTypeArguments()V
    .locals 2

    iget-object v0, p0, Lcom/navercorp/volleyextensions/volleyer/http/ContentTypes;->contentTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "None of content types were added."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private varargs setContentTypes([Lcom/navercorp/volleyextensions/volleyer/http/ContentType;)V
    .locals 3

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, p1, v1

    invoke-direct {p0, v0}, Lcom/navercorp/volleyextensions/volleyer/http/ContentTypes;->addContentType(Lcom/navercorp/volleyextensions/volleyer/http/ContentType;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getListOfContentTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/navercorp/volleyextensions/volleyer/http/ContentType;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/navercorp/volleyextensions/volleyer/http/ContentTypes;->contentTypes:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
