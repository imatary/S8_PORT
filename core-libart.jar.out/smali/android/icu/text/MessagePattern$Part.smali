.class public final Landroid/icu/text/MessagePattern$Part;
.super Ljava/lang/Object;
.source "MessagePattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/MessagePattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Part"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/MessagePattern$Part$Type;
    }
.end annotation


# static fields
.field private static final MAX_LENGTH:I = 0xffff

.field private static final MAX_VALUE:I = 0x7fff


# instance fields
.field private final index:I

.field private final length:C

.field private limitPartIndex:I

.field private final type:Landroid/icu/text/MessagePattern$Part$Type;

.field private value:S


# direct methods
.method static synthetic -get0(Landroid/icu/text/MessagePattern$Part;)I
    .locals 1

    iget v0, p0, Landroid/icu/text/MessagePattern$Part;->index:I

    return v0
.end method

.method static synthetic -get1(Landroid/icu/text/MessagePattern$Part;)C
    .locals 1

    iget-char v0, p0, Landroid/icu/text/MessagePattern$Part;->length:C

    return v0
.end method

.method static synthetic -get2(Landroid/icu/text/MessagePattern$Part;)I
    .locals 1

    iget v0, p0, Landroid/icu/text/MessagePattern$Part;->limitPartIndex:I

    return v0
.end method

.method static synthetic -get3(Landroid/icu/text/MessagePattern$Part;)Landroid/icu/text/MessagePattern$Part$Type;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/MessagePattern$Part;->type:Landroid/icu/text/MessagePattern$Part$Type;

    return-object v0
.end method

.method static synthetic -get4(Landroid/icu/text/MessagePattern$Part;)S
    .locals 1

    iget-short v0, p0, Landroid/icu/text/MessagePattern$Part;->value:S

    return v0
.end method

.method static synthetic -set0(Landroid/icu/text/MessagePattern$Part;I)I
    .locals 0

    iput p1, p0, Landroid/icu/text/MessagePattern$Part;->limitPartIndex:I

    return p1
.end method

.method static synthetic -set1(Landroid/icu/text/MessagePattern$Part;S)S
    .locals 0

    iput-short p1, p0, Landroid/icu/text/MessagePattern$Part;->value:S

    return p1
.end method

.method private constructor <init>(Landroid/icu/text/MessagePattern$Part$Type;III)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/icu/text/MessagePattern$Part;->type:Landroid/icu/text/MessagePattern$Part$Type;

    iput p2, p0, Landroid/icu/text/MessagePattern$Part;->index:I

    int-to-char v0, p3

    iput-char v0, p0, Landroid/icu/text/MessagePattern$Part;->length:C

    int-to-short v0, p4

    iput-short v0, p0, Landroid/icu/text/MessagePattern$Part;->value:S

    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/text/MessagePattern$Part$Type;IIILandroid/icu/text/MessagePattern$Part;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/icu/text/MessagePattern$Part;-><init>(Landroid/icu/text/MessagePattern$Part$Type;III)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/icu/text/MessagePattern$Part;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_2

    :cond_1
    return v2

    :cond_2
    move-object v0, p1

    check-cast v0, Landroid/icu/text/MessagePattern$Part;

    iget-object v3, p0, Landroid/icu/text/MessagePattern$Part;->type:Landroid/icu/text/MessagePattern$Part$Type;

    iget-object v4, v0, Landroid/icu/text/MessagePattern$Part;->type:Landroid/icu/text/MessagePattern$Part$Type;

    invoke-virtual {v3, v4}, Landroid/icu/text/MessagePattern$Part$Type;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget v3, p0, Landroid/icu/text/MessagePattern$Part;->index:I

    iget v4, v0, Landroid/icu/text/MessagePattern$Part;->index:I

    if-ne v3, v4, :cond_4

    iget-char v3, p0, Landroid/icu/text/MessagePattern$Part;->length:C

    iget-char v4, v0, Landroid/icu/text/MessagePattern$Part;->length:C

    if-ne v3, v4, :cond_4

    iget-short v3, p0, Landroid/icu/text/MessagePattern$Part;->value:S

    iget-short v4, v0, Landroid/icu/text/MessagePattern$Part;->value:S

    if-ne v3, v4, :cond_4

    iget v3, p0, Landroid/icu/text/MessagePattern$Part;->limitPartIndex:I

    iget v4, v0, Landroid/icu/text/MessagePattern$Part;->limitPartIndex:I

    if-ne v3, v4, :cond_3

    :goto_0
    return v1

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public getArgType()Landroid/icu/text/MessagePattern$ArgType;
    .locals 3

    invoke-virtual {p0}, Landroid/icu/text/MessagePattern$Part;->getType()Landroid/icu/text/MessagePattern$Part$Type;

    move-result-object v0

    sget-object v1, Landroid/icu/text/MessagePattern$Part$Type;->ARG_START:Landroid/icu/text/MessagePattern$Part$Type;

    if-eq v0, v1, :cond_0

    sget-object v1, Landroid/icu/text/MessagePattern$Part$Type;->ARG_LIMIT:Landroid/icu/text/MessagePattern$Part$Type;

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-static {}, Landroid/icu/text/MessagePattern;->-get0()[Landroid/icu/text/MessagePattern$ArgType;

    move-result-object v1

    iget-short v2, p0, Landroid/icu/text/MessagePattern$Part;->value:S

    aget-object v1, v1, v2

    return-object v1

    :cond_1
    sget-object v1, Landroid/icu/text/MessagePattern$ArgType;->NONE:Landroid/icu/text/MessagePattern$ArgType;

    return-object v1
.end method

.method public getIndex()I
    .locals 1

    iget v0, p0, Landroid/icu/text/MessagePattern$Part;->index:I

    return v0
.end method

.method public getLength()I
    .locals 1

    iget-char v0, p0, Landroid/icu/text/MessagePattern$Part;->length:C

    return v0
.end method

.method public getLimit()I
    .locals 2

    iget v0, p0, Landroid/icu/text/MessagePattern$Part;->index:I

    iget-char v1, p0, Landroid/icu/text/MessagePattern$Part;->length:C

    add-int/2addr v0, v1

    return v0
.end method

.method public getType()Landroid/icu/text/MessagePattern$Part$Type;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/MessagePattern$Part;->type:Landroid/icu/text/MessagePattern$Part$Type;

    return-object v0
.end method

.method public getValue()I
    .locals 1

    iget-short v0, p0, Landroid/icu/text/MessagePattern$Part;->value:S

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Landroid/icu/text/MessagePattern$Part;->type:Landroid/icu/text/MessagePattern$Part$Type;

    invoke-virtual {v0}, Landroid/icu/text/MessagePattern$Part$Type;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    iget v1, p0, Landroid/icu/text/MessagePattern$Part;->index:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-char v1, p0, Landroid/icu/text/MessagePattern$Part;->length:C

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-short v1, p0, Landroid/icu/text/MessagePattern$Part;->value:S

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v1, p0, Landroid/icu/text/MessagePattern$Part;->type:Landroid/icu/text/MessagePattern$Part$Type;

    sget-object v2, Landroid/icu/text/MessagePattern$Part$Type;->ARG_START:Landroid/icu/text/MessagePattern$Part$Type;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Landroid/icu/text/MessagePattern$Part;->type:Landroid/icu/text/MessagePattern$Part$Type;

    sget-object v2, Landroid/icu/text/MessagePattern$Part$Type;->ARG_LIMIT:Landroid/icu/text/MessagePattern$Part$Type;

    if-ne v1, v2, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/icu/text/MessagePattern$Part;->getArgType()Landroid/icu/text/MessagePattern$ArgType;

    move-result-object v1

    invoke-virtual {v1}, Landroid/icu/text/MessagePattern$ArgType;->name()Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/icu/text/MessagePattern$Part;->type:Landroid/icu/text/MessagePattern$Part$Type;

    invoke-virtual {v2}, Landroid/icu/text/MessagePattern$Part$Type;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/icu/text/MessagePattern$Part;->index:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_1
    iget-short v1, p0, Landroid/icu/text/MessagePattern$Part;->value:S

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
