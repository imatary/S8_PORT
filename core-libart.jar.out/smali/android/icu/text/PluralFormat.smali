.class public Landroid/icu/text/PluralFormat;
.super Landroid/icu/text/UFormat;
.source "PluralFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/PluralFormat$PluralSelector;,
        Landroid/icu/text/PluralFormat$PluralSelectorAdapter;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private transient msgPattern:Landroid/icu/text/MessagePattern;

.field private numberFormat:Landroid/icu/text/NumberFormat;

.field private transient offset:D

.field private parsedValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private pattern:Ljava/lang/String;

.field private pluralRules:Landroid/icu/text/PluralRules;

.field private transient pluralRulesWrapper:Landroid/icu/text/PluralFormat$PluralSelectorAdapter;

.field private ulocale:Landroid/icu/util/ULocale;


# direct methods
.method static synthetic -get0(Landroid/icu/text/PluralFormat;)Landroid/icu/text/PluralRules;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/PluralFormat;->pluralRules:Landroid/icu/text/PluralRules;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Landroid/icu/text/PluralFormat;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Landroid/icu/text/PluralFormat;->-assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/icu/text/UFormat;-><init>()V

    iput-object v2, p0, Landroid/icu/text/PluralFormat;->ulocale:Landroid/icu/util/ULocale;

    iput-object v2, p0, Landroid/icu/text/PluralFormat;->pluralRules:Landroid/icu/text/PluralRules;

    iput-object v2, p0, Landroid/icu/text/PluralFormat;->pattern:Ljava/lang/String;

    iput-object v2, p0, Landroid/icu/text/PluralFormat;->parsedValues:Ljava/util/Map;

    iput-object v2, p0, Landroid/icu/text/PluralFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/icu/text/PluralFormat;->offset:D

    new-instance v0, Landroid/icu/text/PluralFormat$PluralSelectorAdapter;

    invoke-direct {v0, p0, v2}, Landroid/icu/text/PluralFormat$PluralSelectorAdapter;-><init>(Landroid/icu/text/PluralFormat;Landroid/icu/text/PluralFormat$PluralSelectorAdapter;)V

    iput-object v0, p0, Landroid/icu/text/PluralFormat;->pluralRulesWrapper:Landroid/icu/text/PluralFormat$PluralSelectorAdapter;

    sget-object v0, Landroid/icu/text/PluralRules$PluralType;->CARDINAL:Landroid/icu/text/PluralRules$PluralType;

    sget-object v1, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v1}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-direct {p0, v2, v0, v1, v2}, Landroid/icu/text/PluralFormat;->init(Landroid/icu/text/PluralRules;Landroid/icu/text/PluralRules$PluralType;Landroid/icu/util/ULocale;Landroid/icu/text/NumberFormat;)V

    return-void
.end method

.method public constructor <init>(Landroid/icu/text/PluralRules;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/icu/text/UFormat;-><init>()V

    iput-object v2, p0, Landroid/icu/text/PluralFormat;->ulocale:Landroid/icu/util/ULocale;

    iput-object v2, p0, Landroid/icu/text/PluralFormat;->pluralRules:Landroid/icu/text/PluralRules;

    iput-object v2, p0, Landroid/icu/text/PluralFormat;->pattern:Ljava/lang/String;

    iput-object v2, p0, Landroid/icu/text/PluralFormat;->parsedValues:Ljava/util/Map;

    iput-object v2, p0, Landroid/icu/text/PluralFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/icu/text/PluralFormat;->offset:D

    new-instance v0, Landroid/icu/text/PluralFormat$PluralSelectorAdapter;

    invoke-direct {v0, p0, v2}, Landroid/icu/text/PluralFormat$PluralSelectorAdapter;-><init>(Landroid/icu/text/PluralFormat;Landroid/icu/text/PluralFormat$PluralSelectorAdapter;)V

    iput-object v0, p0, Landroid/icu/text/PluralFormat;->pluralRulesWrapper:Landroid/icu/text/PluralFormat$PluralSelectorAdapter;

    sget-object v0, Landroid/icu/text/PluralRules$PluralType;->CARDINAL:Landroid/icu/text/PluralRules$PluralType;

    sget-object v1, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v1}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/icu/text/PluralFormat;->init(Landroid/icu/text/PluralRules;Landroid/icu/text/PluralRules$PluralType;Landroid/icu/util/ULocale;Landroid/icu/text/NumberFormat;)V

    return-void
.end method

.method public constructor <init>(Landroid/icu/text/PluralRules;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/icu/text/UFormat;-><init>()V

    iput-object v2, p0, Landroid/icu/text/PluralFormat;->ulocale:Landroid/icu/util/ULocale;

    iput-object v2, p0, Landroid/icu/text/PluralFormat;->pluralRules:Landroid/icu/text/PluralRules;

    iput-object v2, p0, Landroid/icu/text/PluralFormat;->pattern:Ljava/lang/String;

    iput-object v2, p0, Landroid/icu/text/PluralFormat;->parsedValues:Ljava/util/Map;

    iput-object v2, p0, Landroid/icu/text/PluralFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/icu/text/PluralFormat;->offset:D

    new-instance v0, Landroid/icu/text/PluralFormat$PluralSelectorAdapter;

    invoke-direct {v0, p0, v2}, Landroid/icu/text/PluralFormat$PluralSelectorAdapter;-><init>(Landroid/icu/text/PluralFormat;Landroid/icu/text/PluralFormat$PluralSelectorAdapter;)V

    iput-object v0, p0, Landroid/icu/text/PluralFormat;->pluralRulesWrapper:Landroid/icu/text/PluralFormat$PluralSelectorAdapter;

    sget-object v0, Landroid/icu/text/PluralRules$PluralType;->CARDINAL:Landroid/icu/text/PluralRules$PluralType;

    sget-object v1, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v1}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/icu/text/PluralFormat;->init(Landroid/icu/text/PluralRules;Landroid/icu/text/PluralRules$PluralType;Landroid/icu/util/ULocale;Landroid/icu/text/NumberFormat;)V

    invoke-virtual {p0, p2}, Landroid/icu/text/PluralFormat;->applyPattern(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/icu/util/ULocale;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/icu/text/UFormat;-><init>()V

    iput-object v2, p0, Landroid/icu/text/PluralFormat;->ulocale:Landroid/icu/util/ULocale;

    iput-object v2, p0, Landroid/icu/text/PluralFormat;->pluralRules:Landroid/icu/text/PluralRules;

    iput-object v2, p0, Landroid/icu/text/PluralFormat;->pattern:Ljava/lang/String;

    iput-object v2, p0, Landroid/icu/text/PluralFormat;->parsedValues:Ljava/util/Map;

    iput-object v2, p0, Landroid/icu/text/PluralFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/icu/text/PluralFormat;->offset:D

    new-instance v0, Landroid/icu/text/PluralFormat$PluralSelectorAdapter;

    invoke-direct {v0, p0, v2}, Landroid/icu/text/PluralFormat$PluralSelectorAdapter;-><init>(Landroid/icu/text/PluralFormat;Landroid/icu/text/PluralFormat$PluralSelectorAdapter;)V

    iput-object v0, p0, Landroid/icu/text/PluralFormat;->pluralRulesWrapper:Landroid/icu/text/PluralFormat$PluralSelectorAdapter;

    sget-object v0, Landroid/icu/text/PluralRules$PluralType;->CARDINAL:Landroid/icu/text/PluralRules$PluralType;

    invoke-direct {p0, v2, v0, p1, v2}, Landroid/icu/text/PluralFormat;->init(Landroid/icu/text/PluralRules;Landroid/icu/text/PluralRules$PluralType;Landroid/icu/util/ULocale;Landroid/icu/text/NumberFormat;)V

    return-void
.end method

.method public constructor <init>(Landroid/icu/util/ULocale;Landroid/icu/text/PluralRules$PluralType;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/icu/text/UFormat;-><init>()V

    iput-object v2, p0, Landroid/icu/text/PluralFormat;->ulocale:Landroid/icu/util/ULocale;

    iput-object v2, p0, Landroid/icu/text/PluralFormat;->pluralRules:Landroid/icu/text/PluralRules;

    iput-object v2, p0, Landroid/icu/text/PluralFormat;->pattern:Ljava/lang/String;

    iput-object v2, p0, Landroid/icu/text/PluralFormat;->parsedValues:Ljava/util/Map;

    iput-object v2, p0, Landroid/icu/text/PluralFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/icu/text/PluralFormat;->offset:D

    new-instance v0, Landroid/icu/text/PluralFormat$PluralSelectorAdapter;

    invoke-direct {v0, p0, v2}, Landroid/icu/text/PluralFormat$PluralSelectorAdapter;-><init>(Landroid/icu/text/PluralFormat;Landroid/icu/text/PluralFormat$PluralSelectorAdapter;)V

    iput-object v0, p0, Landroid/icu/text/PluralFormat;->pluralRulesWrapper:Landroid/icu/text/PluralFormat$PluralSelectorAdapter;

    invoke-direct {p0, v2, p2, p1, v2}, Landroid/icu/text/PluralFormat;->init(Landroid/icu/text/PluralRules;Landroid/icu/text/PluralRules$PluralType;Landroid/icu/util/ULocale;Landroid/icu/text/NumberFormat;)V

    return-void
.end method

.method public constructor <init>(Landroid/icu/util/ULocale;Landroid/icu/text/PluralRules$PluralType;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/icu/text/UFormat;-><init>()V

    iput-object v2, p0, Landroid/icu/text/PluralFormat;->ulocale:Landroid/icu/util/ULocale;

    iput-object v2, p0, Landroid/icu/text/PluralFormat;->pluralRules:Landroid/icu/text/PluralRules;

    iput-object v2, p0, Landroid/icu/text/PluralFormat;->pattern:Ljava/lang/String;

    iput-object v2, p0, Landroid/icu/text/PluralFormat;->parsedValues:Ljava/util/Map;

    iput-object v2, p0, Landroid/icu/text/PluralFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/icu/text/PluralFormat;->offset:D

    new-instance v0, Landroid/icu/text/PluralFormat$PluralSelectorAdapter;

    invoke-direct {v0, p0, v2}, Landroid/icu/text/PluralFormat$PluralSelectorAdapter;-><init>(Landroid/icu/text/PluralFormat;Landroid/icu/text/PluralFormat$PluralSelectorAdapter;)V

    iput-object v0, p0, Landroid/icu/text/PluralFormat;->pluralRulesWrapper:Landroid/icu/text/PluralFormat$PluralSelectorAdapter;

    invoke-direct {p0, v2, p2, p1, v2}, Landroid/icu/text/PluralFormat;->init(Landroid/icu/text/PluralRules;Landroid/icu/text/PluralRules$PluralType;Landroid/icu/util/ULocale;Landroid/icu/text/NumberFormat;)V

    invoke-virtual {p0, p3}, Landroid/icu/text/PluralFormat;->applyPattern(Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Landroid/icu/util/ULocale;Landroid/icu/text/PluralRules$PluralType;Ljava/lang/String;Landroid/icu/text/NumberFormat;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/icu/text/UFormat;-><init>()V

    iput-object v2, p0, Landroid/icu/text/PluralFormat;->ulocale:Landroid/icu/util/ULocale;

    iput-object v2, p0, Landroid/icu/text/PluralFormat;->pluralRules:Landroid/icu/text/PluralRules;

    iput-object v2, p0, Landroid/icu/text/PluralFormat;->pattern:Ljava/lang/String;

    iput-object v2, p0, Landroid/icu/text/PluralFormat;->parsedValues:Ljava/util/Map;

    iput-object v2, p0, Landroid/icu/text/PluralFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/icu/text/PluralFormat;->offset:D

    new-instance v0, Landroid/icu/text/PluralFormat$PluralSelectorAdapter;

    invoke-direct {v0, p0, v2}, Landroid/icu/text/PluralFormat$PluralSelectorAdapter;-><init>(Landroid/icu/text/PluralFormat;Landroid/icu/text/PluralFormat$PluralSelectorAdapter;)V

    iput-object v0, p0, Landroid/icu/text/PluralFormat;->pluralRulesWrapper:Landroid/icu/text/PluralFormat$PluralSelectorAdapter;

    invoke-direct {p0, v2, p2, p1, p4}, Landroid/icu/text/PluralFormat;->init(Landroid/icu/text/PluralRules;Landroid/icu/text/PluralRules$PluralType;Landroid/icu/util/ULocale;Landroid/icu/text/NumberFormat;)V

    invoke-virtual {p0, p3}, Landroid/icu/text/PluralFormat;->applyPattern(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/icu/util/ULocale;Landroid/icu/text/PluralRules;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/icu/text/UFormat;-><init>()V

    iput-object v2, p0, Landroid/icu/text/PluralFormat;->ulocale:Landroid/icu/util/ULocale;

    iput-object v2, p0, Landroid/icu/text/PluralFormat;->pluralRules:Landroid/icu/text/PluralRules;

    iput-object v2, p0, Landroid/icu/text/PluralFormat;->pattern:Ljava/lang/String;

    iput-object v2, p0, Landroid/icu/text/PluralFormat;->parsedValues:Ljava/util/Map;

    iput-object v2, p0, Landroid/icu/text/PluralFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/icu/text/PluralFormat;->offset:D

    new-instance v0, Landroid/icu/text/PluralFormat$PluralSelectorAdapter;

    invoke-direct {v0, p0, v2}, Landroid/icu/text/PluralFormat$PluralSelectorAdapter;-><init>(Landroid/icu/text/PluralFormat;Landroid/icu/text/PluralFormat$PluralSelectorAdapter;)V

    iput-object v0, p0, Landroid/icu/text/PluralFormat;->pluralRulesWrapper:Landroid/icu/text/PluralFormat$PluralSelectorAdapter;

    sget-object v0, Landroid/icu/text/PluralRules$PluralType;->CARDINAL:Landroid/icu/text/PluralRules$PluralType;

    invoke-direct {p0, p2, v0, p1, v2}, Landroid/icu/text/PluralFormat;->init(Landroid/icu/text/PluralRules;Landroid/icu/text/PluralRules$PluralType;Landroid/icu/util/ULocale;Landroid/icu/text/NumberFormat;)V

    return-void
.end method

.method public constructor <init>(Landroid/icu/util/ULocale;Landroid/icu/text/PluralRules;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/icu/text/UFormat;-><init>()V

    iput-object v2, p0, Landroid/icu/text/PluralFormat;->ulocale:Landroid/icu/util/ULocale;

    iput-object v2, p0, Landroid/icu/text/PluralFormat;->pluralRules:Landroid/icu/text/PluralRules;

    iput-object v2, p0, Landroid/icu/text/PluralFormat;->pattern:Ljava/lang/String;

    iput-object v2, p0, Landroid/icu/text/PluralFormat;->parsedValues:Ljava/util/Map;

    iput-object v2, p0, Landroid/icu/text/PluralFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/icu/text/PluralFormat;->offset:D

    new-instance v0, Landroid/icu/text/PluralFormat$PluralSelectorAdapter;

    invoke-direct {v0, p0, v2}, Landroid/icu/text/PluralFormat$PluralSelectorAdapter;-><init>(Landroid/icu/text/PluralFormat;Landroid/icu/text/PluralFormat$PluralSelectorAdapter;)V

    iput-object v0, p0, Landroid/icu/text/PluralFormat;->pluralRulesWrapper:Landroid/icu/text/PluralFormat$PluralSelectorAdapter;

    sget-object v0, Landroid/icu/text/PluralRules$PluralType;->CARDINAL:Landroid/icu/text/PluralRules$PluralType;

    invoke-direct {p0, p2, v0, p1, v2}, Landroid/icu/text/PluralFormat;->init(Landroid/icu/text/PluralRules;Landroid/icu/text/PluralRules$PluralType;Landroid/icu/util/ULocale;Landroid/icu/text/NumberFormat;)V

    invoke-virtual {p0, p3}, Landroid/icu/text/PluralFormat;->applyPattern(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/icu/util/ULocale;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/icu/text/UFormat;-><init>()V

    iput-object v2, p0, Landroid/icu/text/PluralFormat;->ulocale:Landroid/icu/util/ULocale;

    iput-object v2, p0, Landroid/icu/text/PluralFormat;->pluralRules:Landroid/icu/text/PluralRules;

    iput-object v2, p0, Landroid/icu/text/PluralFormat;->pattern:Ljava/lang/String;

    iput-object v2, p0, Landroid/icu/text/PluralFormat;->parsedValues:Ljava/util/Map;

    iput-object v2, p0, Landroid/icu/text/PluralFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/icu/text/PluralFormat;->offset:D

    new-instance v0, Landroid/icu/text/PluralFormat$PluralSelectorAdapter;

    invoke-direct {v0, p0, v2}, Landroid/icu/text/PluralFormat$PluralSelectorAdapter;-><init>(Landroid/icu/text/PluralFormat;Landroid/icu/text/PluralFormat$PluralSelectorAdapter;)V

    iput-object v0, p0, Landroid/icu/text/PluralFormat;->pluralRulesWrapper:Landroid/icu/text/PluralFormat$PluralSelectorAdapter;

    sget-object v0, Landroid/icu/text/PluralRules$PluralType;->CARDINAL:Landroid/icu/text/PluralRules$PluralType;

    invoke-direct {p0, v2, v0, p1, v2}, Landroid/icu/text/PluralFormat;->init(Landroid/icu/text/PluralRules;Landroid/icu/text/PluralRules$PluralType;Landroid/icu/util/ULocale;Landroid/icu/text/NumberFormat;)V

    invoke-virtual {p0, p2}, Landroid/icu/text/PluralFormat;->applyPattern(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/icu/text/UFormat;-><init>()V

    iput-object v2, p0, Landroid/icu/text/PluralFormat;->ulocale:Landroid/icu/util/ULocale;

    iput-object v2, p0, Landroid/icu/text/PluralFormat;->pluralRules:Landroid/icu/text/PluralRules;

    iput-object v2, p0, Landroid/icu/text/PluralFormat;->pattern:Ljava/lang/String;

    iput-object v2, p0, Landroid/icu/text/PluralFormat;->parsedValues:Ljava/util/Map;

    iput-object v2, p0, Landroid/icu/text/PluralFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/icu/text/PluralFormat;->offset:D

    new-instance v0, Landroid/icu/text/PluralFormat$PluralSelectorAdapter;

    invoke-direct {v0, p0, v2}, Landroid/icu/text/PluralFormat$PluralSelectorAdapter;-><init>(Landroid/icu/text/PluralFormat;Landroid/icu/text/PluralFormat$PluralSelectorAdapter;)V

    iput-object v0, p0, Landroid/icu/text/PluralFormat;->pluralRulesWrapper:Landroid/icu/text/PluralFormat$PluralSelectorAdapter;

    sget-object v0, Landroid/icu/text/PluralRules$PluralType;->CARDINAL:Landroid/icu/text/PluralRules$PluralType;

    sget-object v1, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v1}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-direct {p0, v2, v0, v1, v2}, Landroid/icu/text/PluralFormat;->init(Landroid/icu/text/PluralRules;Landroid/icu/text/PluralRules$PluralType;Landroid/icu/util/ULocale;Landroid/icu/text/NumberFormat;)V

    invoke-virtual {p0, p1}, Landroid/icu/text/PluralFormat;->applyPattern(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 1

    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/icu/text/PluralFormat;-><init>(Landroid/icu/util/ULocale;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;Landroid/icu/text/PluralRules$PluralType;)V
    .locals 1

    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroid/icu/text/PluralFormat;-><init>(Landroid/icu/util/ULocale;Landroid/icu/text/PluralRules$PluralType;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;Landroid/icu/text/PluralRules;)V
    .locals 1

    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroid/icu/text/PluralFormat;-><init>(Landroid/icu/util/ULocale;Landroid/icu/text/PluralRules;)V

    return-void
.end method

.method static findSubMessage(Landroid/icu/text/MessagePattern;ILandroid/icu/text/PluralFormat$PluralSelector;Ljava/lang/Object;D)I
    .locals 12

    invoke-virtual {p0}, Landroid/icu/text/MessagePattern;->countParts()I

    move-result v0

    invoke-virtual {p0, p1}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object v6

    invoke-virtual {v6}, Landroid/icu/text/MessagePattern$Part;->getType()Landroid/icu/text/MessagePattern$Part$Type;

    move-result-object v9

    invoke-virtual {v9}, Landroid/icu/text/MessagePattern$Part$Type;->hasNumericValue()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {p0, v6}, Landroid/icu/text/MessagePattern;->getNumericValue(Landroid/icu/text/MessagePattern$Part;)D

    move-result-wide v4

    add-int/lit8 p1, p1, 0x1

    :goto_0
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_1
    add-int/lit8 v7, p1, 0x1

    invoke-virtual {p0, p1}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object v6

    invoke-virtual {v6}, Landroid/icu/text/MessagePattern$Part;->getType()Landroid/icu/text/MessagePattern$Part$Type;

    move-result-object v8

    sget-object v9, Landroid/icu/text/MessagePattern$Part$Type;->ARG_LIMIT:Landroid/icu/text/MessagePattern$Part$Type;

    if-ne v8, v9, :cond_2

    move p1, v7

    :cond_0
    return v3

    :cond_1
    const-wide/16 v4, 0x0

    goto :goto_0

    :cond_2
    sget-boolean v9, Landroid/icu/text/PluralFormat;->-assertionsDisabled:Z

    if-nez v9, :cond_4

    sget-object v9, Landroid/icu/text/MessagePattern$Part$Type;->ARG_SELECTOR:Landroid/icu/text/MessagePattern$Part$Type;

    if-ne v8, v9, :cond_3

    const/4 v9, 0x1

    :goto_2
    if-nez v9, :cond_4

    new-instance v9, Ljava/lang/AssertionError;

    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    throw v9

    :cond_3
    const/4 v9, 0x0

    goto :goto_2

    :cond_4
    invoke-virtual {p0, v7}, Landroid/icu/text/MessagePattern;->getPartType(I)Landroid/icu/text/MessagePattern$Part$Type;

    move-result-object v9

    invoke-virtual {v9}, Landroid/icu/text/MessagePattern$Part$Type;->hasNumericValue()Z

    move-result v9

    if-eqz v9, :cond_5

    add-int/lit8 p1, v7, 0x1

    invoke-virtual {p0, v7}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object v6

    invoke-virtual {p0, v6}, Landroid/icu/text/MessagePattern;->getNumericValue(Landroid/icu/text/MessagePattern$Part;)D

    move-result-wide v10

    cmpl-double v9, p4, v10

    if-nez v9, :cond_6

    return p1

    :cond_5
    if-nez v1, :cond_b

    const-string/jumbo v9, "other"

    invoke-virtual {p0, v6, v9}, Landroid/icu/text/MessagePattern;->partSubstringMatches(Landroid/icu/text/MessagePattern$Part;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    if-nez v3, :cond_b

    move v3, v7

    if-eqz v2, :cond_7

    const-string/jumbo v9, "other"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    const/4 v1, 0x1

    move p1, v7

    :cond_6
    :goto_3
    invoke-virtual {p0, p1}, Landroid/icu/text/MessagePattern;->getLimitPartIndex(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    if-ge p1, v0, :cond_0

    goto :goto_1

    :cond_7
    move p1, v7

    goto :goto_3

    :cond_8
    if-nez v2, :cond_9

    sub-double v10, p4, v4

    invoke-interface {p2, p3, v10, v11}, Landroid/icu/text/PluralFormat$PluralSelector;->select(Ljava/lang/Object;D)Ljava/lang/String;

    move-result-object v2

    if-eqz v3, :cond_9

    const-string/jumbo v9, "other"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    const/4 v1, 0x1

    :cond_9
    if-nez v1, :cond_a

    invoke-virtual {p0, v6, v2}, Landroid/icu/text/MessagePattern;->partSubstringMatches(Landroid/icu/text/MessagePattern$Part;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_b

    move v3, v7

    const/4 v1, 0x1

    move p1, v7

    goto :goto_3

    :cond_a
    move p1, v7

    goto :goto_3

    :cond_b
    move p1, v7

    goto :goto_3
.end method

.method private format(Ljava/lang/Number;D)Ljava/lang/String;
    .locals 18

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/icu/text/PluralFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/icu/text/PluralFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v2}, Landroid/icu/text/MessagePattern;->countParts()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/icu/text/PluralFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_1
    move-object/from16 v0, p0

    iget-wide v2, v0, Landroid/icu/text/PluralFormat;->offset:D

    sub-double v10, p2, v2

    move-object/from16 v0, p0

    iget-wide v2, v0, Landroid/icu/text/PluralFormat;->offset:D

    const-wide/16 v6, 0x0

    cmpl-double v2, v2, v6

    if-nez v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/icu/text/PluralFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/icu/text/PluralFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    instance-of v2, v2, Landroid/icu/text/DecimalFormat;

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/icu/text/PluralFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    check-cast v2, Landroid/icu/text/DecimalFormat;

    invoke-virtual {v2, v10, v11}, Landroid/icu/text/DecimalFormat;->getFixedDecimal(D)Landroid/icu/text/PluralRules$FixedDecimal;

    move-result-object v5

    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/icu/text/PluralFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/text/PluralFormat;->pluralRulesWrapper:Landroid/icu/text/PluralFormat$PluralSelectorAdapter;

    const/4 v3, 0x0

    move-wide/from16 v6, p2

    invoke-static/range {v2 .. v7}, Landroid/icu/text/PluralFormat;->findSubMessage(Landroid/icu/text/MessagePattern;ILandroid/icu/text/PluralFormat$PluralSelector;Ljava/lang/Object;D)I

    move-result v13

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/icu/text/PluralFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v2, v13}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object v2

    invoke-virtual {v2}, Landroid/icu/text/MessagePattern$Part;->getLimit()I

    move-result v14

    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/icu/text/PluralFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v2, v13}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object v12

    invoke-virtual {v12}, Landroid/icu/text/MessagePattern$Part;->getType()Landroid/icu/text/MessagePattern$Part$Type;

    move-result-object v16

    invoke-virtual {v12}, Landroid/icu/text/MessagePattern$Part;->getIndex()I

    move-result v8

    sget-object v2, Landroid/icu/text/MessagePattern$Part$Type;->MSG_LIMIT:Landroid/icu/text/MessagePattern$Part$Type;

    move-object/from16 v0, v16

    if-ne v0, v2, :cond_6

    if-nez v15, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/icu/text/PluralFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v2, v14, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/icu/text/PluralFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    invoke-virtual {v2, v10, v11}, Landroid/icu/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    :cond_4
    new-instance v5, Landroid/icu/text/PluralRules$FixedDecimal;

    invoke-direct {v5, v10, v11}, Landroid/icu/text/PluralRules$FixedDecimal;-><init>(D)V

    goto :goto_1

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/icu/text/PluralFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v15, v2, v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_6
    sget-object v2, Landroid/icu/text/MessagePattern$Part$Type;->REPLACE_NUMBER:Landroid/icu/text/MessagePattern$Part$Type;

    move-object/from16 v0, v16

    if-eq v0, v2, :cond_7

    sget-object v2, Landroid/icu/text/MessagePattern$Part$Type;->SKIP_SYNTAX:Landroid/icu/text/MessagePattern$Part$Type;

    move-object/from16 v0, v16

    if-ne v0, v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/icu/text/PluralFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v2}, Landroid/icu/text/MessagePattern;->jdkAposMode()Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_7
    if-nez v15, :cond_8

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/icu/text/PluralFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v15, v2, v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/icu/text/MessagePattern$Part$Type;->REPLACE_NUMBER:Landroid/icu/text/MessagePattern$Part$Type;

    move-object/from16 v0, v16

    if-ne v0, v2, :cond_9

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    invoke-virtual {v12}, Landroid/icu/text/MessagePattern$Part;->getLimit()I

    move-result v14

    goto :goto_2

    :cond_a
    sget-object v2, Landroid/icu/text/MessagePattern$Part$Type;->ARG_START:Landroid/icu/text/MessagePattern$Part$Type;

    move-object/from16 v0, v16

    if-ne v0, v2, :cond_2

    if-nez v15, :cond_b

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/icu/text/PluralFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v15, v2, v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move v14, v8

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/icu/text/PluralFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v2, v13}, Landroid/icu/text/MessagePattern;->getLimitPartIndex(I)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/icu/text/PluralFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v2, v13}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object v2

    invoke-virtual {v2}, Landroid/icu/text/MessagePattern$Part;->getLimit()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/icu/text/PluralFormat;->pattern:Ljava/lang/String;

    invoke-static {v2, v14, v8, v15}, Landroid/icu/text/MessagePattern;->appendReducedApostrophes(Ljava/lang/String;IILjava/lang/StringBuilder;)V

    move v14, v8

    goto/16 :goto_2
.end method

.method private init(Landroid/icu/text/PluralRules;Landroid/icu/text/PluralRules$PluralType;Landroid/icu/util/ULocale;Landroid/icu/text/NumberFormat;)V
    .locals 1

    iput-object p3, p0, Landroid/icu/text/PluralFormat;->ulocale:Landroid/icu/util/ULocale;

    if-nez p1, :cond_0

    iget-object v0, p0, Landroid/icu/text/PluralFormat;->ulocale:Landroid/icu/util/ULocale;

    invoke-static {v0, p2}, Landroid/icu/text/PluralRules;->forLocale(Landroid/icu/util/ULocale;Landroid/icu/text/PluralRules$PluralType;)Landroid/icu/text/PluralRules;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Landroid/icu/text/PluralFormat;->pluralRules:Landroid/icu/text/PluralRules;

    invoke-direct {p0}, Landroid/icu/text/PluralFormat;->resetPattern()V

    if-nez p4, :cond_1

    iget-object v0, p0, Landroid/icu/text/PluralFormat;->ulocale:Landroid/icu/util/ULocale;

    invoke-static {v0}, Landroid/icu/text/NumberFormat;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberFormat;

    move-result-object p4

    :cond_1
    iput-object p4, p0, Landroid/icu/text/PluralFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    new-instance v0, Landroid/icu/text/PluralFormat$PluralSelectorAdapter;

    invoke-direct {v0, p0, v1}, Landroid/icu/text/PluralFormat$PluralSelectorAdapter;-><init>(Landroid/icu/text/PluralFormat;Landroid/icu/text/PluralFormat$PluralSelectorAdapter;)V

    iput-object v0, p0, Landroid/icu/text/PluralFormat;->pluralRulesWrapper:Landroid/icu/text/PluralFormat$PluralSelectorAdapter;

    iput-object v1, p0, Landroid/icu/text/PluralFormat;->parsedValues:Ljava/util/Map;

    iget-object v0, p0, Landroid/icu/text/PluralFormat;->pattern:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/icu/text/PluralFormat;->pattern:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/icu/text/PluralFormat;->applyPattern(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private resetPattern()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/text/PluralFormat;->pattern:Ljava/lang/String;

    iget-object v0, p0, Landroid/icu/text/PluralFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/icu/text/PluralFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v0}, Landroid/icu/text/MessagePattern;->clear()V

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/icu/text/PluralFormat;->offset:D

    return-void
.end method


# virtual methods
.method public applyPattern(Ljava/lang/String;)V
    .locals 4

    iput-object p1, p0, Landroid/icu/text/PluralFormat;->pattern:Ljava/lang/String;

    iget-object v1, p0, Landroid/icu/text/PluralFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    if-nez v1, :cond_0

    new-instance v1, Landroid/icu/text/MessagePattern;

    invoke-direct {v1}, Landroid/icu/text/MessagePattern;-><init>()V

    iput-object v1, p0, Landroid/icu/text/PluralFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/icu/text/PluralFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v1, p1}, Landroid/icu/text/MessagePattern;->parsePluralStyle(Ljava/lang/String;)Landroid/icu/text/MessagePattern;

    iget-object v1, p0, Landroid/icu/text/PluralFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/icu/text/MessagePattern;->getPluralOffset(I)D

    move-result-wide v2

    iput-wide v2, p0, Landroid/icu/text/PluralFormat;->offset:D
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0}, Landroid/icu/text/PluralFormat;->resetPattern()V

    throw v0
.end method

.method public equals(Landroid/icu/text/PluralFormat;)Z
    .locals 1

    invoke-virtual {p0, p1}, Landroid/icu/text/PluralFormat;->equals(Ljava/lang/Object;)Z

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

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    :cond_1
    return v1

    :cond_2
    move-object v0, p1

    check-cast v0, Landroid/icu/text/PluralFormat;

    iget-object v2, p0, Landroid/icu/text/PluralFormat;->ulocale:Landroid/icu/util/ULocale;

    iget-object v3, v0, Landroid/icu/text/PluralFormat;->ulocale:Landroid/icu/util/ULocale;

    invoke-static {v2, v3}, Landroid/icu/impl/Utility;->objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/icu/text/PluralFormat;->pluralRules:Landroid/icu/text/PluralRules;

    iget-object v3, v0, Landroid/icu/text/PluralFormat;->pluralRules:Landroid/icu/text/PluralRules;

    invoke-static {v2, v3}, Landroid/icu/impl/Utility;->objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/icu/text/PluralFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    iget-object v3, v0, Landroid/icu/text/PluralFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-static {v2, v3}, Landroid/icu/impl/Utility;->objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v1, p0, Landroid/icu/text/PluralFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    iget-object v2, v0, Landroid/icu/text/PluralFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    invoke-static {v1, v2}, Landroid/icu/impl/Utility;->objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    :cond_3
    return v1
.end method

.method public final format(D)Ljava/lang/String;
    .locals 1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Landroid/icu/text/PluralFormat;->format(Ljava/lang/Number;D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 4

    instance-of v1, p1, Ljava/lang/Number;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\' is not a Number"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    move-object v0, p1

    nop

    nop

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-direct {p0, v0, v2, v3}, Landroid/icu/text/PluralFormat;->format(Ljava/lang/Number;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-object p2
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Landroid/icu/text/PluralFormat;->pluralRules:Landroid/icu/text/PluralRules;

    invoke-virtual {v0}, Landroid/icu/text/PluralRules;->hashCode()I

    move-result v0

    iget-object v1, p0, Landroid/icu/text/PluralFormat;->parsedValues:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method parseType(Ljava/lang/String;Landroid/icu/text/RbnfLenientScanner;Ljava/text/FieldPosition;)Ljava/lang/String;
    .locals 18

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/icu/text/PluralFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/icu/text/PluralFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v15}, Landroid/icu/text/MessagePattern;->countParts()I

    move-result v15

    if-nez v15, :cond_1

    :cond_0
    const/4 v15, -0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    const/4 v15, -0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Ljava/text/FieldPosition;->setEndIndex(I)V

    const/4 v15, 0x0

    return-object v15

    :cond_1
    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/icu/text/PluralFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v15}, Landroid/icu/text/MessagePattern;->countParts()I

    move-result v2

    invoke-virtual/range {p3 .. p3}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result v14

    if-gez v14, :cond_2

    const/4 v14, 0x0

    :cond_2
    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v6, -0x1

    move v9, v8

    :cond_3
    :goto_0
    if-ge v9, v2, :cond_9

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/icu/text/PluralFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    add-int/lit8 v8, v9, 0x1

    invoke-virtual {v15, v9}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object v11

    invoke-virtual {v11}, Landroid/icu/text/MessagePattern$Part;->getType()Landroid/icu/text/MessagePattern$Part$Type;

    move-result-object v15

    sget-object v16, Landroid/icu/text/MessagePattern$Part$Type;->ARG_SELECTOR:Landroid/icu/text/MessagePattern$Part$Type;

    move-object/from16 v0, v16

    if-eq v15, v0, :cond_4

    move v9, v8

    goto :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/icu/text/PluralFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    add-int/lit8 v9, v8, 0x1

    invoke-virtual {v15, v8}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object v12

    invoke-virtual {v12}, Landroid/icu/text/MessagePattern$Part;->getType()Landroid/icu/text/MessagePattern$Part$Type;

    move-result-object v15

    sget-object v16, Landroid/icu/text/MessagePattern$Part$Type;->MSG_START:Landroid/icu/text/MessagePattern$Part$Type;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_3

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/icu/text/PluralFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    add-int/lit8 v8, v9, 0x1

    invoke-virtual {v15, v9}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object v10

    invoke-virtual {v10}, Landroid/icu/text/MessagePattern$Part;->getType()Landroid/icu/text/MessagePattern$Part$Type;

    move-result-object v15

    sget-object v16, Landroid/icu/text/MessagePattern$Part$Type;->MSG_LIMIT:Landroid/icu/text/MessagePattern$Part$Type;

    move-object/from16 v0, v16

    if-eq v15, v0, :cond_5

    move v9, v8

    goto :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/icu/text/PluralFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v12}, Landroid/icu/text/MessagePattern$Part;->getLimit()I

    move-result v16

    invoke-virtual {v10}, Landroid/icu/text/MessagePattern$Part;->getIndex()I

    move-result v17

    invoke-virtual/range {v15 .. v17}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    if-eqz p2, :cond_8

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-interface {v0, v1, v3, v14}, Landroid/icu/text/RbnfLenientScanner;->findText(Ljava/lang/String;Ljava/lang/String;I)[I

    move-result-object v13

    const/4 v15, 0x0

    aget v4, v13, v15

    :goto_1
    if-ltz v4, :cond_7

    if-lt v4, v6, :cond_7

    if-eqz v7, :cond_6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v16

    move/from16 v0, v16

    if-le v15, v0, :cond_7

    :cond_6
    move v6, v4

    move-object v7, v3

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/icu/text/PluralFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v12}, Landroid/icu/text/MessagePattern$Part;->getLimit()I

    move-result v16

    invoke-virtual {v10}, Landroid/icu/text/MessagePattern$Part;->getIndex()I

    move-result v17

    invoke-virtual/range {v15 .. v17}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    :cond_7
    move v9, v8

    goto/16 :goto_0

    :cond_8
    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    goto :goto_1

    :cond_9
    if-eqz v5, :cond_a

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v15

    add-int/2addr v15, v6

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Ljava/text/FieldPosition;->setEndIndex(I)V

    return-object v5

    :cond_a
    const/4 v15, -0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    const/4 v15, -0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Ljava/text/FieldPosition;->setEndIndex(I)V

    const/4 v15, 0x0

    return-object v15
.end method

.method public setLocale(Landroid/icu/util/ULocale;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v1, 0x0

    if-nez p1, :cond_0

    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object p1

    :cond_0
    sget-object v0, Landroid/icu/text/PluralRules$PluralType;->CARDINAL:Landroid/icu/text/PluralRules$PluralType;

    invoke-direct {p0, v1, v0, p1, v1}, Landroid/icu/text/PluralFormat;->init(Landroid/icu/text/PluralRules;Landroid/icu/text/PluralRules$PluralType;Landroid/icu/util/ULocale;Landroid/icu/text/NumberFormat;)V

    return-void
.end method

.method public setNumberFormat(Landroid/icu/text/NumberFormat;)V
    .locals 0

    iput-object p1, p0, Landroid/icu/text/PluralFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    return-void
.end method

.method public toPattern()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/PluralFormat;->pattern:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "locale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/icu/text/PluralFormat;->ulocale:Landroid/icu/util/ULocale;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", rules=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/icu/text/PluralFormat;->pluralRules:Landroid/icu/text/PluralRules;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", pattern=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/icu/text/PluralFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", format=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/icu/text/PluralFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
