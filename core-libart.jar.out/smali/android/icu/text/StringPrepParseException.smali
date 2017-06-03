.class public Landroid/icu/text/StringPrepParseException;
.super Ljava/text/ParseException;
.source "StringPrepParseException.java"


# static fields
.field static final synthetic -assertionsDisabled:Z

.field public static final ACE_PREFIX_ERROR:I = 0x6

.field public static final BUFFER_OVERFLOW_ERROR:I = 0x9

.field public static final CHECK_BIDI_ERROR:I = 0x4

.field public static final DOMAIN_NAME_TOO_LONG_ERROR:I = 0xb

.field public static final ILLEGAL_CHAR_FOUND:I = 0x1

.field public static final INVALID_CHAR_FOUND:I = 0x0

.field public static final LABEL_TOO_LONG_ERROR:I = 0x8

.field private static final PARSE_CONTEXT_LEN:I = 0x10

.field public static final PROHIBITED_ERROR:I = 0x2

.field public static final STD3_ASCII_RULES_ERROR:I = 0x5

.field public static final UNASSIGNED_ERROR:I = 0x3

.field public static final VERIFICATION_ERROR:I = 0x7

.field public static final ZERO_LENGTH_LABEL:I = 0xa

.field static final serialVersionUID:J = 0x635e5eec90e16737L


# instance fields
.field private error:I

.field private line:I

.field private postContext:Ljava/lang/StringBuffer;

.field private preContext:Ljava/lang/StringBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Landroid/icu/text/StringPrepParseException;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Landroid/icu/text/StringPrepParseException;->-assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Landroid/icu/text/StringPrepParseException;->preContext:Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Landroid/icu/text/StringPrepParseException;->postContext:Ljava/lang/StringBuffer;

    iput p2, p0, Landroid/icu/text/StringPrepParseException;->error:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/text/StringPrepParseException;->line:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Landroid/icu/text/StringPrepParseException;->preContext:Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Landroid/icu/text/StringPrepParseException;->postContext:Ljava/lang/StringBuffer;

    iput p2, p0, Landroid/icu/text/StringPrepParseException;->error:I

    invoke-direct {p0, p3, p4}, Landroid/icu/text/StringPrepParseException;->setContext(Ljava/lang/String;I)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/text/StringPrepParseException;->line:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;II)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Landroid/icu/text/StringPrepParseException;->preContext:Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Landroid/icu/text/StringPrepParseException;->postContext:Ljava/lang/StringBuffer;

    iput p2, p0, Landroid/icu/text/StringPrepParseException;->error:I

    invoke-direct {p0, p3, p4}, Landroid/icu/text/StringPrepParseException;->setContext(Ljava/lang/String;I)V

    iput p5, p0, Landroid/icu/text/StringPrepParseException;->line:I

    return-void
.end method

.method private setContext(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/icu/text/StringPrepParseException;->setPreContext(Ljava/lang/String;I)V

    invoke-direct {p0, p1, p2}, Landroid/icu/text/StringPrepParseException;->setPostContext(Ljava/lang/String;I)V

    return-void
.end method

.method private setPostContext(Ljava/lang/String;I)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroid/icu/text/StringPrepParseException;->setPostContext([CI)V

    return-void
.end method

.method private setPostContext([CI)V
    .locals 3

    move v1, p2

    array-length v2, p1

    sub-int v0, v2, p2

    iget-object v2, p0, Landroid/icu/text/StringPrepParseException;->postContext:Ljava/lang/StringBuffer;

    invoke-virtual {v2, p1, p2, v0}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    return-void
.end method

.method private setPreContext(Ljava/lang/String;I)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroid/icu/text/StringPrepParseException;->setPreContext([CI)V

    return-void
.end method

.method private setPreContext([CI)V
    .locals 3

    const/16 v2, 0x10

    if-gt p2, v2, :cond_0

    const/4 v1, 0x0

    :goto_0
    if-gt v1, v2, :cond_1

    move v0, v1

    :goto_1
    iget-object v2, p0, Landroid/icu/text/StringPrepParseException;->preContext:Ljava/lang/StringBuffer;

    invoke-virtual {v2, p1, v1, v0}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    return-void

    :cond_0
    add-int/lit8 v1, p2, -0xf

    goto :goto_0

    :cond_1
    const/16 v0, 0x10

    goto :goto_1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Landroid/icu/text/StringPrepParseException;

    if-nez v1, :cond_0

    return v0

    :cond_0
    check-cast p1, Landroid/icu/text/StringPrepParseException;

    iget v1, p1, Landroid/icu/text/StringPrepParseException;->error:I

    iget v2, p0, Landroid/icu/text/StringPrepParseException;->error:I

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public getError()I
    .locals 1

    iget v0, p0, Landroid/icu/text/StringPrepParseException;->error:I

    return v0
.end method

.method public hashCode()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-boolean v0, Landroid/icu/text/StringPrepParseException;->-assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "hashCode not designed"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    const/16 v0, 0x2a

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ". line:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/icu/text/StringPrepParseException;->line:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ". preContext:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/icu/text/StringPrepParseException;->preContext:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ". postContext: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/icu/text/StringPrepParseException;->postContext:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
