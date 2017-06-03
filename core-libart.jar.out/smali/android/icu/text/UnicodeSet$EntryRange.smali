.class public Landroid/icu/text/UnicodeSet$EntryRange;
.super Ljava/lang/Object;
.source "UnicodeSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/UnicodeSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EntryRange"
.end annotation


# instance fields
.field public codepoint:I

.field public codepointEnd:I


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Landroid/icu/text/UnicodeSet$EntryRange;->codepoint:I

    iget v2, p0, Landroid/icu/text/UnicodeSet$EntryRange;->codepointEnd:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Landroid/icu/text/UnicodeSet$EntryRange;->codepoint:I

    invoke-static {v0, v1, v3}, Landroid/icu/text/UnicodeSet;->-wrap0(Ljava/lang/Appendable;IZ)Ljava/lang/Appendable;

    move-result-object v1

    check-cast v1, Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    iget v1, p0, Landroid/icu/text/UnicodeSet$EntryRange;->codepoint:I

    invoke-static {v0, v1, v3}, Landroid/icu/text/UnicodeSet;->-wrap0(Ljava/lang/Appendable;IZ)Ljava/lang/Appendable;

    move-result-object v1

    check-cast v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x2d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/icu/text/UnicodeSet$EntryRange;->codepointEnd:I

    invoke-static {v1, v2, v3}, Landroid/icu/text/UnicodeSet;->-wrap0(Ljava/lang/Appendable;IZ)Ljava/lang/Appendable;

    move-result-object v1

    check-cast v1, Ljava/lang/StringBuilder;

    goto :goto_0
.end method
