.class public Landroid/icu/text/UnicodeSetIterator;
.super Ljava/lang/Object;
.source "UnicodeSetIterator.java"


# static fields
.field public static IS_STRING:I


# instance fields
.field public codepoint:I

.field public codepointEnd:I

.field protected endElement:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private endRange:I

.field protected nextElement:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private range:I

.field private set:Landroid/icu/text/UnicodeSet;

.field public string:Ljava/lang/String;

.field private stringIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Landroid/icu/text/UnicodeSetIterator;->IS_STRING:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Landroid/icu/text/UnicodeSetIterator;->endRange:I

    iput v0, p0, Landroid/icu/text/UnicodeSetIterator;->range:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/text/UnicodeSetIterator;->stringIterator:Ljava/util/Iterator;

    new-instance v0, Landroid/icu/text/UnicodeSet;

    invoke-direct {v0}, Landroid/icu/text/UnicodeSet;-><init>()V

    invoke-virtual {p0, v0}, Landroid/icu/text/UnicodeSetIterator;->reset(Landroid/icu/text/UnicodeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/icu/text/UnicodeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Landroid/icu/text/UnicodeSetIterator;->endRange:I

    iput v0, p0, Landroid/icu/text/UnicodeSetIterator;->range:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/text/UnicodeSetIterator;->stringIterator:Ljava/util/Iterator;

    invoke-virtual {p0, p1}, Landroid/icu/text/UnicodeSetIterator;->reset(Landroid/icu/text/UnicodeSet;)V

    return-void
.end method


# virtual methods
.method public getSet()Landroid/icu/text/UnicodeSet;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/icu/text/UnicodeSetIterator;->set:Landroid/icu/text/UnicodeSet;

    return-object v0
.end method

.method public getString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Landroid/icu/text/UnicodeSetIterator;->codepoint:I

    sget v1, Landroid/icu/text/UnicodeSetIterator;->IS_STRING:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/icu/text/UnicodeSetIterator;->codepoint:I

    invoke-static {v0}, Landroid/icu/text/UTF16;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/icu/text/UnicodeSetIterator;->string:Ljava/lang/String;

    return-object v0
.end method

.method protected loadRange(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/icu/text/UnicodeSetIterator;->set:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0, p1}, Landroid/icu/text/UnicodeSet;->getRangeStart(I)I

    move-result v0

    iput v0, p0, Landroid/icu/text/UnicodeSetIterator;->nextElement:I

    iget-object v0, p0, Landroid/icu/text/UnicodeSetIterator;->set:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0, p1}, Landroid/icu/text/UnicodeSet;->getRangeEnd(I)I

    move-result v0

    iput v0, p0, Landroid/icu/text/UnicodeSetIterator;->endElement:I

    return-void
.end method

.method public next()Z
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget v0, p0, Landroid/icu/text/UnicodeSetIterator;->nextElement:I

    iget v1, p0, Landroid/icu/text/UnicodeSetIterator;->endElement:I

    if-gt v0, v1, :cond_0

    iget v0, p0, Landroid/icu/text/UnicodeSetIterator;->nextElement:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/icu/text/UnicodeSetIterator;->nextElement:I

    iput v0, p0, Landroid/icu/text/UnicodeSetIterator;->codepointEnd:I

    iput v0, p0, Landroid/icu/text/UnicodeSetIterator;->codepoint:I

    return v2

    :cond_0
    iget v0, p0, Landroid/icu/text/UnicodeSetIterator;->range:I

    iget v1, p0, Landroid/icu/text/UnicodeSetIterator;->endRange:I

    if-ge v0, v1, :cond_1

    iget v0, p0, Landroid/icu/text/UnicodeSetIterator;->range:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/icu/text/UnicodeSetIterator;->range:I

    invoke-virtual {p0, v0}, Landroid/icu/text/UnicodeSetIterator;->loadRange(I)V

    iget v0, p0, Landroid/icu/text/UnicodeSetIterator;->nextElement:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/icu/text/UnicodeSetIterator;->nextElement:I

    iput v0, p0, Landroid/icu/text/UnicodeSetIterator;->codepointEnd:I

    iput v0, p0, Landroid/icu/text/UnicodeSetIterator;->codepoint:I

    return v2

    :cond_1
    iget-object v0, p0, Landroid/icu/text/UnicodeSetIterator;->stringIterator:Ljava/util/Iterator;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    return v0

    :cond_2
    sget v0, Landroid/icu/text/UnicodeSetIterator;->IS_STRING:I

    iput v0, p0, Landroid/icu/text/UnicodeSetIterator;->codepoint:I

    iget-object v0, p0, Landroid/icu/text/UnicodeSetIterator;->stringIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/UnicodeSetIterator;->string:Ljava/lang/String;

    iget-object v0, p0, Landroid/icu/text/UnicodeSetIterator;->stringIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    iput-object v3, p0, Landroid/icu/text/UnicodeSetIterator;->stringIterator:Ljava/util/Iterator;

    :cond_3
    return v2
.end method

.method public nextRange()Z
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget v0, p0, Landroid/icu/text/UnicodeSetIterator;->nextElement:I

    iget v1, p0, Landroid/icu/text/UnicodeSetIterator;->endElement:I

    if-gt v0, v1, :cond_0

    iget v0, p0, Landroid/icu/text/UnicodeSetIterator;->endElement:I

    iput v0, p0, Landroid/icu/text/UnicodeSetIterator;->codepointEnd:I

    iget v0, p0, Landroid/icu/text/UnicodeSetIterator;->nextElement:I

    iput v0, p0, Landroid/icu/text/UnicodeSetIterator;->codepoint:I

    iget v0, p0, Landroid/icu/text/UnicodeSetIterator;->endElement:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/icu/text/UnicodeSetIterator;->nextElement:I

    return v2

    :cond_0
    iget v0, p0, Landroid/icu/text/UnicodeSetIterator;->range:I

    iget v1, p0, Landroid/icu/text/UnicodeSetIterator;->endRange:I

    if-ge v0, v1, :cond_1

    iget v0, p0, Landroid/icu/text/UnicodeSetIterator;->range:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/icu/text/UnicodeSetIterator;->range:I

    invoke-virtual {p0, v0}, Landroid/icu/text/UnicodeSetIterator;->loadRange(I)V

    iget v0, p0, Landroid/icu/text/UnicodeSetIterator;->endElement:I

    iput v0, p0, Landroid/icu/text/UnicodeSetIterator;->codepointEnd:I

    iget v0, p0, Landroid/icu/text/UnicodeSetIterator;->nextElement:I

    iput v0, p0, Landroid/icu/text/UnicodeSetIterator;->codepoint:I

    iget v0, p0, Landroid/icu/text/UnicodeSetIterator;->endElement:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/icu/text/UnicodeSetIterator;->nextElement:I

    return v2

    :cond_1
    iget-object v0, p0, Landroid/icu/text/UnicodeSetIterator;->stringIterator:Ljava/util/Iterator;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    return v0

    :cond_2
    sget v0, Landroid/icu/text/UnicodeSetIterator;->IS_STRING:I

    iput v0, p0, Landroid/icu/text/UnicodeSetIterator;->codepoint:I

    iget-object v0, p0, Landroid/icu/text/UnicodeSetIterator;->stringIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/UnicodeSetIterator;->string:Ljava/lang/String;

    iget-object v0, p0, Landroid/icu/text/UnicodeSetIterator;->stringIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    iput-object v3, p0, Landroid/icu/text/UnicodeSetIterator;->stringIterator:Ljava/util/Iterator;

    :cond_3
    return v2
.end method

.method public reset()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/icu/text/UnicodeSetIterator;->set:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->getRangeCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/icu/text/UnicodeSetIterator;->endRange:I

    iput v1, p0, Landroid/icu/text/UnicodeSetIterator;->range:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/icu/text/UnicodeSetIterator;->endElement:I

    iput v1, p0, Landroid/icu/text/UnicodeSetIterator;->nextElement:I

    iget v0, p0, Landroid/icu/text/UnicodeSetIterator;->endRange:I

    if-ltz v0, :cond_0

    iget v0, p0, Landroid/icu/text/UnicodeSetIterator;->range:I

    invoke-virtual {p0, v0}, Landroid/icu/text/UnicodeSetIterator;->loadRange(I)V

    :cond_0
    iput-object v2, p0, Landroid/icu/text/UnicodeSetIterator;->stringIterator:Ljava/util/Iterator;

    iget-object v0, p0, Landroid/icu/text/UnicodeSetIterator;->set:Landroid/icu/text/UnicodeSet;

    iget-object v0, v0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/icu/text/UnicodeSetIterator;->set:Landroid/icu/text/UnicodeSet;

    iget-object v0, v0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/UnicodeSetIterator;->stringIterator:Ljava/util/Iterator;

    iget-object v0, p0, Landroid/icu/text/UnicodeSetIterator;->stringIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    iput-object v2, p0, Landroid/icu/text/UnicodeSetIterator;->stringIterator:Ljava/util/Iterator;

    :cond_1
    return-void
.end method

.method public reset(Landroid/icu/text/UnicodeSet;)V
    .locals 0

    iput-object p1, p0, Landroid/icu/text/UnicodeSetIterator;->set:Landroid/icu/text/UnicodeSet;

    invoke-virtual {p0}, Landroid/icu/text/UnicodeSetIterator;->reset()V

    return-void
.end method
