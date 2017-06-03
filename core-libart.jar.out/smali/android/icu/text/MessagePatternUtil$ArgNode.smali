.class public Landroid/icu/text/MessagePatternUtil$ArgNode;
.super Landroid/icu/text/MessagePatternUtil$MessageContentsNode;
.source "MessagePatternUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/MessagePatternUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ArgNode"
.end annotation


# instance fields
.field private argType:Landroid/icu/text/MessagePattern$ArgType;

.field private complexStyle:Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;

.field private name:Ljava/lang/String;

.field private number:I

.field private style:Ljava/lang/String;

.field private typeName:Ljava/lang/String;


# direct methods
.method static synthetic -set0(Landroid/icu/text/MessagePatternUtil$ArgNode;Landroid/icu/text/MessagePattern$ArgType;)Landroid/icu/text/MessagePattern$ArgType;
    .locals 0

    iput-object p1, p0, Landroid/icu/text/MessagePatternUtil$ArgNode;->argType:Landroid/icu/text/MessagePattern$ArgType;

    return-object p1
.end method

.method static synthetic -set1(Landroid/icu/text/MessagePatternUtil$ArgNode;Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;)Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;
    .locals 0

    iput-object p1, p0, Landroid/icu/text/MessagePatternUtil$ArgNode;->complexStyle:Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;

    return-object p1
.end method

.method static synthetic -set2(Landroid/icu/text/MessagePatternUtil$ArgNode;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Landroid/icu/text/MessagePatternUtil$ArgNode;->name:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set3(Landroid/icu/text/MessagePatternUtil$ArgNode;I)I
    .locals 0

    iput p1, p0, Landroid/icu/text/MessagePatternUtil$ArgNode;->number:I

    return p1
.end method

.method static synthetic -set4(Landroid/icu/text/MessagePatternUtil$ArgNode;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Landroid/icu/text/MessagePatternUtil$ArgNode;->style:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set5(Landroid/icu/text/MessagePatternUtil$ArgNode;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Landroid/icu/text/MessagePatternUtil$ArgNode;->typeName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -wrap0()Landroid/icu/text/MessagePatternUtil$ArgNode;
    .locals 1

    invoke-static {}, Landroid/icu/text/MessagePatternUtil$ArgNode;->createArgNode()Landroid/icu/text/MessagePatternUtil$ArgNode;

    move-result-object v0

    return-object v0
.end method

.method private constructor <init>()V
    .locals 2

    sget-object v0, Landroid/icu/text/MessagePatternUtil$MessageContentsNode$Type;->ARG:Landroid/icu/text/MessagePatternUtil$MessageContentsNode$Type;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/icu/text/MessagePatternUtil$MessageContentsNode;-><init>(Landroid/icu/text/MessagePatternUtil$MessageContentsNode$Type;Landroid/icu/text/MessagePatternUtil$MessageContentsNode;)V

    const/4 v0, -0x1

    iput v0, p0, Landroid/icu/text/MessagePatternUtil$ArgNode;->number:I

    return-void
.end method

.method private static createArgNode()Landroid/icu/text/MessagePatternUtil$ArgNode;
    .locals 1

    new-instance v0, Landroid/icu/text/MessagePatternUtil$ArgNode;

    invoke-direct {v0}, Landroid/icu/text/MessagePatternUtil$ArgNode;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getArgType()Landroid/icu/text/MessagePattern$ArgType;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/MessagePatternUtil$ArgNode;->argType:Landroid/icu/text/MessagePattern$ArgType;

    return-object v0
.end method

.method public getComplexStyle()Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/MessagePatternUtil$ArgNode;->complexStyle:Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/MessagePatternUtil$ArgNode;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()I
    .locals 1

    iget v0, p0, Landroid/icu/text/MessagePatternUtil$ArgNode;->number:I

    return v0
.end method

.method public getSimpleStyle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/MessagePatternUtil$ArgNode;->style:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/MessagePatternUtil$ArgNode;->typeName:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const/16 v3, 0x2c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/icu/text/MessagePatternUtil$ArgNode;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/icu/text/MessagePatternUtil$ArgNode;->argType:Landroid/icu/text/MessagePattern$ArgType;

    sget-object v2, Landroid/icu/text/MessagePattern$ArgType;->NONE:Landroid/icu/text/MessagePattern$ArgType;

    if-eq v1, v2, :cond_0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/icu/text/MessagePatternUtil$ArgNode;->typeName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/icu/text/MessagePatternUtil$ArgNode;->argType:Landroid/icu/text/MessagePattern$ArgType;

    sget-object v2, Landroid/icu/text/MessagePattern$ArgType;->SIMPLE:Landroid/icu/text/MessagePattern$ArgType;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Landroid/icu/text/MessagePatternUtil$ArgNode;->style:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/icu/text/MessagePatternUtil$ArgNode;->style:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    :goto_0
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/icu/text/MessagePatternUtil$ArgNode;->complexStyle:Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;

    invoke-virtual {v2}, Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
