.class public Landroid/icu/text/MessagePatternUtil$VariantNode;
.super Landroid/icu/text/MessagePatternUtil$Node;
.source "MessagePatternUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/MessagePatternUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VariantNode"
.end annotation


# instance fields
.field private msgNode:Landroid/icu/text/MessagePatternUtil$MessageNode;

.field private numericValue:D

.field private selector:Ljava/lang/String;


# direct methods
.method static synthetic -set0(Landroid/icu/text/MessagePatternUtil$VariantNode;Landroid/icu/text/MessagePatternUtil$MessageNode;)Landroid/icu/text/MessagePatternUtil$MessageNode;
    .locals 0

    iput-object p1, p0, Landroid/icu/text/MessagePatternUtil$VariantNode;->msgNode:Landroid/icu/text/MessagePatternUtil$MessageNode;

    return-object p1
.end method

.method static synthetic -set1(Landroid/icu/text/MessagePatternUtil$VariantNode;D)D
    .locals 1

    iput-wide p1, p0, Landroid/icu/text/MessagePatternUtil$VariantNode;->numericValue:D

    return-wide p1
.end method

.method static synthetic -set2(Landroid/icu/text/MessagePatternUtil$VariantNode;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Landroid/icu/text/MessagePatternUtil$VariantNode;->selector:Ljava/lang/String;

    return-object p1
.end method

.method private constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/icu/text/MessagePatternUtil$Node;-><init>(Landroid/icu/text/MessagePatternUtil$Node;)V

    const-wide v0, -0x3e6290cbac000000L    # -1.23456789E8

    iput-wide v0, p0, Landroid/icu/text/MessagePatternUtil$VariantNode;->numericValue:D

    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/text/MessagePatternUtil$VariantNode;)V
    .locals 0

    invoke-direct {p0}, Landroid/icu/text/MessagePatternUtil$VariantNode;-><init>()V

    return-void
.end method


# virtual methods
.method public getMessage()Landroid/icu/text/MessagePatternUtil$MessageNode;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/MessagePatternUtil$VariantNode;->msgNode:Landroid/icu/text/MessagePatternUtil$MessageNode;

    return-object v0
.end method

.method public getSelector()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/MessagePatternUtil$VariantNode;->selector:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectorValue()D
    .locals 2

    iget-wide v0, p0, Landroid/icu/text/MessagePatternUtil$VariantNode;->numericValue:D

    return-wide v0
.end method

.method public isSelectorNumeric()Z
    .locals 4

    iget-wide v0, p0, Landroid/icu/text/MessagePatternUtil$VariantNode;->numericValue:D

    const-wide v2, -0x3e6290cbac000000L    # -1.23456789E8

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/icu/text/MessagePatternUtil$VariantNode;->isSelectorNumeric()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-wide v2, p0, Landroid/icu/text/MessagePatternUtil$VariantNode;->numericValue:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/icu/text/MessagePatternUtil$VariantNode;->selector:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") {"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    iget-object v1, p0, Landroid/icu/text/MessagePatternUtil$VariantNode;->msgNode:Landroid/icu/text/MessagePatternUtil$MessageNode;

    invoke-virtual {v1}, Landroid/icu/text/MessagePatternUtil$MessageNode;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x7d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    iget-object v1, p0, Landroid/icu/text/MessagePatternUtil$VariantNode;->selector:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " {"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
