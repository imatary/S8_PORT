.class Landroid/icu/text/RBBINode;
.super Ljava/lang/Object;
.source "RBBINode.java"


# static fields
.field static final endMark:I = 0x6

.field static gLastSerial:I = 0x0

.field static final leafChar:I = 0x3

.field static final lookAhead:I = 0x4

.field static final nodeTypeLimit:I = 0x10

.field static final nodeTypeNames:[Ljava/lang/String;

.field static final opBreak:I = 0xd

.field static final opCat:I = 0x8

.field static final opLParen:I = 0xf

.field static final opOr:I = 0x9

.field static final opPlus:I = 0xb

.field static final opQuestion:I = 0xc

.field static final opReverse:I = 0xe

.field static final opStar:I = 0xa

.field static final opStart:I = 0x7

.field static final precLParen:I = 0x2

.field static final precOpCat:I = 0x4

.field static final precOpOr:I = 0x3

.field static final precStart:I = 0x1

.field static final precZero:I = 0x0

.field static final setRef:I = 0x0

.field static final tag:I = 0x5

.field static final uset:I = 0x1

.field static final varRef:I = 0x2


# instance fields
.field fFirstPos:I

.field fFirstPosSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/icu/text/RBBINode;",
            ">;"
        }
    .end annotation
.end field

.field fFollowPos:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/icu/text/RBBINode;",
            ">;"
        }
    .end annotation
.end field

.field fInputSet:Landroid/icu/text/UnicodeSet;

.field fLastPos:I

.field fLastPosSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/icu/text/RBBINode;",
            ">;"
        }
    .end annotation
.end field

.field fLeftChild:Landroid/icu/text/RBBINode;

.field fLookAheadEnd:Z

.field fNullable:Z

.field fParent:Landroid/icu/text/RBBINode;

.field fPrecedence:I

.field fRightChild:Landroid/icu/text/RBBINode;

.field fSerialNum:I

.field fText:Ljava/lang/String;

.field fType:I

.field fVal:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "setRef"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "uset"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "varRef"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "leafChar"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "lookAhead"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "tag"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "endMark"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "opStart"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "opCat"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "opOr"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "opStar"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "opPlus"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string/jumbo v1, "opQuestion"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string/jumbo v1, "opBreak"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string/jumbo v1, "opReverse"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string/jumbo v1, "opLParen"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sput-object v0, Landroid/icu/text/RBBINode;->nodeTypeNames:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(I)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Landroid/icu/text/RBBINode;->fPrecedence:I

    const/16 v0, 0x10

    if-ge p1, v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Landroid/icu/impl/Assert;->assrt(Z)V

    sget v0, Landroid/icu/text/RBBINode;->gLastSerial:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/icu/text/RBBINode;->gLastSerial:I

    iput v0, p0, Landroid/icu/text/RBBINode;->fSerialNum:I

    iput p1, p0, Landroid/icu/text/RBBINode;->fType:I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/icu/text/RBBINode;->fFirstPosSet:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/icu/text/RBBINode;->fLastPosSet:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/icu/text/RBBINode;->fFollowPos:Ljava/util/Set;

    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    const/4 v0, 0x4

    iput v0, p0, Landroid/icu/text/RBBINode;->fPrecedence:I

    :goto_1
    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    const/16 v0, 0x9

    if-ne p1, v0, :cond_2

    const/4 v0, 0x3

    iput v0, p0, Landroid/icu/text/RBBINode;->fPrecedence:I

    goto :goto_1

    :cond_2
    const/4 v0, 0x7

    if-ne p1, v0, :cond_3

    iput v1, p0, Landroid/icu/text/RBBINode;->fPrecedence:I

    goto :goto_1

    :cond_3
    const/16 v0, 0xf

    if-ne p1, v0, :cond_4

    const/4 v0, 0x2

    iput v0, p0, Landroid/icu/text/RBBINode;->fPrecedence:I

    goto :goto_1

    :cond_4
    iput v2, p0, Landroid/icu/text/RBBINode;->fPrecedence:I

    goto :goto_1
.end method

.method constructor <init>(Landroid/icu/text/RBBINode;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/text/RBBINode;->fPrecedence:I

    sget v0, Landroid/icu/text/RBBINode;->gLastSerial:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/icu/text/RBBINode;->gLastSerial:I

    iput v0, p0, Landroid/icu/text/RBBINode;->fSerialNum:I

    iget v0, p1, Landroid/icu/text/RBBINode;->fType:I

    iput v0, p0, Landroid/icu/text/RBBINode;->fType:I

    iget-object v0, p1, Landroid/icu/text/RBBINode;->fInputSet:Landroid/icu/text/UnicodeSet;

    iput-object v0, p0, Landroid/icu/text/RBBINode;->fInputSet:Landroid/icu/text/UnicodeSet;

    iget v0, p1, Landroid/icu/text/RBBINode;->fPrecedence:I

    iput v0, p0, Landroid/icu/text/RBBINode;->fPrecedence:I

    iget-object v0, p1, Landroid/icu/text/RBBINode;->fText:Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/RBBINode;->fText:Ljava/lang/String;

    iget v0, p1, Landroid/icu/text/RBBINode;->fFirstPos:I

    iput v0, p0, Landroid/icu/text/RBBINode;->fFirstPos:I

    iget v0, p1, Landroid/icu/text/RBBINode;->fLastPos:I

    iput v0, p0, Landroid/icu/text/RBBINode;->fLastPos:I

    iget-boolean v0, p1, Landroid/icu/text/RBBINode;->fNullable:Z

    iput-boolean v0, p0, Landroid/icu/text/RBBINode;->fNullable:Z

    iget v0, p1, Landroid/icu/text/RBBINode;->fVal:I

    iput v0, p0, Landroid/icu/text/RBBINode;->fVal:I

    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p1, Landroid/icu/text/RBBINode;->fFirstPosSet:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/icu/text/RBBINode;->fFirstPosSet:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p1, Landroid/icu/text/RBBINode;->fLastPosSet:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/icu/text/RBBINode;->fLastPosSet:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p1, Landroid/icu/text/RBBINode;->fFollowPos:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/icu/text/RBBINode;->fFollowPos:Ljava/util/Set;

    return-void
.end method

.method static printHex(II)V
    .locals 5

    const/4 v4, 0x0

    const/16 v2, 0x10

    invoke-static {p0, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "00000"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    rsub-int/lit8 v3, v3, 0x5

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/icu/text/RBBINode;->printString(Ljava/lang/String;I)V

    return-void
.end method

.method static printInt(II)V
    .locals 2

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Landroid/icu/text/RBBINode;->printString(Ljava/lang/String;I)V

    return-void
.end method

.method static printNode(Landroid/icu/text/RBBINode;)V
    .locals 5

    const/16 v4, 0xc

    const/16 v3, 0xb

    const/4 v1, 0x0

    if-nez p0, :cond_1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, " -- null --\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_0
    :goto_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    :cond_1
    iget v0, p0, Landroid/icu/text/RBBINode;->fSerialNum:I

    const/16 v2, 0xa

    invoke-static {v0, v2}, Landroid/icu/text/RBBINode;->printInt(II)V

    sget-object v0, Landroid/icu/text/RBBINode;->nodeTypeNames:[Ljava/lang/String;

    iget v2, p0, Landroid/icu/text/RBBINode;->fType:I

    aget-object v0, v0, v2

    invoke-static {v0, v3}, Landroid/icu/text/RBBINode;->printString(Ljava/lang/String;I)V

    iget-object v0, p0, Landroid/icu/text/RBBINode;->fParent:Landroid/icu/text/RBBINode;

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    invoke-static {v0, v3}, Landroid/icu/text/RBBINode;->printInt(II)V

    iget-object v0, p0, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    if-nez v0, :cond_3

    move v0, v1

    :goto_2
    invoke-static {v0, v3}, Landroid/icu/text/RBBINode;->printInt(II)V

    iget-object v0, p0, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    if-nez v0, :cond_4

    :goto_3
    invoke-static {v1, v4}, Landroid/icu/text/RBBINode;->printInt(II)V

    iget v0, p0, Landroid/icu/text/RBBINode;->fFirstPos:I

    invoke-static {v0, v4}, Landroid/icu/text/RBBINode;->printInt(II)V

    iget v0, p0, Landroid/icu/text/RBBINode;->fVal:I

    const/4 v1, 0x7

    invoke-static {v0, v1}, Landroid/icu/text/RBBINode;->printInt(II)V

    iget v0, p0, Landroid/icu/text/RBBINode;->fType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/icu/text/RBBINode;->fText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/icu/text/RBBINode;->fParent:Landroid/icu/text/RBBINode;

    iget v0, v0, Landroid/icu/text/RBBINode;->fSerialNum:I

    goto :goto_1

    :cond_3
    iget-object v0, p0, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    iget v0, v0, Landroid/icu/text/RBBINode;->fSerialNum:I

    goto :goto_2

    :cond_4
    iget-object v0, p0, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    iget v1, v0, Landroid/icu/text/RBBINode;->fSerialNum:I

    goto :goto_3
.end method

.method static printString(Ljava/lang/String;I)V
    .locals 3

    const/16 v2, 0x20

    move v0, p1

    :goto_0
    if-gez v0, :cond_0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(C)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    :goto_1
    if-ge v0, p1, :cond_1

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(C)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, p0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method cloneTree()Landroid/icu/text/RBBINode;
    .locals 3

    iget v1, p0, Landroid/icu/text/RBBINode;->fType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    invoke-virtual {v1}, Landroid/icu/text/RBBINode;->cloneTree()Landroid/icu/text/RBBINode;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget v1, p0, Landroid/icu/text/RBBINode;->fType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    move-object v0, p0

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/icu/text/RBBINode;

    invoke-direct {v0, p0}, Landroid/icu/text/RBBINode;-><init>(Landroid/icu/text/RBBINode;)V

    iget-object v1, p0, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    invoke-virtual {v1}, Landroid/icu/text/RBBINode;->cloneTree()Landroid/icu/text/RBBINode;

    move-result-object v1

    iput-object v1, v0, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    iget-object v1, v0, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    iput-object v0, v1, Landroid/icu/text/RBBINode;->fParent:Landroid/icu/text/RBBINode;

    :cond_3
    iget-object v1, p0, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    invoke-virtual {v1}, Landroid/icu/text/RBBINode;->cloneTree()Landroid/icu/text/RBBINode;

    move-result-object v1

    iput-object v1, v0, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    iget-object v1, v0, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    iput-object v0, v1, Landroid/icu/text/RBBINode;->fParent:Landroid/icu/text/RBBINode;

    goto :goto_0
.end method

.method findNodes(Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/icu/text/RBBINode;",
            ">;I)V"
        }
    .end annotation

    iget v0, p0, Landroid/icu/text/RBBINode;->fType:I

    if-ne v0, p2, :cond_0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    invoke-virtual {v0, p1, p2}, Landroid/icu/text/RBBINode;->findNodes(Ljava/util/List;I)V

    :cond_1
    iget-object v0, p0, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    invoke-virtual {v0, p1, p2}, Landroid/icu/text/RBBINode;->findNodes(Ljava/util/List;I)V

    :cond_2
    return-void
.end method

.method flattenSets()V
    .locals 5

    const/4 v3, 0x0

    iget v4, p0, Landroid/icu/text/RBBINode;->fType:I

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    :cond_0
    invoke-static {v3}, Landroid/icu/impl/Assert;->assrt(Z)V

    iget-object v3, p0, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    iget v3, v3, Landroid/icu/text/RBBINode;->fType:I

    if-nez v3, :cond_3

    iget-object v1, p0, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    iget-object v2, v1, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    iget-object v0, v2, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    invoke-virtual {v0}, Landroid/icu/text/RBBINode;->cloneTree()Landroid/icu/text/RBBINode;

    move-result-object v3

    iput-object v3, p0, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    iget-object v3, p0, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    iput-object p0, v3, Landroid/icu/text/RBBINode;->fParent:Landroid/icu/text/RBBINode;

    :cond_1
    :goto_0
    iget-object v3, p0, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    iget v3, v3, Landroid/icu/text/RBBINode;->fType:I

    if-nez v3, :cond_4

    iget-object v1, p0, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    iget-object v2, v1, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    iget-object v0, v2, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    invoke-virtual {v0}, Landroid/icu/text/RBBINode;->cloneTree()Landroid/icu/text/RBBINode;

    move-result-object v3

    iput-object v3, p0, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    iget-object v3, p0, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    iput-object p0, v3, Landroid/icu/text/RBBINode;->fParent:Landroid/icu/text/RBBINode;

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget-object v3, p0, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    invoke-virtual {v3}, Landroid/icu/text/RBBINode;->flattenSets()V

    goto :goto_0

    :cond_4
    iget-object v3, p0, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    invoke-virtual {v3}, Landroid/icu/text/RBBINode;->flattenSets()V

    goto :goto_1
.end method

.method flattenVariables()Landroid/icu/text/RBBINode;
    .locals 3

    iget v1, p0, Landroid/icu/text/RBBINode;->fType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    invoke-virtual {v1}, Landroid/icu/text/RBBINode;->cloneTree()Landroid/icu/text/RBBINode;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v1, p0, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    invoke-virtual {v1}, Landroid/icu/text/RBBINode;->flattenVariables()Landroid/icu/text/RBBINode;

    move-result-object v1

    iput-object v1, p0, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    iget-object v1, p0, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    iput-object p0, v1, Landroid/icu/text/RBBINode;->fParent:Landroid/icu/text/RBBINode;

    :cond_1
    iget-object v1, p0, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    invoke-virtual {v1}, Landroid/icu/text/RBBINode;->flattenVariables()Landroid/icu/text/RBBINode;

    move-result-object v1

    iput-object v1, p0, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    iget-object v1, p0, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    iput-object p0, v1, Landroid/icu/text/RBBINode;->fParent:Landroid/icu/text/RBBINode;

    :cond_2
    return-object p0
.end method

.method printTree(Z)V
    .locals 3

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, "-------------------------------------------------------------------"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, "    Serial       type     Parent  LeftChild  RightChild    position  value"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    invoke-static {p0}, Landroid/icu/text/RBBINode;->printNode(Landroid/icu/text/RBBINode;)V

    iget v0, p0, Landroid/icu/text/RBBINode;->fType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    invoke-virtual {v0, v2}, Landroid/icu/text/RBBINode;->printTree(Z)V

    :cond_1
    iget-object v0, p0, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    invoke-virtual {v0, v2}, Landroid/icu/text/RBBINode;->printTree(Z)V

    :cond_2
    return-void
.end method
