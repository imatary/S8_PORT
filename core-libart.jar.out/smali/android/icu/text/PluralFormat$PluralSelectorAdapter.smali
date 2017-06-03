.class final Landroid/icu/text/PluralFormat$PluralSelectorAdapter;
.super Ljava/lang/Object;
.source "PluralFormat.java"

# interfaces
.implements Landroid/icu/text/PluralFormat$PluralSelector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/PluralFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PluralSelectorAdapter"
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field final synthetic $assertionsDisabled:Z

.field final synthetic this$0:Landroid/icu/text/PluralFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Landroid/icu/text/PluralFormat$PluralSelectorAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Landroid/icu/text/PluralFormat$PluralSelectorAdapter;->-assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private constructor <init>(Landroid/icu/text/PluralFormat;)V
    .locals 0

    iput-object p1, p0, Landroid/icu/text/PluralFormat$PluralSelectorAdapter;->this$0:Landroid/icu/text/PluralFormat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/text/PluralFormat;Landroid/icu/text/PluralFormat$PluralSelectorAdapter;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/icu/text/PluralFormat$PluralSelectorAdapter;-><init>(Landroid/icu/text/PluralFormat;)V

    return-void
.end method


# virtual methods
.method public select(Ljava/lang/Object;D)Ljava/lang/String;
    .locals 4

    move-object v0, p1

    check-cast v0, Landroid/icu/text/PluralRules$FixedDecimal;

    sget-boolean v1, Landroid/icu/text/PluralFormat$PluralSelectorAdapter;->-assertionsDisabled:Z

    if-nez v1, :cond_2

    iget-wide v2, v0, Landroid/icu/text/PluralRules$FixedDecimal;->source:D

    iget-boolean v1, v0, Landroid/icu/text/PluralRules$FixedDecimal;->isNegative:Z

    if-eqz v1, :cond_0

    neg-double p2, p2

    :cond_0
    cmpl-double v1, v2, p2

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Landroid/icu/text/PluralFormat$PluralSelectorAdapter;->this$0:Landroid/icu/text/PluralFormat;

    invoke-static {v1}, Landroid/icu/text/PluralFormat;->-get0(Landroid/icu/text/PluralFormat;)Landroid/icu/text/PluralRules;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/icu/text/PluralRules;->select(Landroid/icu/text/PluralRules$FixedDecimal;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
