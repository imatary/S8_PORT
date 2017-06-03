.class final Landroid/icu/text/MessageFormat$PluralSelectorContext;
.super Ljava/lang/Object;
.source "MessageFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/MessageFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PluralSelectorContext"
.end annotation


# instance fields
.field argName:Ljava/lang/String;

.field forReplaceNumber:Z

.field formatter:Ljava/text/Format;

.field number:Ljava/lang/Number;

.field numberArgIndex:I

.field numberString:Ljava/lang/String;

.field offset:D

.field startIndex:I


# direct methods
.method private constructor <init>(ILjava/lang/String;Ljava/lang/Number;D)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/icu/text/MessageFormat$PluralSelectorContext;->startIndex:I

    iput-object p2, p0, Landroid/icu/text/MessageFormat$PluralSelectorContext;->argName:Ljava/lang/String;

    const-wide/16 v0, 0x0

    cmpl-double v0, p4, v0

    if-nez v0, :cond_0

    iput-object p3, p0, Landroid/icu/text/MessageFormat$PluralSelectorContext;->number:Ljava/lang/Number;

    :goto_0
    iput-wide p4, p0, Landroid/icu/text/MessageFormat$PluralSelectorContext;->offset:D

    return-void

    :cond_0
    invoke-virtual {p3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    sub-double/2addr v0, p4

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/MessageFormat$PluralSelectorContext;->number:Ljava/lang/Number;

    goto :goto_0
.end method

.method synthetic constructor <init>(ILjava/lang/String;Ljava/lang/Number;DLandroid/icu/text/MessageFormat$PluralSelectorContext;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroid/icu/text/MessageFormat$PluralSelectorContext;-><init>(ILjava/lang/String;Ljava/lang/Number;D)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "PluralSelectorContext being formatted, rather than its number"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method
