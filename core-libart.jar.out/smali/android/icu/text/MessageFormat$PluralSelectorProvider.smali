.class final Landroid/icu/text/MessageFormat$PluralSelectorProvider;
.super Ljava/lang/Object;
.source "MessageFormat.java"

# interfaces
.implements Landroid/icu/text/PluralFormat$PluralSelector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/MessageFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PluralSelectorProvider"
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field private msgFormat:Landroid/icu/text/MessageFormat;

.field private rules:Landroid/icu/text/PluralRules;

.field private type:Landroid/icu/text/PluralRules$PluralType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Landroid/icu/text/MessageFormat$PluralSelectorProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Landroid/icu/text/MessageFormat$PluralSelectorProvider;->-assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>(Landroid/icu/text/MessageFormat;Landroid/icu/text/PluralRules$PluralType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/icu/text/MessageFormat$PluralSelectorProvider;->msgFormat:Landroid/icu/text/MessageFormat;

    iput-object p2, p0, Landroid/icu/text/MessageFormat$PluralSelectorProvider;->type:Landroid/icu/text/PluralRules$PluralType;

    return-void
.end method


# virtual methods
.method public select(Ljava/lang/Object;D)Ljava/lang/String;
    .locals 8

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v3, p0, Landroid/icu/text/MessageFormat$PluralSelectorProvider;->rules:Landroid/icu/text/PluralRules;

    if-nez v3, :cond_0

    iget-object v3, p0, Landroid/icu/text/MessageFormat$PluralSelectorProvider;->msgFormat:Landroid/icu/text/MessageFormat;

    invoke-static {v3}, Landroid/icu/text/MessageFormat;->-get1(Landroid/icu/text/MessageFormat;)Landroid/icu/util/ULocale;

    move-result-object v3

    iget-object v6, p0, Landroid/icu/text/MessageFormat$PluralSelectorProvider;->type:Landroid/icu/text/PluralRules$PluralType;

    invoke-static {v3, v6}, Landroid/icu/text/PluralRules;->forLocale(Landroid/icu/util/ULocale;Landroid/icu/text/PluralRules$PluralType;)Landroid/icu/text/PluralRules;

    move-result-object v3

    iput-object v3, p0, Landroid/icu/text/MessageFormat$PluralSelectorProvider;->rules:Landroid/icu/text/PluralRules;

    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/icu/text/MessageFormat$PluralSelectorContext;

    iget-object v3, p0, Landroid/icu/text/MessageFormat$PluralSelectorProvider;->msgFormat:Landroid/icu/text/MessageFormat;

    iget v6, v0, Landroid/icu/text/MessageFormat$PluralSelectorContext;->startIndex:I

    invoke-static {v3, v6}, Landroid/icu/text/MessageFormat;->-wrap2(Landroid/icu/text/MessageFormat;I)I

    move-result v2

    iget-object v3, p0, Landroid/icu/text/MessageFormat$PluralSelectorProvider;->msgFormat:Landroid/icu/text/MessageFormat;

    iget-object v6, v0, Landroid/icu/text/MessageFormat$PluralSelectorContext;->argName:Ljava/lang/String;

    invoke-static {v3, v2, v6}, Landroid/icu/text/MessageFormat;->-wrap1(Landroid/icu/text/MessageFormat;ILjava/lang/String;)I

    move-result v3

    iput v3, v0, Landroid/icu/text/MessageFormat$PluralSelectorContext;->numberArgIndex:I

    iget v3, v0, Landroid/icu/text/MessageFormat$PluralSelectorContext;->numberArgIndex:I

    if-lez v3, :cond_1

    iget-object v3, p0, Landroid/icu/text/MessageFormat$PluralSelectorProvider;->msgFormat:Landroid/icu/text/MessageFormat;

    invoke-static {v3}, Landroid/icu/text/MessageFormat;->-get0(Landroid/icu/text/MessageFormat;)Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/icu/text/MessageFormat$PluralSelectorProvider;->msgFormat:Landroid/icu/text/MessageFormat;

    invoke-static {v3}, Landroid/icu/text/MessageFormat;->-get0(Landroid/icu/text/MessageFormat;)Ljava/util/Map;

    move-result-object v3

    iget v6, v0, Landroid/icu/text/MessageFormat$PluralSelectorContext;->numberArgIndex:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/text/Format;

    iput-object v3, v0, Landroid/icu/text/MessageFormat$PluralSelectorContext;->formatter:Ljava/text/Format;

    :cond_1
    iget-object v3, v0, Landroid/icu/text/MessageFormat$PluralSelectorContext;->formatter:Ljava/text/Format;

    if-nez v3, :cond_2

    iget-object v3, p0, Landroid/icu/text/MessageFormat$PluralSelectorProvider;->msgFormat:Landroid/icu/text/MessageFormat;

    invoke-static {v3}, Landroid/icu/text/MessageFormat;->-wrap0(Landroid/icu/text/MessageFormat;)Landroid/icu/text/NumberFormat;

    move-result-object v3

    iput-object v3, v0, Landroid/icu/text/MessageFormat$PluralSelectorContext;->formatter:Ljava/text/Format;

    iput-boolean v4, v0, Landroid/icu/text/MessageFormat$PluralSelectorContext;->forReplaceNumber:Z

    :cond_2
    sget-boolean v3, Landroid/icu/text/MessageFormat$PluralSelectorProvider;->-assertionsDisabled:Z

    if-nez v3, :cond_4

    iget-object v3, v0, Landroid/icu/text/MessageFormat$PluralSelectorContext;->number:Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    cmpl-double v3, v6, p2

    if-nez v3, :cond_3

    move v3, v4

    :goto_0
    if-nez v3, :cond_4

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    :cond_3
    move v3, v5

    goto :goto_0

    :cond_4
    iget-object v3, v0, Landroid/icu/text/MessageFormat$PluralSelectorContext;->formatter:Ljava/text/Format;

    iget-object v4, v0, Landroid/icu/text/MessageFormat$PluralSelectorContext;->number:Ljava/lang/Number;

    invoke-virtual {v3, v4}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/icu/text/MessageFormat$PluralSelectorContext;->numberString:Ljava/lang/String;

    iget-object v3, v0, Landroid/icu/text/MessageFormat$PluralSelectorContext;->formatter:Ljava/text/Format;

    instance-of v3, v3, Landroid/icu/text/DecimalFormat;

    if-eqz v3, :cond_5

    iget-object v3, v0, Landroid/icu/text/MessageFormat$PluralSelectorContext;->formatter:Ljava/text/Format;

    check-cast v3, Landroid/icu/text/DecimalFormat;

    invoke-virtual {v3, p2, p3}, Landroid/icu/text/DecimalFormat;->getFixedDecimal(D)Landroid/icu/text/PluralRules$FixedDecimal;

    move-result-object v1

    iget-object v3, p0, Landroid/icu/text/MessageFormat$PluralSelectorProvider;->rules:Landroid/icu/text/PluralRules;

    invoke-virtual {v3, v1}, Landroid/icu/text/PluralRules;->select(Landroid/icu/text/PluralRules$FixedDecimal;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_5
    iget-object v3, p0, Landroid/icu/text/MessageFormat$PluralSelectorProvider;->rules:Landroid/icu/text/PluralRules;

    invoke-virtual {v3, p2, p3}, Landroid/icu/text/PluralRules;->select(D)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
