.class public final Landroid/icu/text/MessagePattern;
.super Ljava/lang/Object;
.source "MessagePattern.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Landroid/icu/util/Freezable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/MessagePattern$ApostropheMode;,
        Landroid/icu/text/MessagePattern$ArgType;,
        Landroid/icu/text/MessagePattern$Part;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;",
        "Landroid/icu/util/Freezable",
        "<",
        "Landroid/icu/text/MessagePattern;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field public static final ARG_NAME_NOT_NUMBER:I = -0x1

.field public static final ARG_NAME_NOT_VALID:I = -0x2

.field private static final MAX_PREFIX_LENGTH:I = 0x18

.field public static final NO_NUMERIC_VALUE:D = -1.23456789E8

.field private static final argTypes:[Landroid/icu/text/MessagePattern$ArgType;

.field private static final defaultAposMode:Landroid/icu/text/MessagePattern$ApostropheMode;


# instance fields
.field private aposMode:Landroid/icu/text/MessagePattern$ApostropheMode;

.field private volatile frozen:Z

.field private hasArgNames:Z

.field private hasArgNumbers:Z

.field private msg:Ljava/lang/String;

.field private needsAutoQuoting:Z

.field private numericValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private parts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/icu/text/MessagePattern$Part;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()[Landroid/icu/text/MessagePattern$ArgType;
    .locals 1

    sget-object v0, Landroid/icu/text/MessagePattern;->argTypes:[Landroid/icu/text/MessagePattern$ArgType;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    const-class v0, Landroid/icu/text/MessagePattern;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Landroid/icu/text/MessagePattern;->-assertionsDisabled:Z

    const-string/jumbo v0, "android.icu.text.MessagePattern.ApostropheMode"

    const-string/jumbo v1, "DOUBLE_OPTIONAL"

    invoke-static {v0, v1}, Landroid/icu/impl/ICUConfig;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/text/MessagePattern$ApostropheMode;->valueOf(Ljava/lang/String;)Landroid/icu/text/MessagePattern$ApostropheMode;

    move-result-object v0

    sput-object v0, Landroid/icu/text/MessagePattern;->defaultAposMode:Landroid/icu/text/MessagePattern$ApostropheMode;

    invoke-static {}, Landroid/icu/text/MessagePattern$ArgType;->values()[Landroid/icu/text/MessagePattern$ArgType;

    move-result-object v0

    sput-object v0, Landroid/icu/text/MessagePattern;->argTypes:[Landroid/icu/text/MessagePattern$ArgType;

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/icu/text/MessagePattern;->parts:Ljava/util/ArrayList;

    sget-object v0, Landroid/icu/text/MessagePattern;->defaultAposMode:Landroid/icu/text/MessagePattern$ApostropheMode;

    iput-object v0, p0, Landroid/icu/text/MessagePattern;->aposMode:Landroid/icu/text/MessagePattern$ApostropheMode;

    return-void
.end method

.method public constructor <init>(Landroid/icu/text/MessagePattern$ApostropheMode;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/icu/text/MessagePattern;->parts:Ljava/util/ArrayList;

    iput-object p1, p0, Landroid/icu/text/MessagePattern;->aposMode:Landroid/icu/text/MessagePattern$ApostropheMode;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/icu/text/MessagePattern;->parts:Ljava/util/ArrayList;

    sget-object v0, Landroid/icu/text/MessagePattern;->defaultAposMode:Landroid/icu/text/MessagePattern$ApostropheMode;

    iput-object v0, p0, Landroid/icu/text/MessagePattern;->aposMode:Landroid/icu/text/MessagePattern$ApostropheMode;

    invoke-virtual {p0, p1}, Landroid/icu/text/MessagePattern;->parse(Ljava/lang/String;)Landroid/icu/text/MessagePattern;

    return-void
.end method

.method private addArgDoublePart(DII)V
    .locals 3

    iget-object v1, p0, Landroid/icu/text/MessagePattern;->numericValues:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/icu/text/MessagePattern;->numericValues:Ljava/util/ArrayList;

    const/4 v0, 0x0

    :cond_0
    iget-object v1, p0, Landroid/icu/text/MessagePattern;->numericValues:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Landroid/icu/text/MessagePattern$Part$Type;->ARG_DOUBLE:Landroid/icu/text/MessagePattern$Part$Type;

    invoke-direct {p0, v1, p3, p4, v0}, Landroid/icu/text/MessagePattern;->addPart(Landroid/icu/text/MessagePattern$Part$Type;III)V

    return-void

    :cond_1
    iget-object v1, p0, Landroid/icu/text/MessagePattern;->numericValues:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x7fff

    if-le v0, v1, :cond_0

    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    const-string/jumbo v2, "Too many numeric values"

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private addLimitPart(ILandroid/icu/text/MessagePattern$Part$Type;III)V
    .locals 2

    iget-object v0, p0, Landroid/icu/text/MessagePattern;->parts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/MessagePattern$Part;

    iget-object v1, p0, Landroid/icu/text/MessagePattern;->parts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v0, v1}, Landroid/icu/text/MessagePattern$Part;->-set0(Landroid/icu/text/MessagePattern$Part;I)I

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/icu/text/MessagePattern;->addPart(Landroid/icu/text/MessagePattern$Part$Type;III)V

    return-void
.end method

.method private addPart(Landroid/icu/text/MessagePattern$Part$Type;III)V
    .locals 7

    iget-object v6, p0, Landroid/icu/text/MessagePattern;->parts:Ljava/util/ArrayList;

    new-instance v0, Landroid/icu/text/MessagePattern$Part;

    const/4 v5, 0x0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/icu/text/MessagePattern$Part;-><init>(Landroid/icu/text/MessagePattern$Part$Type;IIILandroid/icu/text/MessagePattern$Part;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static appendReducedApostrophes(Ljava/lang/String;IILjava/lang/StringBuilder;)V
    .locals 3

    const/16 v2, 0x27

    const/4 v0, -0x1

    :goto_0
    invoke-virtual {p0, v2, p1}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-ltz v1, :cond_0

    if-lt v1, p2, :cond_1

    :cond_0
    invoke-virtual {p3, p0, p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    return-void

    :cond_1
    if-ne v1, v0, :cond_2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    const/4 v0, -0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p3, p0, p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    add-int/lit8 p1, v1, 0x1

    move v0, p1

    goto :goto_0
.end method

.method private inMessageFormatPattern(I)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gtz p1, :cond_0

    iget-object v0, p0, Landroid/icu/text/MessagePattern;->parts:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/MessagePattern$Part;

    invoke-static {v0}, Landroid/icu/text/MessagePattern$Part;->-get3(Landroid/icu/text/MessagePattern$Part;)Landroid/icu/text/MessagePattern$Part$Type;

    move-result-object v0

    sget-object v3, Landroid/icu/text/MessagePattern$Part$Type;->MSG_START:Landroid/icu/text/MessagePattern$Part$Type;

    if-ne v0, v3, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method private inTopLevelChoiceMessage(ILandroid/icu/text/MessagePattern$ArgType;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v1, :cond_1

    sget-object v0, Landroid/icu/text/MessagePattern$ArgType;->CHOICE:Landroid/icu/text/MessagePattern$ArgType;

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Landroid/icu/text/MessagePattern;->parts:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/MessagePattern$Part;

    invoke-static {v0}, Landroid/icu/text/MessagePattern$Part;->-get3(Landroid/icu/text/MessagePattern$Part;)Landroid/icu/text/MessagePattern$Part$Type;

    move-result-object v0

    sget-object v3, Landroid/icu/text/MessagePattern$Part$Type;->MSG_START:Landroid/icu/text/MessagePattern$Part$Type;

    if-eq v0, v3, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method private static isArgTypeChar(I)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x61

    if-gt v2, p0, :cond_1

    const/16 v2, 0x7a

    if-gt p0, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v2, 0x41

    if-gt v2, p0, :cond_2

    const/16 v2, 0x5a

    if-le p0, v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private isChoice(I)Z
    .locals 7

    const/16 v6, 0x63

    const/16 v5, 0x43

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v4, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v6, :cond_0

    if-ne v0, v5, :cond_6

    :cond_0
    iget-object v4, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    add-int/lit8 p1, v1, 0x1

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v4, 0x68

    if-eq v0, v4, :cond_1

    const/16 v4, 0x48

    if-ne v0, v4, :cond_7

    :cond_1
    iget-object v4, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v4, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v4, 0x6f

    if-eq v0, v4, :cond_2

    const/16 v4, 0x4f

    if-ne v0, v4, :cond_8

    :cond_2
    iget-object v4, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    add-int/lit8 p1, v1, 0x1

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v4, 0x69

    if-eq v0, v4, :cond_3

    const/16 v4, 0x49

    if-ne v0, v4, :cond_7

    :cond_3
    iget-object v4, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v4, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v6, :cond_4

    if-ne v0, v5, :cond_9

    :cond_4
    iget-object v4, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v4, 0x65

    if-eq v0, v4, :cond_5

    const/16 v4, 0x45

    if-ne v0, v4, :cond_a

    :cond_5
    :goto_0
    move p1, v1

    :goto_1
    return v2

    :cond_6
    move p1, v1

    :cond_7
    :goto_2
    move v2, v3

    goto :goto_1

    :cond_8
    move p1, v1

    goto :goto_2

    :cond_9
    move p1, v1

    goto :goto_2

    :cond_a
    move v2, v3

    goto :goto_0
.end method

.method private isOrdinal(I)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v4, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v4, 0x6f

    if-eq v0, v4, :cond_0

    const/16 v4, 0x4f

    if-ne v0, v4, :cond_7

    :cond_0
    iget-object v4, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    add-int/lit8 p1, v1, 0x1

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v4, 0x72

    if-eq v0, v4, :cond_1

    const/16 v4, 0x52

    if-ne v0, v4, :cond_8

    :cond_1
    iget-object v4, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v4, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v4, 0x64

    if-eq v0, v4, :cond_2

    const/16 v4, 0x44

    if-ne v0, v4, :cond_9

    :cond_2
    iget-object v4, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    add-int/lit8 p1, v1, 0x1

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v4, 0x69

    if-eq v0, v4, :cond_3

    const/16 v4, 0x49

    if-ne v0, v4, :cond_8

    :cond_3
    iget-object v4, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v4, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v4, 0x6e

    if-eq v0, v4, :cond_4

    const/16 v4, 0x4e

    if-ne v0, v4, :cond_a

    :cond_4
    iget-object v4, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    add-int/lit8 p1, v1, 0x1

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v4, 0x61

    if-eq v0, v4, :cond_5

    const/16 v4, 0x41

    if-ne v0, v4, :cond_8

    :cond_5
    iget-object v4, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v4, 0x6c

    if-eq v0, v4, :cond_6

    const/16 v4, 0x4c

    if-ne v0, v4, :cond_b

    :cond_6
    :goto_0
    return v2

    :cond_7
    move p1, v1

    :cond_8
    :goto_1
    move v2, v3

    goto :goto_0

    :cond_9
    move p1, v1

    goto :goto_1

    :cond_a
    move p1, v1

    goto :goto_1

    :cond_b
    move v2, v3

    goto :goto_0
.end method

.method private isPlural(I)Z
    .locals 7

    const/16 v6, 0x6c

    const/16 v5, 0x4c

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v4, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v4, 0x70

    if-eq v0, v4, :cond_0

    const/16 v4, 0x50

    if-ne v0, v4, :cond_6

    :cond_0
    iget-object v4, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    add-int/lit8 p1, v1, 0x1

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v6, :cond_1

    if-ne v0, v5, :cond_7

    :cond_1
    iget-object v4, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v4, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v4, 0x75

    if-eq v0, v4, :cond_2

    const/16 v4, 0x55

    if-ne v0, v4, :cond_8

    :cond_2
    iget-object v4, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    add-int/lit8 p1, v1, 0x1

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v4, 0x72

    if-eq v0, v4, :cond_3

    const/16 v4, 0x52

    if-ne v0, v4, :cond_7

    :cond_3
    iget-object v4, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v4, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v4, 0x61

    if-eq v0, v4, :cond_4

    const/16 v4, 0x41

    if-ne v0, v4, :cond_9

    :cond_4
    iget-object v4, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v6, :cond_5

    if-ne v0, v5, :cond_a

    :cond_5
    :goto_0
    move p1, v1

    :goto_1
    return v2

    :cond_6
    move p1, v1

    :cond_7
    :goto_2
    move v2, v3

    goto :goto_1

    :cond_8
    move p1, v1

    goto :goto_2

    :cond_9
    move p1, v1

    goto :goto_2

    :cond_a
    move v2, v3

    goto :goto_0
.end method

.method private isSelect(I)Z
    .locals 7

    const/16 v6, 0x65

    const/16 v5, 0x45

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v4, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v4, 0x73

    if-eq v0, v4, :cond_0

    const/16 v4, 0x53

    if-ne v0, v4, :cond_6

    :cond_0
    iget-object v4, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    add-int/lit8 p1, v1, 0x1

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v6, :cond_1

    if-ne v0, v5, :cond_7

    :cond_1
    iget-object v4, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v4, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v4, 0x6c

    if-eq v0, v4, :cond_2

    const/16 v4, 0x4c

    if-ne v0, v4, :cond_8

    :cond_2
    iget-object v4, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    add-int/lit8 p1, v1, 0x1

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v6, :cond_3

    if-ne v0, v5, :cond_7

    :cond_3
    iget-object v4, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v4, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v4, 0x63

    if-eq v0, v4, :cond_4

    const/16 v4, 0x43

    if-ne v0, v4, :cond_9

    :cond_4
    iget-object v4, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v4, 0x74

    if-eq v0, v4, :cond_5

    const/16 v4, 0x54

    if-ne v0, v4, :cond_a

    :cond_5
    :goto_0
    move p1, v1

    :goto_1
    return v2

    :cond_6
    move p1, v1

    :cond_7
    :goto_2
    move v2, v3

    goto :goto_1

    :cond_8
    move p1, v1

    goto :goto_2

    :cond_9
    move p1, v1

    goto :goto_2

    :cond_a
    move v2, v3

    goto :goto_0
.end method

.method private parseArg(III)I
    .locals 17

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/icu/text/MessagePattern;->parts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    sget-object v9, Landroid/icu/text/MessagePattern$ArgType;->NONE:Landroid/icu/text/MessagePattern$ArgType;

    sget-object v3, Landroid/icu/text/MessagePattern$Part$Type;->ARG_START:Landroid/icu/text/MessagePattern$Part$Type;

    invoke-virtual {v9}, Landroid/icu/text/MessagePattern$ArgType;->ordinal()I

    move-result v5

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v3, v1, v2, v5}, Landroid/icu/text/MessagePattern;->addPart(Landroid/icu/text/MessagePattern$Part$Type;III)V

    add-int v3, p1, p2

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/icu/text/MessagePattern;->skipWhiteSpace(I)I

    move-result p1

    move/from16 v14, p1

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    move/from16 v0, p1

    if-ne v0, v3, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unmatched \'{\' braces in message "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct/range {p0 .. p0}, Landroid/icu/text/MessagePattern;->prefix()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    invoke-direct/range {p0 .. p1}, Landroid/icu/text/MessagePattern;->skipIdentifier(I)I

    move-result v11

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v11}, Landroid/icu/text/MessagePattern;->parseArgNumber(II)I

    move-result v15

    if-ltz v15, :cond_3

    sub-int v13, v11, p1

    const v3, 0xffff

    if-gt v13, v3, :cond_1

    const/16 v3, 0x7fff

    if-le v15, v3, :cond_2

    :cond_1
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Argument number too large: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct/range {p0 .. p1}, Landroid/icu/text/MessagePattern;->prefix(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/icu/text/MessagePattern;->hasArgNumbers:Z

    sget-object v3, Landroid/icu/text/MessagePattern$Part$Type;->ARG_NUMBER:Landroid/icu/text/MessagePattern$Part$Type;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v3, v1, v13, v15}, Landroid/icu/text/MessagePattern;->addPart(Landroid/icu/text/MessagePattern$Part$Type;III)V

    :goto_0
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Landroid/icu/text/MessagePattern;->skipWhiteSpace(I)I

    move-result v11

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v11, v3, :cond_6

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unmatched \'{\' braces in message "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct/range {p0 .. p0}, Landroid/icu/text/MessagePattern;->prefix()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_3
    const/4 v3, -0x1

    if-ne v15, v3, :cond_5

    sub-int v13, v11, p1

    const v3, 0xffff

    if-le v13, v3, :cond_4

    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Argument name too long: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct/range {p0 .. p1}, Landroid/icu/text/MessagePattern;->prefix(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_4
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/icu/text/MessagePattern;->hasArgNames:Z

    sget-object v3, Landroid/icu/text/MessagePattern$Part$Type;->ARG_NAME:Landroid/icu/text/MessagePattern$Part$Type;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v3, v1, v13, v5}, Landroid/icu/text/MessagePattern;->addPart(Landroid/icu/text/MessagePattern$Part$Type;III)V

    goto :goto_0

    :cond_5
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Bad argument syntax: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct/range {p0 .. p1}, Landroid/icu/text/MessagePattern;->prefix(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {v3, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v3, 0x7d

    if-ne v10, v3, :cond_7

    move/from16 p1, v11

    :goto_1
    sget-object v5, Landroid/icu/text/MessagePattern$Part$Type;->ARG_LIMIT:Landroid/icu/text/MessagePattern$Part$Type;

    invoke-virtual {v9}, Landroid/icu/text/MessagePattern$ArgType;->ordinal()I

    move-result v8

    const/4 v7, 0x1

    move-object/from16 v3, p0

    move/from16 v6, p1

    invoke-direct/range {v3 .. v8}, Landroid/icu/text/MessagePattern;->addLimitPart(ILandroid/icu/text/MessagePattern$Part$Type;III)V

    add-int/lit8 v3, p1, 0x1

    return v3

    :cond_7
    const/16 v3, 0x2c

    if-eq v10, v3, :cond_8

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Bad argument syntax: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct/range {p0 .. p1}, Landroid/icu/text/MessagePattern;->prefix(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_8
    add-int/lit8 v3, v11, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/icu/text/MessagePattern;->skipWhiteSpace(I)I

    move-result v11

    move/from16 v16, v11

    move v12, v11

    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v12, v3, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {v3, v12}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Landroid/icu/text/MessagePattern;->isArgTypeChar(I)Z

    move-result v3

    if-eqz v3, :cond_9

    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_9
    sub-int v13, v12, v11

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Landroid/icu/text/MessagePattern;->skipWhiteSpace(I)I

    move-result v12

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v12, v3, :cond_a

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unmatched \'{\' braces in message "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct/range {p0 .. p0}, Landroid/icu/text/MessagePattern;->prefix()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_a
    if-eqz v13, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {v3, v12}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v3, 0x2c

    if-eq v10, v3, :cond_c

    const/16 v3, 0x7d

    if-eq v10, v3, :cond_c

    :cond_b
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Bad argument syntax: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct/range {p0 .. p1}, Landroid/icu/text/MessagePattern;->prefix(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_c
    const v3, 0xffff

    if-le v13, v3, :cond_d

    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Argument type name too long: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct/range {p0 .. p1}, Landroid/icu/text/MessagePattern;->prefix(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_d
    sget-object v9, Landroid/icu/text/MessagePattern$ArgType;->SIMPLE:Landroid/icu/text/MessagePattern$ArgType;

    const/4 v3, 0x6

    if-ne v13, v3, :cond_12

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Landroid/icu/text/MessagePattern;->isChoice(I)Z

    move-result v3

    if-eqz v3, :cond_10

    sget-object v9, Landroid/icu/text/MessagePattern$ArgType;->CHOICE:Landroid/icu/text/MessagePattern$ArgType;

    :cond_e
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/icu/text/MessagePattern;->parts:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/icu/text/MessagePattern$Part;

    invoke-virtual {v9}, Landroid/icu/text/MessagePattern$ArgType;->ordinal()I

    move-result v5

    int-to-short v5, v5

    invoke-static {v3, v5}, Landroid/icu/text/MessagePattern$Part;->-set1(Landroid/icu/text/MessagePattern$Part;S)S

    sget-object v3, Landroid/icu/text/MessagePattern$ArgType;->SIMPLE:Landroid/icu/text/MessagePattern$ArgType;

    if-ne v9, v3, :cond_f

    sget-object v3, Landroid/icu/text/MessagePattern$Part$Type;->ARG_TYPE:Landroid/icu/text/MessagePattern$Part$Type;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v11, v13, v5}, Landroid/icu/text/MessagePattern;->addPart(Landroid/icu/text/MessagePattern$Part$Type;III)V

    :cond_f
    const/16 v3, 0x7d

    if-ne v10, v3, :cond_13

    sget-object v3, Landroid/icu/text/MessagePattern$ArgType;->SIMPLE:Landroid/icu/text/MessagePattern$ArgType;

    if-eq v9, v3, :cond_16

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "No style field for complex argument: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct/range {p0 .. p1}, Landroid/icu/text/MessagePattern;->prefix(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_10
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Landroid/icu/text/MessagePattern;->isPlural(I)Z

    move-result v3

    if-eqz v3, :cond_11

    sget-object v9, Landroid/icu/text/MessagePattern$ArgType;->PLURAL:Landroid/icu/text/MessagePattern$ArgType;

    goto :goto_3

    :cond_11
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Landroid/icu/text/MessagePattern;->isSelect(I)Z

    move-result v3

    if-eqz v3, :cond_e

    sget-object v9, Landroid/icu/text/MessagePattern$ArgType;->SELECT:Landroid/icu/text/MessagePattern$ArgType;

    goto :goto_3

    :cond_12
    const/16 v3, 0xd

    if-ne v13, v3, :cond_e

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Landroid/icu/text/MessagePattern;->isSelect(I)Z

    move-result v3

    if-eqz v3, :cond_e

    add-int/lit8 v3, v11, 0x6

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/icu/text/MessagePattern;->isOrdinal(I)Z

    move-result v3

    if-eqz v3, :cond_e

    sget-object v9, Landroid/icu/text/MessagePattern$ArgType;->SELECTORDINAL:Landroid/icu/text/MessagePattern$ArgType;

    goto :goto_3

    :cond_13
    add-int/lit8 p1, v12, 0x1

    sget-object v3, Landroid/icu/text/MessagePattern$ArgType;->SIMPLE:Landroid/icu/text/MessagePattern$ArgType;

    if-ne v9, v3, :cond_14

    invoke-direct/range {p0 .. p1}, Landroid/icu/text/MessagePattern;->parseSimpleStyle(I)I

    move-result p1

    goto/16 :goto_1

    :cond_14
    sget-object v3, Landroid/icu/text/MessagePattern$ArgType;->CHOICE:Landroid/icu/text/MessagePattern$ArgType;

    if-ne v9, v3, :cond_15

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Landroid/icu/text/MessagePattern;->parseChoiceStyle(II)I

    move-result p1

    goto/16 :goto_1

    :cond_15
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p3

    invoke-direct {v0, v9, v1, v2}, Landroid/icu/text/MessagePattern;->parsePluralOrSelectStyle(Landroid/icu/text/MessagePattern$ArgType;II)I

    move-result p1

    goto/16 :goto_1

    :cond_16
    move/from16 p1, v12

    goto/16 :goto_1
.end method

.method private parseArgNumber(II)I
    .locals 1

    iget-object v0, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Landroid/icu/text/MessagePattern;->parseArgNumber(Ljava/lang/CharSequence;II)I

    move-result v0

    return v0
.end method

.method private static parseArgNumber(Ljava/lang/CharSequence;II)I
    .locals 10

    const/16 v9, 0x39

    const/16 v8, 0x30

    const/4 v7, -0x1

    const/4 v6, -0x2

    if-lt p1, p2, :cond_0

    return v6

    :cond_0
    add-int/lit8 v3, p1, 0x1

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-ne v1, v8, :cond_3

    if-ne v3, p2, :cond_1

    const/4 v4, 0x0

    return v4

    :cond_1
    const/4 v2, 0x0

    const/4 v0, 0x1

    :goto_0
    if-ge v3, p2, :cond_6

    add-int/lit8 p1, v3, 0x1

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-gt v8, v1, :cond_5

    if-gt v1, v9, :cond_5

    const v4, 0xccccccc

    if-lt v2, v4, :cond_2

    const/4 v0, 0x1

    :cond_2
    mul-int/lit8 v4, v2, 0xa

    add-int/lit8 v5, v1, -0x30

    add-int v2, v4, v5

    move v3, p1

    goto :goto_0

    :cond_3
    const/16 v4, 0x31

    if-gt v4, v1, :cond_4

    if-gt v1, v9, :cond_4

    add-int/lit8 v2, v1, -0x30

    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    return v7

    :cond_5
    return v7

    :cond_6
    if-eqz v0, :cond_7

    return v6

    :cond_7
    return v2
.end method

.method private parseChoiceStyle(II)I
    .locals 9

    const/16 v8, 0x7d

    const/4 v7, 0x1

    const/4 v6, 0x0

    move v3, p1

    invoke-direct {p0, p1}, Landroid/icu/text/MessagePattern;->skipWhiteSpace(I)I

    move-result p1

    iget-object v4, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eq p1, v4, :cond_0

    iget-object v4, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v8, :cond_2

    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Missing choice argument pattern in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0}, Landroid/icu/text/MessagePattern;->prefix()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    add-int/lit8 v4, p1, 0x1

    invoke-direct {p0, v4}, Landroid/icu/text/MessagePattern;->skipWhiteSpace(I)I

    move-result p1

    :cond_2
    move v2, p1

    invoke-direct {p0, p1}, Landroid/icu/text/MessagePattern;->skipDouble(I)I

    move-result p1

    sub-int v1, p1, v2

    if-nez v1, :cond_3

    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Bad choice pattern syntax: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0, v3}, Landroid/icu/text/MessagePattern;->prefix(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_3
    const v4, 0xffff

    if-le v1, v4, :cond_4

    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Choice number too long: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0, v2}, Landroid/icu/text/MessagePattern;->prefix(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_4
    invoke-direct {p0, v2, p1, v7}, Landroid/icu/text/MessagePattern;->parseDouble(IIZ)V

    invoke-direct {p0, p1}, Landroid/icu/text/MessagePattern;->skipWhiteSpace(I)I

    move-result p1

    iget-object v4, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ne p1, v4, :cond_5

    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Bad choice pattern syntax: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0, v3}, Landroid/icu/text/MessagePattern;->prefix(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_5
    iget-object v4, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v4, 0x23

    if-eq v0, v4, :cond_6

    const/16 v4, 0x3c

    if-eq v0, v4, :cond_6

    const/16 v4, 0x2264

    if-eq v0, v4, :cond_6

    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Expected choice separator (#<\u2264) instead of \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\' in choice pattern "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0, v3}, Landroid/icu/text/MessagePattern;->prefix(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_6
    sget-object v4, Landroid/icu/text/MessagePattern$Part$Type;->ARG_SELECTOR:Landroid/icu/text/MessagePattern$Part$Type;

    invoke-direct {p0, v4, p1, v7, v6}, Landroid/icu/text/MessagePattern;->addPart(Landroid/icu/text/MessagePattern$Part$Type;III)V

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v4, p2, 0x1

    sget-object v5, Landroid/icu/text/MessagePattern$ArgType;->CHOICE:Landroid/icu/text/MessagePattern$ArgType;

    invoke-direct {p0, p1, v6, v4, v5}, Landroid/icu/text/MessagePattern;->parseMessage(IIILandroid/icu/text/MessagePattern$ArgType;)I

    move-result p1

    iget-object v4, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ne p1, v4, :cond_7

    return p1

    :cond_7
    iget-object v4, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v8, :cond_1

    invoke-direct {p0, p2}, Landroid/icu/text/MessagePattern;->inMessageFormatPattern(I)Z

    move-result v4

    if-nez v4, :cond_8

    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Bad choice pattern syntax: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0, v3}, Landroid/icu/text/MessagePattern;->prefix(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_8
    return p1
.end method

.method private parseDouble(IIZ)V
    .locals 10

    const/4 v7, 0x0

    sget-boolean v8, Landroid/icu/text/MessagePattern;->-assertionsDisabled:Z

    if-nez v8, :cond_1

    if-ge p1, p2, :cond_0

    const/4 v7, 0x1

    :cond_0
    if-nez v7, :cond_1

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    :cond_1
    const/4 v6, 0x0

    const/4 v3, 0x0

    move v1, p1

    iget-object v7, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v7, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v7, 0x2d

    if-ne v0, v7, :cond_5

    const/4 v3, 0x1

    if-ne v1, p2, :cond_3

    :cond_2
    new-instance v7, Ljava/lang/NumberFormatException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Bad syntax for numeric value: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {v9, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_3
    iget-object v7, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v7, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    move v1, v2

    :cond_4
    :goto_0
    const/16 v7, 0x221e

    if-ne v0, v7, :cond_8

    if-eqz p3, :cond_2

    if-ne v1, p2, :cond_2

    if-eqz v3, :cond_6

    const-wide/high16 v8, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    :goto_1
    sub-int v7, p2, p1

    invoke-direct {p0, v8, v9, p1, v7}, Landroid/icu/text/MessagePattern;->addArgDoublePart(DII)V

    return-void

    :cond_5
    const/16 v7, 0x2b

    if-ne v0, v7, :cond_4

    if-eq v1, p2, :cond_2

    iget-object v7, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v7, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    move v1, v2

    goto :goto_0

    :cond_6
    const-wide/high16 v8, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    goto :goto_1

    :cond_7
    iget-object v7, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    add-int/lit8 v1, v2, 0x1

    invoke-virtual {v7, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :cond_8
    move v2, v1

    const/16 v7, 0x30

    if-gt v7, v0, :cond_9

    const/16 v7, 0x39

    if-gt v0, v7, :cond_9

    mul-int/lit8 v7, v6, 0xa

    add-int/lit8 v8, v0, -0x30

    add-int v6, v7, v8

    add-int/lit16 v7, v3, 0x7fff

    if-le v6, v7, :cond_a

    :cond_9
    iget-object v7, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {v7, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    sub-int v7, p2, p1

    invoke-direct {p0, v4, v5, p1, v7}, Landroid/icu/text/MessagePattern;->addArgDoublePart(DII)V

    return-void

    :cond_a
    if-ne v2, p2, :cond_7

    sget-object v7, Landroid/icu/text/MessagePattern$Part$Type;->ARG_INT:Landroid/icu/text/MessagePattern$Part$Type;

    sub-int v8, p2, p1

    if-eqz v3, :cond_b

    neg-int v6, v6

    :cond_b
    invoke-direct {p0, v7, p1, v8, v6}, Landroid/icu/text/MessagePattern;->addPart(Landroid/icu/text/MessagePattern$Part$Type;III)V

    return-void
.end method

.method private parseMessage(IIILandroid/icu/text/MessagePattern$ArgType;)I
    .locals 17

    const/16 v4, 0x7fff

    move/from16 v0, p3

    if-le v0, v4, :cond_0

    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v4

    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/text/MessagePattern;->parts:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    sget-object v4, Landroid/icu/text/MessagePattern$Part$Type;->MSG_START:Landroid/icu/text/MessagePattern$Part$Type;

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-direct {v0, v4, v1, v2, v3}, Landroid/icu/text/MessagePattern;->addPart(Landroid/icu/text/MessagePattern$Part$Type;III)V

    add-int p1, p1, p2

    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    move/from16 v0, p1

    if-ge v0, v4, :cond_11

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    add-int/lit8 v16, p1, 0x1

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v4, 0x27

    if-ne v15, v4, :cond_9

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    move/from16 v0, v16

    if-ne v0, v4, :cond_1

    sget-object v4, Landroid/icu/text/MessagePattern$Part$Type;->INSERT_CHAR:Landroid/icu/text/MessagePattern$Part$Type;

    const/16 v6, 0x27

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v4, v1, v7, v6}, Landroid/icu/text/MessagePattern;->addPart(Landroid/icu/text/MessagePattern$Part$Type;III)V

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/icu/text/MessagePattern;->needsAutoQuoting:Z

    move/from16 p1, v16

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v4, 0x27

    if-ne v15, v4, :cond_2

    sget-object v4, Landroid/icu/text/MessagePattern$Part$Type;->SKIP_SYNTAX:Landroid/icu/text/MessagePattern$Part$Type;

    add-int/lit8 p1, v16, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v4, v1, v6, v7}, Landroid/icu/text/MessagePattern;->addPart(Landroid/icu/text/MessagePattern$Part$Type;III)V

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/text/MessagePattern;->aposMode:Landroid/icu/text/MessagePattern$ApostropheMode;

    sget-object v6, Landroid/icu/text/MessagePattern$ApostropheMode;->DOUBLE_REQUIRED:Landroid/icu/text/MessagePattern$ApostropheMode;

    if-eq v4, v6, :cond_3

    const/16 v4, 0x7b

    if-ne v15, v4, :cond_4

    :cond_3
    sget-object v4, Landroid/icu/text/MessagePattern$Part$Type;->SKIP_SYNTAX:Landroid/icu/text/MessagePattern$Part$Type;

    add-int/lit8 v6, v16, -0x1

    const/4 v7, 0x1

    const/4 v9, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v6, v7, v9}, Landroid/icu/text/MessagePattern;->addPart(Landroid/icu/text/MessagePattern$Part$Type;III)V

    move/from16 p1, v16

    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    const/16 v6, 0x27

    add-int/lit8 v7, p1, 0x1

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->indexOf(II)I

    move-result p1

    if-ltz p1, :cond_8

    add-int/lit8 v4, p1, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v4, v6, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    add-int/lit8 v6, p1, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v6, 0x27

    if-ne v4, v6, :cond_7

    sget-object v4, Landroid/icu/text/MessagePattern$Part$Type;->SKIP_SYNTAX:Landroid/icu/text/MessagePattern$Part$Type;

    add-int/lit8 p1, p1, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v4, v1, v6, v7}, Landroid/icu/text/MessagePattern;->addPart(Landroid/icu/text/MessagePattern$Part$Type;III)V

    goto :goto_1

    :cond_4
    const/16 v4, 0x7d

    if-eq v15, v4, :cond_3

    sget-object v4, Landroid/icu/text/MessagePattern$ArgType;->CHOICE:Landroid/icu/text/MessagePattern$ArgType;

    move-object/from16 v0, p4

    if-ne v0, v4, :cond_5

    const/16 v4, 0x7c

    if-eq v15, v4, :cond_3

    :cond_5
    invoke-virtual/range {p4 .. p4}, Landroid/icu/text/MessagePattern$ArgType;->hasPluralStyle()Z

    move-result v4

    if-eqz v4, :cond_6

    const/16 v4, 0x23

    if-eq v15, v4, :cond_3

    :cond_6
    sget-object v4, Landroid/icu/text/MessagePattern$Part$Type;->INSERT_CHAR:Landroid/icu/text/MessagePattern$Part$Type;

    const/16 v6, 0x27

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v4, v1, v7, v6}, Landroid/icu/text/MessagePattern;->addPart(Landroid/icu/text/MessagePattern$Part$Type;III)V

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/icu/text/MessagePattern;->needsAutoQuoting:Z

    move/from16 p1, v16

    goto/16 :goto_0

    :cond_7
    sget-object v4, Landroid/icu/text/MessagePattern$Part$Type;->SKIP_SYNTAX:Landroid/icu/text/MessagePattern$Part$Type;

    add-int/lit8 v16, p1, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v4, v1, v6, v7}, Landroid/icu/text/MessagePattern;->addPart(Landroid/icu/text/MessagePattern$Part$Type;III)V

    move/from16 p1, v16

    goto/16 :goto_0

    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result p1

    sget-object v4, Landroid/icu/text/MessagePattern$Part$Type;->INSERT_CHAR:Landroid/icu/text/MessagePattern$Part$Type;

    const/16 v6, 0x27

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v4, v1, v7, v6}, Landroid/icu/text/MessagePattern;->addPart(Landroid/icu/text/MessagePattern$Part$Type;III)V

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/icu/text/MessagePattern;->needsAutoQuoting:Z

    goto/16 :goto_0

    :cond_9
    invoke-virtual/range {p4 .. p4}, Landroid/icu/text/MessagePattern$ArgType;->hasPluralStyle()Z

    move-result v4

    if-eqz v4, :cond_a

    const/16 v4, 0x23

    if-ne v15, v4, :cond_a

    sget-object v4, Landroid/icu/text/MessagePattern$Part$Type;->REPLACE_NUMBER:Landroid/icu/text/MessagePattern$Part$Type;

    add-int/lit8 v6, v16, -0x1

    const/4 v7, 0x1

    const/4 v9, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v6, v7, v9}, Landroid/icu/text/MessagePattern;->addPart(Landroid/icu/text/MessagePattern$Part$Type;III)V

    move/from16 p1, v16

    goto/16 :goto_0

    :cond_a
    const/16 v4, 0x7b

    if-ne v15, v4, :cond_b

    add-int/lit8 v4, v16, -0x1

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v4, v6, v1}, Landroid/icu/text/MessagePattern;->parseArg(III)I

    move-result p1

    goto/16 :goto_0

    :cond_b
    if-lez p3, :cond_d

    const/16 v4, 0x7d

    if-ne v15, v4, :cond_d

    :cond_c
    sget-object v4, Landroid/icu/text/MessagePattern$ArgType;->CHOICE:Landroid/icu/text/MessagePattern$ArgType;

    move-object/from16 v0, p4

    if-ne v0, v4, :cond_f

    const/16 v4, 0x7d

    if-ne v15, v4, :cond_f

    const/4 v8, 0x0

    :goto_2
    sget-object v6, Landroid/icu/text/MessagePattern$Part$Type;->MSG_LIMIT:Landroid/icu/text/MessagePattern$Part$Type;

    add-int/lit8 v7, v16, -0x1

    move-object/from16 v4, p0

    move/from16 v9, p3

    invoke-direct/range {v4 .. v9}, Landroid/icu/text/MessagePattern;->addLimitPart(ILandroid/icu/text/MessagePattern$Part$Type;III)V

    sget-object v4, Landroid/icu/text/MessagePattern$ArgType;->CHOICE:Landroid/icu/text/MessagePattern$ArgType;

    move-object/from16 v0, p4

    if-ne v0, v4, :cond_10

    add-int/lit8 v4, v16, -0x1

    return v4

    :cond_d
    sget-object v4, Landroid/icu/text/MessagePattern$ArgType;->CHOICE:Landroid/icu/text/MessagePattern$ArgType;

    move-object/from16 v0, p4

    if-ne v0, v4, :cond_e

    const/16 v4, 0x7c

    if-eq v15, v4, :cond_c

    :cond_e
    move/from16 p1, v16

    goto/16 :goto_0

    :cond_f
    const/4 v8, 0x1

    goto :goto_2

    :cond_10
    return v16

    :cond_11
    if-lez p3, :cond_12

    move-object/from16 v0, p0

    move/from16 v1, p3

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2}, Landroid/icu/text/MessagePattern;->inTopLevelChoiceMessage(ILandroid/icu/text/MessagePattern$ArgType;)Z

    move-result v4

    if-eqz v4, :cond_13

    :cond_12
    sget-object v11, Landroid/icu/text/MessagePattern$Part$Type;->MSG_LIMIT:Landroid/icu/text/MessagePattern$Part$Type;

    const/4 v13, 0x0

    move-object/from16 v9, p0

    move v10, v5

    move/from16 v12, p1

    move/from16 v14, p3

    invoke-direct/range {v9 .. v14}, Landroid/icu/text/MessagePattern;->addLimitPart(ILandroid/icu/text/MessagePattern$Part$Type;III)V

    return p1

    :cond_13
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unmatched \'{\' braces in message "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct/range {p0 .. p0}, Landroid/icu/text/MessagePattern;->prefix()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private parsePluralOrSelectStyle(Landroid/icu/text/MessagePattern$ArgType;II)I
    .locals 12

    move v6, p2

    const/4 v3, 0x1

    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, p2}, Landroid/icu/text/MessagePattern;->skipWhiteSpace(I)I

    move-result p2

    iget-object v8, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-ne p2, v8, :cond_1

    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_0

    iget-object v8, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {v8, p2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x7d

    if-ne v8, v9, :cond_4

    :cond_0
    invoke-direct {p0, p3}, Landroid/icu/text/MessagePattern;->inMessageFormatPattern(I)Z

    move-result v8

    if-ne v0, v8, :cond_2

    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Bad "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Landroid/icu/text/MessagePattern$ArgType;->toString()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v10, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " pattern syntax: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-direct {p0, v6}, Landroid/icu/text/MessagePattern;->prefix(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    if-nez v1, :cond_3

    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Missing \'other\' keyword in "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Landroid/icu/text/MessagePattern$ArgType;->toString()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v10, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " pattern in "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-direct {p0}, Landroid/icu/text/MessagePattern;->prefix()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_3
    return p2

    :cond_4
    move v5, p2

    invoke-virtual {p1}, Landroid/icu/text/MessagePattern$ArgType;->hasPluralStyle()Z

    move-result v8

    if-eqz v8, :cond_9

    iget-object v8, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {v8, p2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x3d

    if-ne v8, v9, :cond_9

    add-int/lit8 v8, p2, 0x1

    invoke-direct {p0, v8}, Landroid/icu/text/MessagePattern;->skipDouble(I)I

    move-result v2

    sub-int v4, v2, p2

    const/4 v8, 0x1

    if-ne v4, v8, :cond_5

    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Bad "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Landroid/icu/text/MessagePattern$ArgType;->toString()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v10, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " pattern syntax: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-direct {p0, v6}, Landroid/icu/text/MessagePattern;->prefix(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_5
    const v8, 0xffff

    if-le v4, v8, :cond_6

    new-instance v8, Ljava/lang/IndexOutOfBoundsException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Argument selector too long: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-direct {p0, p2}, Landroid/icu/text/MessagePattern;->prefix(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_6
    sget-object v8, Landroid/icu/text/MessagePattern$Part$Type;->ARG_SELECTOR:Landroid/icu/text/MessagePattern$Part$Type;

    const/4 v9, 0x0

    invoke-direct {p0, v8, p2, v4, v9}, Landroid/icu/text/MessagePattern;->addPart(Landroid/icu/text/MessagePattern$Part$Type;III)V

    add-int/lit8 v8, p2, 0x1

    const/4 v9, 0x0

    invoke-direct {p0, v8, v2, v9}, Landroid/icu/text/MessagePattern;->parseDouble(IIZ)V

    :cond_7
    :goto_2
    invoke-direct {p0, v2}, Landroid/icu/text/MessagePattern;->skipWhiteSpace(I)I

    move-result v2

    iget-object v8, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-eq v2, v8, :cond_8

    iget-object v8, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {v8, v2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x7b

    if-eq v8, v9, :cond_10

    :cond_8
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "No message fragment after "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Landroid/icu/text/MessagePattern$ArgType;->toString()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v10, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " selector: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-direct {p0, p2}, Landroid/icu/text/MessagePattern;->prefix(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_9
    invoke-direct {p0, p2}, Landroid/icu/text/MessagePattern;->skipIdentifier(I)I

    move-result v2

    sub-int v4, v2, p2

    if-nez v4, :cond_a

    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Bad "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Landroid/icu/text/MessagePattern$ArgType;->toString()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v10, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " pattern syntax: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-direct {p0, v6}, Landroid/icu/text/MessagePattern;->prefix(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_a
    invoke-virtual {p1}, Landroid/icu/text/MessagePattern$ArgType;->hasPluralStyle()Z

    move-result v8

    if-eqz v8, :cond_e

    const/4 v8, 0x6

    if-ne v4, v8, :cond_e

    iget-object v8, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v2, v8, :cond_e

    iget-object v8, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    const-string/jumbo v9, "offset:"

    const/4 v10, 0x0

    const/4 v11, 0x7

    invoke-virtual {v8, p2, v9, v10, v11}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v8

    if-eqz v8, :cond_e

    if-nez v3, :cond_b

    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Plural argument \'offset:\' (if present) must precede key-message pairs: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-direct {p0, v6}, Landroid/icu/text/MessagePattern;->prefix(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_b
    add-int/lit8 v8, v2, 0x1

    invoke-direct {p0, v8}, Landroid/icu/text/MessagePattern;->skipWhiteSpace(I)I

    move-result v7

    invoke-direct {p0, v7}, Landroid/icu/text/MessagePattern;->skipDouble(I)I

    move-result p2

    if-ne p2, v7, :cond_c

    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Missing value for plural \'offset:\' "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-direct {p0, v6}, Landroid/icu/text/MessagePattern;->prefix(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_c
    sub-int v8, p2, v7

    const v9, 0xffff

    if-le v8, v9, :cond_d

    new-instance v8, Ljava/lang/IndexOutOfBoundsException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Plural offset value too long: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-direct {p0, v7}, Landroid/icu/text/MessagePattern;->prefix(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_d
    const/4 v8, 0x0

    invoke-direct {p0, v7, p2, v8}, Landroid/icu/text/MessagePattern;->parseDouble(IIZ)V

    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_e
    const v8, 0xffff

    if-le v4, v8, :cond_f

    new-instance v8, Ljava/lang/IndexOutOfBoundsException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Argument selector too long: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-direct {p0, p2}, Landroid/icu/text/MessagePattern;->prefix(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_f
    sget-object v8, Landroid/icu/text/MessagePattern$Part$Type;->ARG_SELECTOR:Landroid/icu/text/MessagePattern$Part$Type;

    const/4 v9, 0x0

    invoke-direct {p0, v8, p2, v4, v9}, Landroid/icu/text/MessagePattern;->addPart(Landroid/icu/text/MessagePattern$Part$Type;III)V

    iget-object v8, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    const-string/jumbo v9, "other"

    const/4 v10, 0x0

    invoke-virtual {v8, p2, v9, v10, v4}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v8

    if-eqz v8, :cond_7

    const/4 v1, 0x1

    goto/16 :goto_2

    :cond_10
    add-int/lit8 v8, p3, 0x1

    const/4 v9, 0x1

    invoke-direct {p0, v2, v9, v8, p1}, Landroid/icu/text/MessagePattern;->parseMessage(IIILandroid/icu/text/MessagePattern$ArgType;)I

    move-result p2

    const/4 v3, 0x0

    goto/16 :goto_0
.end method

.method private parseSimpleStyle(I)I
    .locals 8

    const/16 v7, 0x27

    const/4 v6, 0x0

    move v4, p1

    const/4 v3, 0x0

    :goto_0
    iget-object v5, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge p1, v5, :cond_5

    iget-object v5, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v5, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v7, :cond_1

    iget-object v5, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {v5, v7, v1}, Ljava/lang/String;->indexOf(II)I

    move-result p1

    if-gez p1, :cond_0

    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Quoted literal argument style text reaches to the end of the message: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0, v4}, Landroid/icu/text/MessagePattern;->prefix(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/16 v5, 0x7b

    if-ne v0, v5, :cond_2

    add-int/lit8 v3, v3, 0x1

    move p1, v1

    goto :goto_0

    :cond_2
    const/16 v5, 0x7d

    if-ne v0, v5, :cond_6

    if-lez v3, :cond_3

    add-int/lit8 v3, v3, -0x1

    move p1, v1

    goto :goto_0

    :cond_3
    add-int/lit8 p1, v1, -0x1

    sub-int v2, p1, v4

    const v5, 0xffff

    if-le v2, v5, :cond_4

    new-instance v5, Ljava/lang/IndexOutOfBoundsException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Argument style text too long: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0, v4}, Landroid/icu/text/MessagePattern;->prefix(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_4
    sget-object v5, Landroid/icu/text/MessagePattern$Part$Type;->ARG_STYLE:Landroid/icu/text/MessagePattern$Part$Type;

    invoke-direct {p0, v5, v4, v2, v6}, Landroid/icu/text/MessagePattern;->addPart(Landroid/icu/text/MessagePattern$Part$Type;III)V

    return p1

    :cond_5
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unmatched \'{\' braces in message "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Landroid/icu/text/MessagePattern;->prefix()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_6
    move p1, v1

    goto/16 :goto_0
.end method

.method private postParse()V
    .locals 0

    return-void
.end method

.method private preParse(Ljava/lang/String;)V
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/icu/text/MessagePattern;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Attempt to parse("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Landroid/icu/text/MessagePattern;->prefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") on frozen MessagePattern instance."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    iput-boolean v1, p0, Landroid/icu/text/MessagePattern;->hasArgNumbers:Z

    iput-boolean v1, p0, Landroid/icu/text/MessagePattern;->hasArgNames:Z

    iput-boolean v1, p0, Landroid/icu/text/MessagePattern;->needsAutoQuoting:Z

    iget-object v0, p0, Landroid/icu/text/MessagePattern;->parts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Landroid/icu/text/MessagePattern;->numericValues:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/icu/text/MessagePattern;->numericValues:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_1
    return-void
.end method

.method private prefix()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/icu/text/MessagePattern;->prefix(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private prefix(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/icu/text/MessagePattern;->prefix(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static prefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/icu/text/MessagePattern;->prefix(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static prefix(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v3, 0x2c

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    if-nez p1, :cond_0

    const-string/jumbo v3, "\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int v2, v3, p1

    const/16 v3, 0x18

    if-gt v2, v3, :cond_2

    if-nez p1, :cond_1

    :goto_1
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    const-string/jumbo v3, "\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_0
    const-string/jumbo v3, "[at pattern index "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "] \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_2
    add-int/lit8 v3, p1, 0x18

    add-int/lit8 v0, v3, -0x4

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_3

    add-int/lit8 v0, v0, -0x1

    :cond_3
    invoke-virtual {v1, p0, p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method private skipDouble(I)I
    .locals 2

    :goto_0
    iget-object v1, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge p1, v1, :cond_0

    iget-object v1, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x30

    if-ge v0, v1, :cond_1

    const-string/jumbo v1, "+-."

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_1

    :cond_0
    return p1

    :cond_1
    const/16 v1, 0x39

    if-le v0, v1, :cond_2

    const/16 v1, 0x65

    if-eq v0, v1, :cond_2

    const/16 v1, 0x45

    if-eq v0, v1, :cond_2

    const/16 v1, 0x221e

    if-ne v0, v1, :cond_0

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method private skipIdentifier(I)I
    .locals 1

    iget-object v0, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/icu/impl/PatternProps;->skipIdentifier(Ljava/lang/CharSequence;I)I

    move-result v0

    return v0
.end method

.method private skipWhiteSpace(I)I
    .locals 1

    iget-object v0, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/icu/impl/PatternProps;->skipWhiteSpace(Ljava/lang/CharSequence;I)I

    move-result v0

    return v0
.end method

.method public static validateArgumentName(Ljava/lang/String;)I
    .locals 2

    invoke-static {p0}, Landroid/icu/impl/PatternProps;->isIdentifier(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x2

    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Landroid/icu/text/MessagePattern;->parseArgNumber(Ljava/lang/CharSequence;II)I

    move-result v0

    return v0
.end method


# virtual methods
.method public autoQuoteApostropheDeep()Ljava/lang/String;
    .locals 6

    iget-boolean v4, p0, Landroid/icu/text/MessagePattern;->needsAutoQuoting:Z

    if-nez v4, :cond_0

    iget-object v4, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    return-object v4

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/icu/text/MessagePattern;->countParts()I

    move-result v0

    move v1, v0

    :cond_1
    :goto_0
    if-lez v1, :cond_3

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object v3

    invoke-virtual {v3}, Landroid/icu/text/MessagePattern$Part;->getType()Landroid/icu/text/MessagePattern$Part$Type;

    move-result-object v4

    sget-object v5, Landroid/icu/text/MessagePattern$Part$Type;->INSERT_CHAR:Landroid/icu/text/MessagePattern$Part$Type;

    if-ne v4, v5, :cond_1

    if-nez v2, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0xa

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v5, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    :cond_2
    invoke-static {v3}, Landroid/icu/text/MessagePattern$Part;->-get0(Landroid/icu/text/MessagePattern$Part;)I

    move-result v4

    invoke-static {v3}, Landroid/icu/text/MessagePattern$Part;->-get4(Landroid/icu/text/MessagePattern$Part;)S

    move-result v5

    int-to-char v5, v5

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    if-nez v2, :cond_4

    iget-object v4, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    return-object v4

    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public clear()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/icu/text/MessagePattern;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Attempt to clear() a frozen MessagePattern instance."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object v2, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    iput-boolean v1, p0, Landroid/icu/text/MessagePattern;->hasArgNumbers:Z

    iput-boolean v1, p0, Landroid/icu/text/MessagePattern;->hasArgNames:Z

    iput-boolean v1, p0, Landroid/icu/text/MessagePattern;->needsAutoQuoting:Z

    iget-object v0, p0, Landroid/icu/text/MessagePattern;->parts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Landroid/icu/text/MessagePattern;->numericValues:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/icu/text/MessagePattern;->numericValues:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_1
    return-void
.end method

.method public clearPatternAndSetApostropheMode(Landroid/icu/text/MessagePattern$ApostropheMode;)V
    .locals 0

    invoke-virtual {p0}, Landroid/icu/text/MessagePattern;->clear()V

    iput-object p1, p0, Landroid/icu/text/MessagePattern;->aposMode:Landroid/icu/text/MessagePattern$ApostropheMode;

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroid/icu/text/MessagePattern;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/icu/text/MessagePattern;->cloneAsThawed()Landroid/icu/text/MessagePattern;

    move-result-object v0

    return-object v0
.end method

.method public cloneAsThawed()Landroid/icu/text/MessagePattern;
    .locals 3

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/MessagePattern;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v2, p0, Landroid/icu/text/MessagePattern;->parts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    iput-object v2, v1, Landroid/icu/text/MessagePattern;->parts:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/icu/text/MessagePattern;->numericValues:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/icu/text/MessagePattern;->numericValues:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    iput-object v2, v1, Landroid/icu/text/MessagePattern;->numericValues:Ljava/util/ArrayList;

    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/icu/text/MessagePattern;->frozen:Z

    return-object v1

    :catch_0
    move-exception v0

    new-instance v2, Landroid/icu/util/ICUCloneNotSupportedException;

    invoke-direct {v2, v0}, Landroid/icu/util/ICUCloneNotSupportedException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public bridge synthetic cloneAsThawed()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroid/icu/text/MessagePattern;->cloneAsThawed()Landroid/icu/text/MessagePattern;

    move-result-object v0

    return-object v0
.end method

.method public countParts()I
    .locals 1

    iget-object v0, p0, Landroid/icu/text/MessagePattern;->parts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    if-ne p0, p1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/icu/text/MessagePattern;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    :cond_1
    return v1

    :cond_2
    move-object v0, p1

    check-cast v0, Landroid/icu/text/MessagePattern;

    iget-object v2, p0, Landroid/icu/text/MessagePattern;->aposMode:Landroid/icu/text/MessagePattern$ApostropheMode;

    iget-object v3, v0, Landroid/icu/text/MessagePattern;->aposMode:Landroid/icu/text/MessagePattern$ApostropheMode;

    invoke-virtual {v2, v3}, Landroid/icu/text/MessagePattern$ApostropheMode;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    if-nez v2, :cond_4

    iget-object v2, v0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    if-nez v2, :cond_3

    :goto_0
    iget-object v1, p0, Landroid/icu/text/MessagePattern;->parts:Ljava/util/ArrayList;

    iget-object v2, v0, Landroid/icu/text/MessagePattern;->parts:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_3
    return v1

    :cond_4
    iget-object v2, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    iget-object v3, v0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0
.end method

.method public freeze()Landroid/icu/text/MessagePattern;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/icu/text/MessagePattern;->frozen:Z

    return-object p0
.end method

.method public bridge synthetic freeze()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroid/icu/text/MessagePattern;->freeze()Landroid/icu/text/MessagePattern;

    move-result-object v0

    return-object v0
.end method

.method public getApostropheMode()Landroid/icu/text/MessagePattern$ApostropheMode;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/MessagePattern;->aposMode:Landroid/icu/text/MessagePattern$ApostropheMode;

    return-object v0
.end method

.method public getLimitPartIndex(I)I
    .locals 2

    iget-object v1, p0, Landroid/icu/text/MessagePattern;->parts:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/MessagePattern$Part;

    invoke-static {v1}, Landroid/icu/text/MessagePattern$Part;->-get2(Landroid/icu/text/MessagePattern$Part;)I

    move-result v0

    if-ge v0, p1, :cond_0

    return p1

    :cond_0
    return v0
.end method

.method public getNumericValue(Landroid/icu/text/MessagePattern$Part;)D
    .locals 4

    invoke-static {p1}, Landroid/icu/text/MessagePattern$Part;->-get3(Landroid/icu/text/MessagePattern$Part;)Landroid/icu/text/MessagePattern$Part$Type;

    move-result-object v0

    sget-object v1, Landroid/icu/text/MessagePattern$Part$Type;->ARG_INT:Landroid/icu/text/MessagePattern$Part$Type;

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Landroid/icu/text/MessagePattern$Part;->-get4(Landroid/icu/text/MessagePattern$Part;)S

    move-result v1

    int-to-double v2, v1

    return-wide v2

    :cond_0
    sget-object v1, Landroid/icu/text/MessagePattern$Part$Type;->ARG_DOUBLE:Landroid/icu/text/MessagePattern$Part$Type;

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Landroid/icu/text/MessagePattern;->numericValues:Ljava/util/ArrayList;

    invoke-static {p1}, Landroid/icu/text/MessagePattern$Part;->-get4(Landroid/icu/text/MessagePattern$Part;)S

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    return-wide v2

    :cond_1
    const-wide v2, -0x3e6290cbac000000L    # -1.23456789E8

    return-wide v2
.end method

.method public getPart(I)Landroid/icu/text/MessagePattern$Part;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/MessagePattern;->parts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/MessagePattern$Part;

    return-object v0
.end method

.method public getPartType(I)Landroid/icu/text/MessagePattern$Part$Type;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/MessagePattern;->parts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/MessagePattern$Part;

    invoke-static {v0}, Landroid/icu/text/MessagePattern$Part;->-get3(Landroid/icu/text/MessagePattern$Part;)Landroid/icu/text/MessagePattern$Part$Type;

    move-result-object v0

    return-object v0
.end method

.method public getPatternIndex(I)I
    .locals 1

    iget-object v0, p0, Landroid/icu/text/MessagePattern;->parts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/MessagePattern$Part;

    invoke-static {v0}, Landroid/icu/text/MessagePattern$Part;->-get0(Landroid/icu/text/MessagePattern$Part;)I

    move-result v0

    return v0
.end method

.method public getPatternString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getPluralOffset(I)D
    .locals 4

    iget-object v1, p0, Landroid/icu/text/MessagePattern;->parts:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/MessagePattern$Part;

    invoke-static {v0}, Landroid/icu/text/MessagePattern$Part;->-get3(Landroid/icu/text/MessagePattern$Part;)Landroid/icu/text/MessagePattern$Part$Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/icu/text/MessagePattern$Part$Type;->hasNumericValue()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/icu/text/MessagePattern;->getNumericValue(Landroid/icu/text/MessagePattern$Part;)D

    move-result-wide v2

    return-wide v2

    :cond_0
    const-wide/16 v2, 0x0

    return-wide v2
.end method

.method public getSubstring(Landroid/icu/text/MessagePattern$Part;)Ljava/lang/String;
    .locals 3

    invoke-static {p1}, Landroid/icu/text/MessagePattern$Part;->-get0(Landroid/icu/text/MessagePattern$Part;)I

    move-result v0

    iget-object v1, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-static {p1}, Landroid/icu/text/MessagePattern$Part;->-get1(Landroid/icu/text/MessagePattern$Part;)C

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public hasNamedArguments()Z
    .locals 1

    iget-boolean v0, p0, Landroid/icu/text/MessagePattern;->hasArgNames:Z

    return v0
.end method

.method public hasNumberedArguments()Z
    .locals 1

    iget-boolean v0, p0, Landroid/icu/text/MessagePattern;->hasArgNumbers:Z

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Landroid/icu/text/MessagePattern;->aposMode:Landroid/icu/text/MessagePattern$ApostropheMode;

    invoke-virtual {v0}, Landroid/icu/text/MessagePattern$ApostropheMode;->hashCode()I

    move-result v0

    mul-int/lit8 v1, v0, 0x25

    iget-object v0, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Landroid/icu/text/MessagePattern;->parts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFrozen()Z
    .locals 1

    iget-boolean v0, p0, Landroid/icu/text/MessagePattern;->frozen:Z

    return v0
.end method

.method jdkAposMode()Z
    .locals 2

    iget-object v0, p0, Landroid/icu/text/MessagePattern;->aposMode:Landroid/icu/text/MessagePattern$ApostropheMode;

    sget-object v1, Landroid/icu/text/MessagePattern$ApostropheMode;->DOUBLE_REQUIRED:Landroid/icu/text/MessagePattern$ApostropheMode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public parse(Ljava/lang/String;)Landroid/icu/text/MessagePattern;
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/icu/text/MessagePattern;->preParse(Ljava/lang/String;)V

    sget-object v0, Landroid/icu/text/MessagePattern$ArgType;->NONE:Landroid/icu/text/MessagePattern$ArgType;

    invoke-direct {p0, v1, v1, v1, v0}, Landroid/icu/text/MessagePattern;->parseMessage(IIILandroid/icu/text/MessagePattern$ArgType;)I

    invoke-direct {p0}, Landroid/icu/text/MessagePattern;->postParse()V

    return-object p0
.end method

.method public parseChoiceStyle(Ljava/lang/String;)Landroid/icu/text/MessagePattern;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/icu/text/MessagePattern;->preParse(Ljava/lang/String;)V

    invoke-direct {p0, v0, v0}, Landroid/icu/text/MessagePattern;->parseChoiceStyle(II)I

    invoke-direct {p0}, Landroid/icu/text/MessagePattern;->postParse()V

    return-object p0
.end method

.method public parsePluralStyle(Ljava/lang/String;)Landroid/icu/text/MessagePattern;
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/icu/text/MessagePattern;->preParse(Ljava/lang/String;)V

    sget-object v0, Landroid/icu/text/MessagePattern$ArgType;->PLURAL:Landroid/icu/text/MessagePattern$ArgType;

    invoke-direct {p0, v0, v1, v1}, Landroid/icu/text/MessagePattern;->parsePluralOrSelectStyle(Landroid/icu/text/MessagePattern$ArgType;II)I

    invoke-direct {p0}, Landroid/icu/text/MessagePattern;->postParse()V

    return-object p0
.end method

.method public parseSelectStyle(Ljava/lang/String;)Landroid/icu/text/MessagePattern;
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/icu/text/MessagePattern;->preParse(Ljava/lang/String;)V

    sget-object v0, Landroid/icu/text/MessagePattern$ArgType;->SELECT:Landroid/icu/text/MessagePattern$ArgType;

    invoke-direct {p0, v0, v1, v1}, Landroid/icu/text/MessagePattern;->parsePluralOrSelectStyle(Landroid/icu/text/MessagePattern$ArgType;II)I

    invoke-direct {p0}, Landroid/icu/text/MessagePattern;->postParse()V

    return-object p0
.end method

.method public partSubstringMatches(Landroid/icu/text/MessagePattern$Part;Ljava/lang/String;)Z
    .locals 4

    iget-object v0, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-static {p1}, Landroid/icu/text/MessagePattern$Part;->-get0(Landroid/icu/text/MessagePattern$Part;)I

    move-result v1

    invoke-static {p1}, Landroid/icu/text/MessagePattern$Part;->-get1(Landroid/icu/text/MessagePattern$Part;)C

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p2, v3, v2}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    return-object v0
.end method
