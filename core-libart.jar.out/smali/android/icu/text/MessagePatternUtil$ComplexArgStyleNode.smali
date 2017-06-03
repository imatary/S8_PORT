.class public Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;
.super Landroid/icu/text/MessagePatternUtil$Node;
.source "MessagePatternUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/MessagePatternUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ComplexArgStyleNode"
.end annotation


# instance fields
.field private argType:Landroid/icu/text/MessagePattern$ArgType;

.field private explicitOffset:Z

.field private volatile list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/icu/text/MessagePatternUtil$VariantNode;",
            ">;"
        }
    .end annotation
.end field

.field private offset:D


# direct methods
.method static synthetic -set0(Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;->explicitOffset:Z

    return p1
.end method

.method static synthetic -set1(Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;D)D
    .locals 1

    iput-wide p1, p0, Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;->offset:D

    return-wide p1
.end method

.method static synthetic -wrap0(Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;)Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;
    .locals 1

    invoke-direct {p0}, Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;->freeze()Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;Landroid/icu/text/MessagePatternUtil$VariantNode;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;->addVariant(Landroid/icu/text/MessagePatternUtil$VariantNode;)V

    return-void
.end method

.method private constructor <init>(Landroid/icu/text/MessagePattern$ArgType;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/icu/text/MessagePatternUtil$Node;-><init>(Landroid/icu/text/MessagePatternUtil$Node;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;->list:Ljava/util/List;

    iput-object p1, p0, Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;->argType:Landroid/icu/text/MessagePattern$ArgType;

    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/text/MessagePattern$ArgType;Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;-><init>(Landroid/icu/text/MessagePattern$ArgType;)V

    return-void
.end method

.method private addVariant(Landroid/icu/text/MessagePatternUtil$VariantNode;)V
    .locals 1

    iget-object v0, p0, Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private freeze()Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;->list:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;->list:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public getArgType()Landroid/icu/text/MessagePattern$ArgType;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;->argType:Landroid/icu/text/MessagePattern$ArgType;

    return-object v0
.end method

.method public getOffset()D
    .locals 2

    iget-wide v0, p0, Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;->offset:D

    return-wide v0
.end method

.method public getVariants()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/icu/text/MessagePatternUtil$VariantNode;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;->list:Ljava/util/List;

    return-object v0
.end method

.method public getVariantsByType(Ljava/util/List;Ljava/util/List;)Landroid/icu/text/MessagePatternUtil$VariantNode;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/icu/text/MessagePatternUtil$VariantNode;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/icu/text/MessagePatternUtil$VariantNode;",
            ">;)",
            "Landroid/icu/text/MessagePatternUtil$VariantNode;"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iget-object v3, p0, Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;->list:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/MessagePatternUtil$VariantNode;

    invoke-virtual {v1}, Landroid/icu/text/MessagePatternUtil$VariantNode;->isSelectorNumeric()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const-string/jumbo v3, "other"

    invoke-virtual {v1}, Landroid/icu/text/MessagePatternUtil$VariantNode;->getSelector()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_3
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method public hasExplicitOffset()Z
    .locals 1

    iget-boolean v0, p0, Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;->explicitOffset:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;->argType:Landroid/icu/text/MessagePattern$ArgType;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " style) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;->hasExplicitOffset()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "offset:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;->offset:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;->list:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
