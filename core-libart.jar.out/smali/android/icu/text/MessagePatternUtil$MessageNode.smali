.class public Landroid/icu/text/MessagePatternUtil$MessageNode;
.super Landroid/icu/text/MessagePatternUtil$Node;
.source "MessagePatternUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/MessagePatternUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MessageNode"
.end annotation


# instance fields
.field private volatile list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/icu/text/MessagePatternUtil$MessageContentsNode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -wrap0(Landroid/icu/text/MessagePatternUtil$MessageNode;)Landroid/icu/text/MessagePatternUtil$MessageNode;
    .locals 1

    invoke-direct {p0}, Landroid/icu/text/MessagePatternUtil$MessageNode;->freeze()Landroid/icu/text/MessagePatternUtil$MessageNode;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Landroid/icu/text/MessagePatternUtil$MessageNode;Landroid/icu/text/MessagePatternUtil$MessageContentsNode;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/icu/text/MessagePatternUtil$MessageNode;->addContentsNode(Landroid/icu/text/MessagePatternUtil$MessageContentsNode;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/icu/text/MessagePatternUtil$Node;-><init>(Landroid/icu/text/MessagePatternUtil$Node;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/icu/text/MessagePatternUtil$MessageNode;->list:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/text/MessagePatternUtil$MessageNode;)V
    .locals 0

    invoke-direct {p0}, Landroid/icu/text/MessagePatternUtil$MessageNode;-><init>()V

    return-void
.end method

.method private addContentsNode(Landroid/icu/text/MessagePatternUtil$MessageContentsNode;)V
    .locals 4

    instance-of v2, p1, Landroid/icu/text/MessagePatternUtil$TextNode;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/icu/text/MessagePatternUtil$MessageNode;->list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Landroid/icu/text/MessagePatternUtil$MessageNode;->list:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    iget-object v2, p0, Landroid/icu/text/MessagePatternUtil$MessageNode;->list:Ljava/util/List;

    iget-object v3, p0, Landroid/icu/text/MessagePatternUtil$MessageNode;->list:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/MessagePatternUtil$MessageContentsNode;

    instance-of v2, v0, Landroid/icu/text/MessagePatternUtil$TextNode;

    if-eqz v2, :cond_0

    move-object v1, v0

    nop

    nop

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Landroid/icu/text/MessagePatternUtil$TextNode;->-get0(Landroid/icu/text/MessagePatternUtil$TextNode;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    nop

    nop

    invoke-static {p1}, Landroid/icu/text/MessagePatternUtil$TextNode;->-get0(Landroid/icu/text/MessagePatternUtil$TextNode;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/icu/text/MessagePatternUtil$TextNode;->-set0(Landroid/icu/text/MessagePatternUtil$TextNode;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method private freeze()Landroid/icu/text/MessagePatternUtil$MessageNode;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/MessagePatternUtil$MessageNode;->list:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/MessagePatternUtil$MessageNode;->list:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public getContents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/icu/text/MessagePatternUtil$MessageContentsNode;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/icu/text/MessagePatternUtil$MessageNode;->list:Ljava/util/List;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/MessagePatternUtil$MessageNode;->list:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
