.class public Landroid/icu/text/Transliterator$Position;
.super Ljava/lang/Object;
.source "Transliterator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/Transliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Position"
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field public contextLimit:I

.field public contextStart:I

.field public limit:I

.field public start:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Landroid/icu/text/Transliterator$Position;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Landroid/icu/text/Transliterator$Position;->-assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0, v0}, Landroid/icu/text/Transliterator$Position;-><init>(IIII)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p2}, Landroid/icu/text/Transliterator$Position;-><init>(IIII)V

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/icu/text/Transliterator$Position;->contextStart:I

    iput p2, p0, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    iput p3, p0, Landroid/icu/text/Transliterator$Position;->start:I

    iput p4, p0, Landroid/icu/text/Transliterator$Position;->limit:I

    return-void
.end method

.method public constructor <init>(Landroid/icu/text/Transliterator$Position;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Landroid/icu/text/Transliterator$Position;->set(Landroid/icu/text/Transliterator$Position;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    instance-of v2, p1, Landroid/icu/text/Transliterator$Position;

    if-eqz v2, :cond_1

    move-object v0, p1

    nop

    nop

    iget v2, p0, Landroid/icu/text/Transliterator$Position;->contextStart:I

    iget v3, v0, Landroid/icu/text/Transliterator$Position;->contextStart:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    iget v3, v0, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Landroid/icu/text/Transliterator$Position;->start:I

    iget v3, v0, Landroid/icu/text/Transliterator$Position;->start:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Landroid/icu/text/Transliterator$Position;->limit:I

    iget v3, v0, Landroid/icu/text/Transliterator$Position;->limit:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-boolean v0, Landroid/icu/text/Transliterator$Position;->-assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "hashCode not designed"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    const/16 v0, 0x2a

    return v0
.end method

.method public set(Landroid/icu/text/Transliterator$Position;)V
    .locals 1

    iget v0, p1, Landroid/icu/text/Transliterator$Position;->contextStart:I

    iput v0, p0, Landroid/icu/text/Transliterator$Position;->contextStart:I

    iget v0, p1, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    iput v0, p0, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    iget v0, p1, Landroid/icu/text/Transliterator$Position;->start:I

    iput v0, p0, Landroid/icu/text/Transliterator$Position;->start:I

    iget v0, p1, Landroid/icu/text/Transliterator$Position;->limit:I

    iput v0, p0, Landroid/icu/text/Transliterator$Position;->limit:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "[cs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/icu/text/Transliterator$Position;->contextStart:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", s="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/icu/text/Transliterator$Position;->start:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", l="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/icu/text/Transliterator$Position;->limit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", cl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final validate(I)V
    .locals 3

    iget v0, p0, Landroid/icu/text/Transliterator$Position;->contextStart:I

    if-ltz v0, :cond_0

    iget v0, p0, Landroid/icu/text/Transliterator$Position;->start:I

    iget v1, p0, Landroid/icu/text/Transliterator$Position;->contextStart:I

    if-ge v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid Position {cs="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/icu/text/Transliterator$Position;->contextStart:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", s="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/icu/text/Transliterator$Position;->start:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", l="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/icu/text/Transliterator$Position;->limit:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", cl="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}, len="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, p0, Landroid/icu/text/Transliterator$Position;->limit:I

    iget v1, p0, Landroid/icu/text/Transliterator$Position;->start:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    iget v1, p0, Landroid/icu/text/Transliterator$Position;->limit:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    if-lt p1, v0, :cond_0

    return-void
.end method
