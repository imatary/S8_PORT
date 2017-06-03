.class public Landroid/icu/text/PluralRules;
.super Ljava/lang/Object;
.source "PluralRules.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/PluralRules$1;,
        Landroid/icu/text/PluralRules$AndConstraint;,
        Landroid/icu/text/PluralRules$BinaryConstraint;,
        Landroid/icu/text/PluralRules$Constraint;,
        Landroid/icu/text/PluralRules$Factory;,
        Landroid/icu/text/PluralRules$FixedDecimal;,
        Landroid/icu/text/PluralRules$FixedDecimalRange;,
        Landroid/icu/text/PluralRules$FixedDecimalSamples;,
        Landroid/icu/text/PluralRules$KeywordStatus;,
        Landroid/icu/text/PluralRules$Operand;,
        Landroid/icu/text/PluralRules$OrConstraint;,
        Landroid/icu/text/PluralRules$PluralType;,
        Landroid/icu/text/PluralRules$RangeConstraint;,
        Landroid/icu/text/PluralRules$Rule;,
        Landroid/icu/text/PluralRules$RuleList;,
        Landroid/icu/text/PluralRules$SampleType;,
        Landroid/icu/text/PluralRules$SimpleTokenizer;
    }
.end annotation


# static fields
.field private static final synthetic -android-icu-text-PluralRules$SampleTypeSwitchesValues:[I = null

.field static final ALLOWED_ID:Landroid/icu/text/UnicodeSet;

.field static final AND_SEPARATED:Ljava/util/regex/Pattern;

.field static final AT_SEPARATED:Ljava/util/regex/Pattern;

.field public static final CATEGORY_SEPARATOR:Ljava/lang/String; = ";  "
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field static final COMMA_SEPARATED:Ljava/util/regex/Pattern;

.field public static final DEFAULT:Landroid/icu/text/PluralRules;

.field private static final DEFAULT_RULE:Landroid/icu/text/PluralRules$Rule;

.field static final DOTDOT_SEPARATED:Ljava/util/regex/Pattern;

.field public static final KEYWORD_FEW:Ljava/lang/String; = "few"

.field public static final KEYWORD_MANY:Ljava/lang/String; = "many"

.field public static final KEYWORD_ONE:Ljava/lang/String; = "one"

.field public static final KEYWORD_OTHER:Ljava/lang/String; = "other"

.field public static final KEYWORD_RULE_SEPARATOR:Ljava/lang/String; = ": "
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final KEYWORD_TWO:Ljava/lang/String; = "two"

.field public static final KEYWORD_ZERO:Ljava/lang/String; = "zero"

.field private static final NO_CONSTRAINT:Landroid/icu/text/PluralRules$Constraint;

.field public static final NO_UNIQUE_VALUE:D = -0.00123456777

.field static final OR_SEPARATED:Ljava/util/regex/Pattern;

.field static final SEMI_SEPARATED:Ljava/util/regex/Pattern;

.field static final TILDE_SEPARATED:Ljava/util/regex/Pattern;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final transient keywords:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final rules:Landroid/icu/text/PluralRules$RuleList;


# direct methods
.method private static synthetic -getandroid-icu-text-PluralRules$SampleTypeSwitchesValues()[I
    .locals 3

    sget-object v0, Landroid/icu/text/PluralRules;->-android-icu-text-PluralRules$SampleTypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Landroid/icu/text/PluralRules;->-android-icu-text-PluralRules$SampleTypeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Landroid/icu/text/PluralRules$SampleType;->values()[Landroid/icu/text/PluralRules$SampleType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Landroid/icu/text/PluralRules$SampleType;->DECIMAL:Landroid/icu/text/PluralRules$SampleType;

    invoke-virtual {v1}, Landroid/icu/text/PluralRules$SampleType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v1, Landroid/icu/text/PluralRules$SampleType;->INTEGER:Landroid/icu/text/PluralRules$SampleType;

    invoke-virtual {v1}, Landroid/icu/text/PluralRules$SampleType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    sput-object v0, Landroid/icu/text/PluralRules;->-android-icu-text-PluralRules$SampleTypeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -wrap0(Ljava/lang/String;)Landroid/icu/text/PluralRules$Rule;
    .locals 1

    invoke-static {p0}, Landroid/icu/text/PluralRules;->parseRule(Ljava/lang/String;)Landroid/icu/text/PluralRules$Rule;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Ljava/lang/StringBuilder;DDZ)V
    .locals 1

    invoke-static/range {p0 .. p5}, Landroid/icu/text/PluralRules;->addRange(Ljava/lang/StringBuilder;DDZ)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Landroid/icu/text/UnicodeSet;

    const-string/jumbo v1, "[a-z]"

    invoke-direct {v0, v1}, Landroid/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    move-result-object v0

    sput-object v0, Landroid/icu/text/PluralRules;->ALLOWED_ID:Landroid/icu/text/UnicodeSet;

    new-instance v0, Landroid/icu/text/PluralRules$1;

    invoke-direct {v0}, Landroid/icu/text/PluralRules$1;-><init>()V

    sput-object v0, Landroid/icu/text/PluralRules;->NO_CONSTRAINT:Landroid/icu/text/PluralRules$Constraint;

    new-instance v0, Landroid/icu/text/PluralRules$Rule;

    const-string/jumbo v1, "other"

    sget-object v2, Landroid/icu/text/PluralRules;->NO_CONSTRAINT:Landroid/icu/text/PluralRules$Constraint;

    invoke-direct {v0, v1, v2, v3, v3}, Landroid/icu/text/PluralRules$Rule;-><init>(Ljava/lang/String;Landroid/icu/text/PluralRules$Constraint;Landroid/icu/text/PluralRules$FixedDecimalSamples;Landroid/icu/text/PluralRules$FixedDecimalSamples;)V

    sput-object v0, Landroid/icu/text/PluralRules;->DEFAULT_RULE:Landroid/icu/text/PluralRules$Rule;

    new-instance v0, Landroid/icu/text/PluralRules;

    new-instance v1, Landroid/icu/text/PluralRules$RuleList;

    invoke-direct {v1, v3}, Landroid/icu/text/PluralRules$RuleList;-><init>(Landroid/icu/text/PluralRules$RuleList;)V

    sget-object v2, Landroid/icu/text/PluralRules;->DEFAULT_RULE:Landroid/icu/text/PluralRules$Rule;

    invoke-virtual {v1, v2}, Landroid/icu/text/PluralRules$RuleList;->addRule(Landroid/icu/text/PluralRules$Rule;)Landroid/icu/text/PluralRules$RuleList;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/icu/text/PluralRules;-><init>(Landroid/icu/text/PluralRules$RuleList;)V

    sput-object v0, Landroid/icu/text/PluralRules;->DEFAULT:Landroid/icu/text/PluralRules;

    const-string/jumbo v0, "\\s*\\Q\\E@\\s*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/icu/text/PluralRules;->AT_SEPARATED:Ljava/util/regex/Pattern;

    const-string/jumbo v0, "\\s*or\\s*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/icu/text/PluralRules;->OR_SEPARATED:Ljava/util/regex/Pattern;

    const-string/jumbo v0, "\\s*and\\s*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/icu/text/PluralRules;->AND_SEPARATED:Ljava/util/regex/Pattern;

    const-string/jumbo v0, "\\s*,\\s*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/icu/text/PluralRules;->COMMA_SEPARATED:Ljava/util/regex/Pattern;

    const-string/jumbo v0, "\\s*\\Q..\\E\\s*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/icu/text/PluralRules;->DOTDOT_SEPARATED:Ljava/util/regex/Pattern;

    const-string/jumbo v0, "\\s*~\\s*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/icu/text/PluralRules;->TILDE_SEPARATED:Ljava/util/regex/Pattern;

    const-string/jumbo v0, "\\s*;\\s*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/icu/text/PluralRules;->SEMI_SEPARATED:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>(Landroid/icu/text/PluralRules$RuleList;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/icu/text/PluralRules;->rules:Landroid/icu/text/PluralRules$RuleList;

    invoke-virtual {p1}, Landroid/icu/text/PluralRules$RuleList;->getKeywords()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/PluralRules;->keywords:Ljava/util/Set;

    return-void
.end method

.method private addConditional(Ljava/util/Set;Ljava/util/Set;D)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Landroid/icu/text/PluralRules$FixedDecimal;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Landroid/icu/text/PluralRules$FixedDecimal;",
            ">;D)Z"
        }
    .end annotation

    new-instance v1, Landroid/icu/text/PluralRules$FixedDecimal;

    invoke-direct {v1, p3, p4}, Landroid/icu/text/PluralRules$FixedDecimal;-><init>(D)V

    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {p2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-interface {p2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static addRange(Ljava/lang/StringBuilder;DDZ)V
    .locals 3

    if-eqz p5, :cond_0

    const-string/jumbo v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    cmpl-double v0, p1, p3

    if-nez v0, :cond_1

    invoke-static {p1, p2}, Landroid/icu/text/PluralRules;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    return-void

    :cond_1
    invoke-static {p1, p2}, Landroid/icu/text/PluralRules;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3, p4}, Landroid/icu/text/PluralRules;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static createRules(Ljava/lang/String;)Landroid/icu/text/PluralRules;
    .locals 2

    :try_start_0
    invoke-static {p0}, Landroid/icu/text/PluralRules;->parseDescription(Ljava/lang/String;)Landroid/icu/text/PluralRules;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return-object v1
.end method

.method public static forLocale(Landroid/icu/util/ULocale;)Landroid/icu/text/PluralRules;
    .locals 2

    invoke-static {}, Landroid/icu/text/PluralRules$Factory;->getDefaultFactory()Landroid/icu/impl/PluralRulesLoader;

    move-result-object v0

    sget-object v1, Landroid/icu/text/PluralRules$PluralType;->CARDINAL:Landroid/icu/text/PluralRules$PluralType;

    invoke-virtual {v0, p0, v1}, Landroid/icu/impl/PluralRulesLoader;->forLocale(Landroid/icu/util/ULocale;Landroid/icu/text/PluralRules$PluralType;)Landroid/icu/text/PluralRules;

    move-result-object v0

    return-object v0
.end method

.method public static forLocale(Landroid/icu/util/ULocale;Landroid/icu/text/PluralRules$PluralType;)Landroid/icu/text/PluralRules;
    .locals 1

    invoke-static {}, Landroid/icu/text/PluralRules$Factory;->getDefaultFactory()Landroid/icu/impl/PluralRulesLoader;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/icu/impl/PluralRulesLoader;->forLocale(Landroid/icu/util/ULocale;Landroid/icu/text/PluralRules$PluralType;)Landroid/icu/text/PluralRules;

    move-result-object v0

    return-object v0
.end method

.method public static forLocale(Ljava/util/Locale;)Landroid/icu/text/PluralRules;
    .locals 1

    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/text/PluralRules;->forLocale(Landroid/icu/util/ULocale;)Landroid/icu/text/PluralRules;

    move-result-object v0

    return-object v0
.end method

.method public static forLocale(Ljava/util/Locale;Landroid/icu/text/PluralRules$PluralType;)Landroid/icu/text/PluralRules;
    .locals 1

    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/icu/text/PluralRules;->forLocale(Landroid/icu/util/ULocale;Landroid/icu/text/PluralRules$PluralType;)Landroid/icu/text/PluralRules;

    move-result-object v0

    return-object v0
.end method

.method private static format(D)Ljava/lang/String;
    .locals 4

    double-to-long v0, p0

    long-to-double v2, v0

    cmpl-double v2, p0, v2

    if-nez v2, :cond_0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static getAvailableULocales()[Landroid/icu/util/ULocale;
    .locals 1

    invoke-static {}, Landroid/icu/text/PluralRules$Factory;->getDefaultFactory()Landroid/icu/impl/PluralRulesLoader;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/impl/PluralRulesLoader;->getAvailableULocales()[Landroid/icu/util/ULocale;

    move-result-object v0

    return-object v0
.end method

.method public static getFunctionalEquivalent(Landroid/icu/util/ULocale;[Z)Landroid/icu/util/ULocale;
    .locals 1

    invoke-static {}, Landroid/icu/text/PluralRules$Factory;->getDefaultFactory()Landroid/icu/impl/PluralRulesLoader;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/icu/impl/PluralRulesLoader;->getFunctionalEquivalent(Landroid/icu/util/ULocale;[Z)Landroid/icu/util/ULocale;

    move-result-object v0

    return-object v0
.end method

.method private static isValidKeyword(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Landroid/icu/text/PluralRules;->ALLOWED_ID:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0, p0}, Landroid/icu/text/UnicodeSet;->containsAll(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static nextToken([Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    array-length v0, p0

    if-ge p1, v0, :cond_0

    aget-object v0, p0, p1

    return-object v0

    :cond_0
    new-instance v0, Ljava/text/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "missing token at end of \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method private static parseConstraint(Ljava/lang/String;)Landroid/icu/text/PluralRules$Constraint;
    .locals 38
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const/16 v28, 0x0

    sget-object v35, Landroid/icu/text/PluralRules;->OR_SEPARATED:Ljava/util/regex/Pattern;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v25

    const/16 v22, 0x0

    :goto_0
    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v35, v0

    move/from16 v0, v22

    move/from16 v1, v35

    if-ge v0, v1, :cond_1f

    const/4 v4, 0x0

    sget-object v35, Landroid/icu/text/PluralRules;->AND_SEPARATED:Ljava/util/regex/Pattern;

    aget-object v36, v25, v22

    invoke-virtual/range {v35 .. v36}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v16

    const/16 v23, 0x0

    :goto_1
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v35, v0

    move/from16 v0, v23

    move/from16 v1, v35

    if-ge v0, v1, :cond_1d

    sget-object v5, Landroid/icu/text/PluralRules;->NO_CONSTRAINT:Landroid/icu/text/PluralRules$Constraint;

    aget-object v35, v16, v23

    invoke-virtual/range {v35 .. v35}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/icu/text/PluralRules$SimpleTokenizer;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v31

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v9, 0x1

    const-wide/high16 v10, 0x43e0000000000000L    # 9.223372036854776E18

    const-wide/high16 v12, -0x3c20000000000000L    # -9.223372036854776E18

    const/4 v14, 0x0

    const/16 v35, 0x0

    const/16 v33, 0x1

    aget-object v30, v31, v35

    const/16 v19, 0x0

    :try_start_0
    invoke-static/range {v30 .. v30}, Landroid/icu/text/PluralRules$FixedDecimal;->getOperand(Ljava/lang/String;)Landroid/icu/text/PluralRules$Operand;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v35, v0

    move/from16 v0, v33

    move/from16 v1, v35

    if-ge v0, v1, :cond_19

    add-int/lit8 v34, v33, 0x1

    aget-object v30, v31, v33

    const-string/jumbo v35, "mod"

    move-object/from16 v0, v35

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-nez v35, :cond_0

    const-string/jumbo v35, "%"

    move-object/from16 v0, v35

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_20

    :cond_0
    add-int/lit8 v33, v34, 0x1

    aget-object v35, v31, v34

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v34, v33, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v33

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Landroid/icu/text/PluralRules;->nextToken([Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v30

    move/from16 v33, v34

    :goto_2
    const-string/jumbo v35, "not"

    move-object/from16 v0, v35

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_2

    if-eqz v7, :cond_1

    const/4 v7, 0x0

    :goto_3
    add-int/lit8 v34, v33, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v33

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Landroid/icu/text/PluralRules;->nextToken([Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v30

    const-string/jumbo v35, "="

    move-object/from16 v0, v35

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_4

    move-object/from16 v0, v30

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Landroid/icu/text/PluralRules;->unexpected(Ljava/lang/String;Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v35

    throw v35

    :catch_0
    move-exception v18

    move-object/from16 v0, v30

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Landroid/icu/text/PluralRules;->unexpected(Ljava/lang/String;Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v35

    throw v35

    :cond_1
    const/4 v7, 0x1

    goto :goto_3

    :cond_2
    const-string/jumbo v35, "!"

    move-object/from16 v0, v35

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_5

    if-eqz v7, :cond_3

    const/4 v7, 0x0

    :goto_4
    add-int/lit8 v34, v33, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v33

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Landroid/icu/text/PluralRules;->nextToken([Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v30

    const-string/jumbo v35, "="

    move-object/from16 v0, v35

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-nez v35, :cond_4

    move-object/from16 v0, v30

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Landroid/icu/text/PluralRules;->unexpected(Ljava/lang/String;Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v35

    throw v35

    :cond_3
    const/4 v7, 0x1

    goto :goto_4

    :cond_4
    move/from16 v33, v34

    :cond_5
    const-string/jumbo v35, "is"

    move-object/from16 v0, v35

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-nez v35, :cond_6

    const-string/jumbo v35, "in"

    move-object/from16 v0, v35

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-nez v35, :cond_6

    const-string/jumbo v35, "="

    move-object/from16 v0, v35

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_b

    :cond_6
    const-string/jumbo v35, "is"

    move-object/from16 v0, v35

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_7

    if-eqz v7, :cond_a

    :cond_7
    add-int/lit8 v34, v33, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v33

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Landroid/icu/text/PluralRules;->nextToken([Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v30

    move/from16 v33, v34

    :goto_5
    const-string/jumbo v35, "not"

    move-object/from16 v0, v35

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_9

    if-nez v19, :cond_8

    if-eqz v7, :cond_d

    :cond_8
    if-eqz v7, :cond_e

    const/4 v7, 0x0

    :goto_6
    add-int/lit8 v34, v33, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v33

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Landroid/icu/text/PluralRules;->nextToken([Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v30

    move/from16 v33, v34

    :cond_9
    new-instance v32, Ljava/util/ArrayList;

    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    :goto_7
    invoke-static/range {v30 .. v30}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v26

    move-wide/from16 v20, v26

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v35, v0

    move/from16 v0, v33

    move/from16 v1, v35

    if-ge v0, v1, :cond_11

    add-int/lit8 v34, v33, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v33

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Landroid/icu/text/PluralRules;->nextToken([Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v30

    const-string/jumbo v35, "."

    move-object/from16 v0, v30

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_10

    add-int/lit8 v33, v34, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v34

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Landroid/icu/text/PluralRules;->nextToken([Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v30

    const-string/jumbo v35, "."

    move-object/from16 v0, v30

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-nez v35, :cond_f

    move-object/from16 v0, v30

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Landroid/icu/text/PluralRules;->unexpected(Ljava/lang/String;Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v35

    throw v35

    :cond_a
    move-object/from16 v0, v30

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Landroid/icu/text/PluralRules;->unexpected(Ljava/lang/String;Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v35

    throw v35

    :cond_b
    const-string/jumbo v35, "within"

    move-object/from16 v0, v35

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_c

    const/4 v9, 0x0

    add-int/lit8 v34, v33, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v33

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Landroid/icu/text/PluralRules;->nextToken([Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v30

    move/from16 v33, v34

    goto/16 :goto_5

    :cond_c
    move-object/from16 v0, v30

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Landroid/icu/text/PluralRules;->unexpected(Ljava/lang/String;Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v35

    throw v35

    :cond_d
    move-object/from16 v0, v30

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Landroid/icu/text/PluralRules;->unexpected(Ljava/lang/String;Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v35

    throw v35

    :cond_e
    const/4 v7, 0x1

    goto/16 :goto_6

    :cond_f
    add-int/lit8 v34, v33, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v33

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Landroid/icu/text/PluralRules;->nextToken([Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v20

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v35, v0

    move/from16 v0, v34

    move/from16 v1, v35

    if-ge v0, v1, :cond_12

    add-int/lit8 v33, v34, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v34

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Landroid/icu/text/PluralRules;->nextToken([Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v30

    const-string/jumbo v35, ","

    move-object/from16 v0, v30

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-nez v35, :cond_11

    move-object/from16 v0, v30

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Landroid/icu/text/PluralRules;->unexpected(Ljava/lang/String;Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v35

    throw v35

    :cond_10
    const-string/jumbo v35, ","

    move-object/from16 v0, v30

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-nez v35, :cond_12

    move-object/from16 v0, v30

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Landroid/icu/text/PluralRules;->unexpected(Ljava/lang/String;Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v35

    throw v35

    :cond_11
    move/from16 v34, v33

    :cond_12
    cmp-long v35, v26, v20

    if-lez v35, :cond_13

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v35

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string/jumbo v36, "~"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Landroid/icu/text/PluralRules;->unexpected(Ljava/lang/String;Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v35

    throw v35

    :cond_13
    if-eqz v6, :cond_14

    int-to-long v0, v6

    move-wide/from16 v36, v0

    cmp-long v35, v20, v36

    if-ltz v35, :cond_14

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v35

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string/jumbo v36, ">mod="

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Landroid/icu/text/PluralRules;->unexpected(Ljava/lang/String;Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v35

    throw v35

    :cond_14
    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v35

    move-object/from16 v0, v32

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v35

    move-object/from16 v0, v32

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-wide/from16 v0, v26

    long-to-double v0, v0

    move-wide/from16 v36, v0

    move-wide/from16 v0, v36

    invoke-static {v10, v11, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v10

    move-wide/from16 v0, v20

    long-to-double v0, v0

    move-wide/from16 v36, v0

    move-wide/from16 v0, v36

    invoke-static {v12, v13, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v12

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v35, v0

    move/from16 v0, v34

    move/from16 v1, v35

    if-lt v0, v1, :cond_15

    const-string/jumbo v35, ","

    move-object/from16 v0, v30

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_16

    move-object/from16 v0, v30

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Landroid/icu/text/PluralRules;->unexpected(Ljava/lang/String;Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v35

    throw v35

    :cond_15
    add-int/lit8 v33, v34, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v34

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Landroid/icu/text/PluralRules;->nextToken([Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v30

    goto/16 :goto_7

    :cond_16
    invoke-interface/range {v32 .. v32}, Ljava/util/List;->size()I

    move-result v35

    const/16 v36, 0x2

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_1a

    const/4 v14, 0x0

    :cond_17
    cmpl-double v35, v10, v12

    if-eqz v35, :cond_18

    if-eqz v19, :cond_18

    if-eqz v7, :cond_1b

    :cond_18
    new-instance v5, Landroid/icu/text/PluralRules$RangeConstraint;

    invoke-direct/range {v5 .. v14}, Landroid/icu/text/PluralRules$RangeConstraint;-><init>(IZLandroid/icu/text/PluralRules$Operand;ZDD[J)V

    move/from16 v33, v34

    :cond_19
    if-nez v4, :cond_1c

    move-object v4, v5

    :goto_8
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_1

    :cond_1a
    invoke-interface/range {v32 .. v32}, Ljava/util/List;->size()I

    move-result v35

    move/from16 v0, v35

    new-array v14, v0, [J

    const/16 v24, 0x0

    :goto_9
    array-length v0, v14

    move/from16 v35, v0

    move/from16 v0, v24

    move/from16 v1, v35

    if-ge v0, v1, :cond_17

    move-object/from16 v0, v32

    move/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/lang/Long;

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Long;->longValue()J

    move-result-wide v36

    aput-wide v36, v14, v24

    add-int/lit8 v24, v24, 0x1

    goto :goto_9

    :cond_1b
    const-string/jumbo v35, "is not <range>"

    move-object/from16 v0, v35

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Landroid/icu/text/PluralRules;->unexpected(Ljava/lang/String;Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v35

    throw v35

    :cond_1c
    new-instance v15, Landroid/icu/text/PluralRules$AndConstraint;

    invoke-direct {v15, v4, v5}, Landroid/icu/text/PluralRules$AndConstraint;-><init>(Landroid/icu/text/PluralRules$Constraint;Landroid/icu/text/PluralRules$Constraint;)V

    move-object v4, v15

    goto :goto_8

    :cond_1d
    if-nez v28, :cond_1e

    move-object/from16 v28, v4

    :goto_a
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_0

    :cond_1e
    new-instance v29, Landroid/icu/text/PluralRules$OrConstraint;

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-direct {v0, v1, v4}, Landroid/icu/text/PluralRules$OrConstraint;-><init>(Landroid/icu/text/PluralRules$Constraint;Landroid/icu/text/PluralRules$Constraint;)V

    move-object/from16 v28, v29

    goto :goto_a

    :cond_1f
    return-object v28

    :cond_20
    move/from16 v33, v34

    goto/16 :goto_2
.end method

.method public static parseDescription(Ljava/lang/String;)Landroid/icu/text/PluralRules;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/icu/text/PluralRules;->DEFAULT:Landroid/icu/text/PluralRules;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/icu/text/PluralRules;

    invoke-static {p0}, Landroid/icu/text/PluralRules;->parseRuleChain(Ljava/lang/String;)Landroid/icu/text/PluralRules$RuleList;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/icu/text/PluralRules;-><init>(Landroid/icu/text/PluralRules$RuleList;)V

    goto :goto_0
.end method

.method private static parseRule(Ljava/lang/String;)Landroid/icu/text/PluralRules$Rule;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_0

    sget-object v8, Landroid/icu/text/PluralRules;->DEFAULT_RULE:Landroid/icu/text/PluralRules$Rule;

    return-object v8

    :cond_0
    sget-object v10, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const/16 v10, 0x3a

    invoke-virtual {p0, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    const/4 v10, -0x1

    if-ne v7, v10, :cond_1

    new-instance v8, Ljava/text/ParseException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "missing \':\' in rule description \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10, v9}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v8

    :cond_1
    invoke-virtual {p0, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/icu/text/PluralRules;->isValidKeyword(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2

    new-instance v8, Ljava/text/ParseException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "keyword \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " is not valid"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10, v9}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v8

    :cond_2
    add-int/lit8 v10, v7, 0x1

    invoke-virtual {p0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    sget-object v10, Landroid/icu/text/PluralRules;->AT_SEPARATED:Ljava/util/regex/Pattern;

    invoke-virtual {v10, p0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    array-length v10, v1

    packed-switch v10, :pswitch_data_0

    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Too many samples in "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    :pswitch_0
    aget-object v10, v1, v8

    invoke-static {v10}, Landroid/icu/text/PluralRules$FixedDecimalSamples;->parse(Ljava/lang/String;)Landroid/icu/text/PluralRules$FixedDecimalSamples;

    move-result-object v3

    iget-object v10, v3, Landroid/icu/text/PluralRules$FixedDecimalSamples;->sampleType:Landroid/icu/text/PluralRules$SampleType;

    sget-object v11, Landroid/icu/text/PluralRules$SampleType;->DECIMAL:Landroid/icu/text/PluralRules$SampleType;

    if-ne v10, v11, :cond_3

    move-object v2, v3

    const/4 v3, 0x0

    :cond_3
    :pswitch_1
    if-eqz v6, :cond_5

    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "Ill-formed samples\u2014\'@\' characters."

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    :pswitch_2
    aget-object v10, v1, v8

    invoke-static {v10}, Landroid/icu/text/PluralRules$FixedDecimalSamples;->parse(Ljava/lang/String;)Landroid/icu/text/PluralRules$FixedDecimalSamples;

    move-result-object v3

    const/4 v10, 0x2

    aget-object v10, v1, v10

    invoke-static {v10}, Landroid/icu/text/PluralRules$FixedDecimalSamples;->parse(Ljava/lang/String;)Landroid/icu/text/PluralRules$FixedDecimalSamples;

    move-result-object v2

    iget-object v10, v3, Landroid/icu/text/PluralRules$FixedDecimalSamples;->sampleType:Landroid/icu/text/PluralRules$SampleType;

    sget-object v11, Landroid/icu/text/PluralRules$SampleType;->INTEGER:Landroid/icu/text/PluralRules$SampleType;

    if-ne v10, v11, :cond_4

    iget-object v10, v2, Landroid/icu/text/PluralRules$FixedDecimalSamples;->sampleType:Landroid/icu/text/PluralRules$SampleType;

    sget-object v11, Landroid/icu/text/PluralRules$SampleType;->DECIMAL:Landroid/icu/text/PluralRules$SampleType;

    if-eq v10, v11, :cond_3

    :cond_4
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Must have @integer then @decimal in "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_5
    const-string/jumbo v10, "other"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    aget-object v10, v1, v9

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_6

    :goto_0
    if-eq v4, v8, :cond_7

    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "The keyword \'other\' must have no constraints, just samples."

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_6
    move v8, v9

    goto :goto_0

    :cond_7
    if-eqz v4, :cond_8

    sget-object v0, Landroid/icu/text/PluralRules;->NO_CONSTRAINT:Landroid/icu/text/PluralRules$Constraint;

    :goto_1
    new-instance v8, Landroid/icu/text/PluralRules$Rule;

    invoke-direct {v8, v5, v0, v3, v2}, Landroid/icu/text/PluralRules$Rule;-><init>(Ljava/lang/String;Landroid/icu/text/PluralRules$Constraint;Landroid/icu/text/PluralRules$FixedDecimalSamples;Landroid/icu/text/PluralRules$FixedDecimalSamples;)V

    return-object v8

    :cond_8
    aget-object v8, v1, v9

    invoke-static {v8}, Landroid/icu/text/PluralRules;->parseConstraint(Ljava/lang/String;)Landroid/icu/text/PluralRules$Constraint;

    move-result-object v0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private static parseRuleChain(Ljava/lang/String;)Landroid/icu/text/PluralRules$RuleList;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v4, 0x0

    new-instance v1, Landroid/icu/text/PluralRules$RuleList;

    invoke-direct {v1, v4}, Landroid/icu/text/PluralRules$RuleList;-><init>(Landroid/icu/text/PluralRules$RuleList;)V

    const-string/jumbo v4, ";"

    invoke-virtual {p0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    sget-object v4, Landroid/icu/text/PluralRules;->SEMI_SEPARATED:Ljava/util/regex/Pattern;

    invoke-virtual {v4, p0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x0

    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_3

    aget-object v4, v3, v0

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/icu/text/PluralRules;->parseRule(Ljava/lang/String;)Landroid/icu/text/PluralRules$Rule;

    move-result-object v2

    invoke-static {v1}, Landroid/icu/text/PluralRules$RuleList;->-get0(Landroid/icu/text/PluralRules$RuleList;)Z

    move-result v7

    invoke-static {v2}, Landroid/icu/text/PluralRules$Rule;->-get1(Landroid/icu/text/PluralRules$Rule;)Landroid/icu/text/PluralRules$FixedDecimalSamples;

    move-result-object v4

    if-nez v4, :cond_1

    invoke-static {v2}, Landroid/icu/text/PluralRules$Rule;->-get0(Landroid/icu/text/PluralRules$Rule;)Landroid/icu/text/PluralRules$FixedDecimalSamples;

    move-result-object v4

    if-eqz v4, :cond_2

    :cond_1
    move v4, v5

    :goto_1
    or-int/2addr v4, v7

    invoke-static {v1, v4}, Landroid/icu/text/PluralRules$RuleList;->-set0(Landroid/icu/text/PluralRules$RuleList;Z)Z

    invoke-virtual {v1, v2}, Landroid/icu/text/PluralRules$RuleList;->addRule(Landroid/icu/text/PluralRules$Rule;)Landroid/icu/text/PluralRules$RuleList;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v4, v6

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Landroid/icu/text/PluralRules$RuleList;->finish()Landroid/icu/text/PluralRules$RuleList;

    move-result-object v4

    return-object v4
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    new-instance v0, Ljava/io/NotSerializableException;

    invoke-direct {v0}, Ljava/io/NotSerializableException;-><init>()V

    throw v0
.end method

.method private static unexpected(Ljava/lang/String;Ljava/lang/String;)Ljava/text/ParseException;
    .locals 3

    new-instance v0, Ljava/text/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unexpected token \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\' in \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/NotSerializableException;

    invoke-direct {v0}, Ljava/io/NotSerializableException;-><init>()V

    throw v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    new-instance v0, Landroid/icu/text/PluralRulesSerialProxy;

    invoke-virtual {p0}, Landroid/icu/text/PluralRules;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/icu/text/PluralRulesSerialProxy;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public addSample(Ljava/lang/String;Ljava/lang/Number;ILjava/util/Set;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Number;",
            "I",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Double;",
            ">;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v4, 0x0

    instance-of v1, p2, Landroid/icu/text/PluralRules$FixedDecimal;

    if-eqz v1, :cond_0

    move-object v1, p2

    check-cast v1, Landroid/icu/text/PluralRules$FixedDecimal;

    invoke-virtual {p0, v1}, Landroid/icu/text/PluralRules;->select(Landroid/icu/text/PluralRules$FixedDecimal;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {p4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 p3, p3, -0x1

    if-gez p3, :cond_1

    return v4

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Landroid/icu/text/PluralRules;->select(D)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public compareTo(Landroid/icu/text/PluralRules;)I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/icu/text/PluralRules;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/icu/text/PluralRules;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public computeLimited(Ljava/lang/String;Landroid/icu/text/PluralRules$SampleType;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/icu/text/PluralRules;->rules:Landroid/icu/text/PluralRules$RuleList;

    invoke-virtual {v0, p1, p2}, Landroid/icu/text/PluralRules$RuleList;->computeLimited(Ljava/lang/String;Landroid/icu/text/PluralRules$SampleType;)Z

    move-result v0

    return v0
.end method

.method public equals(Landroid/icu/text/PluralRules;)Z
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/icu/text/PluralRules;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/icu/text/PluralRules;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Landroid/icu/text/PluralRules;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/icu/text/PluralRules;

    invoke-virtual {p0, p1}, Landroid/icu/text/PluralRules;->equals(Landroid/icu/text/PluralRules;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAllKeywordValues(Ljava/lang/String;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    sget-object v0, Landroid/icu/text/PluralRules$SampleType;->INTEGER:Landroid/icu/text/PluralRules$SampleType;

    invoke-virtual {p0, p1, v0}, Landroid/icu/text/PluralRules;->getAllKeywordValues(Ljava/lang/String;Landroid/icu/text/PluralRules$SampleType;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getAllKeywordValues(Ljava/lang/String;Landroid/icu/text/PluralRules$SampleType;)Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/icu/text/PluralRules$SampleType;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/icu/text/PluralRules;->isLimited(Ljava/lang/String;Landroid/icu/text/PluralRules$SampleType;)Z

    move-result v2

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/icu/text/PluralRules;->getSamples(Ljava/lang/String;Landroid/icu/text/PluralRules$SampleType;)Ljava/util/Collection;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_0
    return-object v1

    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    goto :goto_0
.end method

.method public getDecimalSamples(Ljava/lang/String;Landroid/icu/text/PluralRules$SampleType;)Landroid/icu/text/PluralRules$FixedDecimalSamples;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/icu/text/PluralRules;->rules:Landroid/icu/text/PluralRules$RuleList;

    invoke-virtual {v0, p1, p2}, Landroid/icu/text/PluralRules$RuleList;->getDecimalSamples(Ljava/lang/String;Landroid/icu/text/PluralRules$SampleType;)Landroid/icu/text/PluralRules$FixedDecimalSamples;

    move-result-object v0

    return-object v0
.end method

.method public getKeywordStatus(Ljava/lang/String;ILjava/util/Set;Landroid/icu/util/Output;)Landroid/icu/text/PluralRules$KeywordStatus;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Double;",
            ">;",
            "Landroid/icu/util/Output",
            "<",
            "Ljava/lang/Double;",
            ">;)",
            "Landroid/icu/text/PluralRules$KeywordStatus;"
        }
    .end annotation

    sget-object v5, Landroid/icu/text/PluralRules$SampleType;->INTEGER:Landroid/icu/text/PluralRules$SampleType;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/icu/text/PluralRules;->getKeywordStatus(Ljava/lang/String;ILjava/util/Set;Landroid/icu/util/Output;Landroid/icu/text/PluralRules$SampleType;)Landroid/icu/text/PluralRules$KeywordStatus;

    move-result-object v0

    return-object v0
.end method

.method public getKeywordStatus(Ljava/lang/String;ILjava/util/Set;Landroid/icu/util/Output;Landroid/icu/text/PluralRules$SampleType;)Landroid/icu/text/PluralRules$KeywordStatus;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Double;",
            ">;",
            "Landroid/icu/util/Output",
            "<",
            "Ljava/lang/Double;",
            ">;",
            "Landroid/icu/text/PluralRules$SampleType;",
            ")",
            "Landroid/icu/text/PluralRules$KeywordStatus;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p4, :cond_0

    const/4 v5, 0x0

    iput-object v5, p4, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    :cond_0
    iget-object v5, p0, Landroid/icu/text/PluralRules;->keywords:Ljava/util/Set;

    invoke-interface {v5, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    sget-object v5, Landroid/icu/text/PluralRules$KeywordStatus;->INVALID:Landroid/icu/text/PluralRules$KeywordStatus;

    return-object v5

    :cond_1
    invoke-virtual {p0, p1, p5}, Landroid/icu/text/PluralRules;->isLimited(Ljava/lang/String;Landroid/icu/text/PluralRules$SampleType;)Z

    move-result v5

    if-nez v5, :cond_2

    sget-object v5, Landroid/icu/text/PluralRules$KeywordStatus;->UNBOUNDED:Landroid/icu/text/PluralRules$KeywordStatus;

    return-object v5

    :cond_2
    invoke-virtual {p0, p1, p5}, Landroid/icu/text/PluralRules;->getSamples(Ljava/lang/String;Landroid/icu/text/PluralRules$SampleType;)Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v2

    if-nez p3, :cond_3

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p3

    :cond_3
    invoke-interface {p3}, Ljava/util/Set;->size()I

    move-result v5

    if-le v2, v5, :cond_6

    const/4 v5, 0x1

    if-ne v2, v5, :cond_5

    if-eqz p4, :cond_4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    iput-object v5, p4, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    :cond_4
    sget-object v5, Landroid/icu/text/PluralRules$KeywordStatus;->UNIQUE:Landroid/icu/text/PluralRules$KeywordStatus;

    return-object v5

    :cond_5
    sget-object v5, Landroid/icu/text/PluralRules$KeywordStatus;->BOUNDED:Landroid/icu/text/PluralRules$KeywordStatus;

    return-object v5

    :cond_6
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    int-to-double v8, p2

    sub-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_7
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v5

    if-nez v5, :cond_8

    sget-object v5, Landroid/icu/text/PluralRules$KeywordStatus;->SUPPRESSED:Landroid/icu/text/PluralRules$KeywordStatus;

    return-object v5

    :cond_8
    if-eqz p4, :cond_9

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_9

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    iput-object v5, p4, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    :cond_9
    const/4 v5, 0x1

    if-ne v2, v5, :cond_a

    sget-object v5, Landroid/icu/text/PluralRules$KeywordStatus;->UNIQUE:Landroid/icu/text/PluralRules$KeywordStatus;

    :goto_1
    return-object v5

    :cond_a
    sget-object v5, Landroid/icu/text/PluralRules$KeywordStatus;->BOUNDED:Landroid/icu/text/PluralRules$KeywordStatus;

    goto :goto_1
.end method

.method public getKeywords()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/icu/text/PluralRules;->keywords:Ljava/util/Set;

    return-object v0
.end method

.method public getRules(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/icu/text/PluralRules;->rules:Landroid/icu/text/PluralRules$RuleList;

    invoke-virtual {v0, p1}, Landroid/icu/text/PluralRules$RuleList;->getRules(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSamples(Ljava/lang/String;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    sget-object v0, Landroid/icu/text/PluralRules$SampleType;->INTEGER:Landroid/icu/text/PluralRules$SampleType;

    invoke-virtual {p0, p1, v0}, Landroid/icu/text/PluralRules;->getSamples(Ljava/lang/String;Landroid/icu/text/PluralRules$SampleType;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getSamples(Ljava/lang/String;Landroid/icu/text/PluralRules$SampleType;)Ljava/util/Collection;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/icu/text/PluralRules$SampleType;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v10, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, Landroid/icu/text/PluralRules;->keywords:Ljava/util/Set;

    invoke-interface {v5, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    return-object v4

    :cond_0
    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    iget-object v5, p0, Landroid/icu/text/PluralRules;->rules:Landroid/icu/text/PluralRules$RuleList;

    invoke-static {v5}, Landroid/icu/text/PluralRules$RuleList;->-get0(Landroid/icu/text/PluralRules$RuleList;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v4, p0, Landroid/icu/text/PluralRules;->rules:Landroid/icu/text/PluralRules$RuleList;

    invoke-virtual {v4, p1, p2}, Landroid/icu/text/PluralRules$RuleList;->getDecimalSamples(Ljava/lang/String;Landroid/icu/text/PluralRules$SampleType;)Landroid/icu/text/PluralRules$FixedDecimalSamples;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v4

    :goto_0
    return-object v4

    :cond_1
    invoke-virtual {v3, v2}, Landroid/icu/text/PluralRules$FixedDecimalSamples;->addSamples(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v4

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1, p2}, Landroid/icu/text/PluralRules;->isLimited(Ljava/lang/String;Landroid/icu/text/PluralRules$SampleType;)Z

    move-result v5

    if-eqz v5, :cond_3

    const v1, 0x7fffffff

    :goto_1
    invoke-static {}, Landroid/icu/text/PluralRules;->-getandroid-icu-text-PluralRules$SampleTypeSwitchesValues()[I

    move-result-object v5

    invoke-virtual {p2}, Landroid/icu/text/PluralRules$SampleType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    :goto_2
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v5

    if-nez v5, :cond_8

    :goto_3
    return-object v4

    :cond_3
    const/16 v1, 0x14

    goto :goto_1

    :pswitch_0
    const/4 v0, 0x0

    :goto_4
    const/16 v5, 0xc8

    if-ge v0, v5, :cond_4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, p1, v5, v1, v2}, Landroid/icu/text/PluralRules;->addSample(Ljava/lang/String;Ljava/lang/Number;ILjava/util/Set;)Z

    move-result v5

    if-nez v5, :cond_5

    :cond_4
    const v5, 0xf4240

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, p1, v5, v1, v2}, Landroid/icu/text/PluralRules;->addSample(Ljava/lang/String;Ljava/lang/Number;ILjava/util/Set;)Z

    goto :goto_2

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :pswitch_1
    const/4 v0, 0x0

    :goto_5
    const/16 v5, 0x7d0

    if-ge v0, v5, :cond_6

    new-instance v5, Landroid/icu/text/PluralRules$FixedDecimal;

    int-to-double v6, v0

    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    div-double/2addr v6, v8

    invoke-direct {v5, v6, v7, v10}, Landroid/icu/text/PluralRules$FixedDecimal;-><init>(DI)V

    invoke-virtual {p0, p1, v5, v1, v2}, Landroid/icu/text/PluralRules;->addSample(Ljava/lang/String;Ljava/lang/Number;ILjava/util/Set;)Z

    move-result v5

    if-nez v5, :cond_7

    :cond_6
    new-instance v5, Landroid/icu/text/PluralRules$FixedDecimal;

    const-wide v6, 0x412e848000000000L    # 1000000.0

    invoke-direct {v5, v6, v7, v10}, Landroid/icu/text/PluralRules$FixedDecimal;-><init>(DI)V

    invoke-virtual {p0, p1, v5, v1, v2}, Landroid/icu/text/PluralRules;->addSample(Ljava/lang/String;Ljava/lang/Number;ILjava/util/Set;)Z

    goto :goto_2

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_8
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v4

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getUniqueKeywordValue(Ljava/lang/String;)D
    .locals 4

    invoke-virtual {p0, p1}, Landroid/icu/text/PluralRules;->getAllKeywordValues(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    return-wide v2

    :cond_0
    const-wide v2, -0x40abc5d8f366e181L    # -0.00123456777

    return-wide v2
.end method

.method public hashCode()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/icu/text/PluralRules;->rules:Landroid/icu/text/PluralRules$RuleList;

    invoke-virtual {v0}, Landroid/icu/text/PluralRules$RuleList;->hashCode()I

    move-result v0

    return v0
.end method

.method public isLimited(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/icu/text/PluralRules;->rules:Landroid/icu/text/PluralRules$RuleList;

    sget-object v1, Landroid/icu/text/PluralRules$SampleType;->INTEGER:Landroid/icu/text/PluralRules$SampleType;

    invoke-virtual {v0, p1, v1}, Landroid/icu/text/PluralRules$RuleList;->isLimited(Ljava/lang/String;Landroid/icu/text/PluralRules$SampleType;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public isLimited(Ljava/lang/String;Landroid/icu/text/PluralRules$SampleType;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/icu/text/PluralRules;->rules:Landroid/icu/text/PluralRules$RuleList;

    invoke-virtual {v0, p1, p2}, Landroid/icu/text/PluralRules$RuleList;->isLimited(Ljava/lang/String;Landroid/icu/text/PluralRules$SampleType;)Z

    move-result v0

    return v0
.end method

.method public matches(Landroid/icu/text/PluralRules$FixedDecimal;Ljava/lang/String;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/icu/text/PluralRules;->rules:Landroid/icu/text/PluralRules$RuleList;

    invoke-virtual {v0, p1, p2}, Landroid/icu/text/PluralRules$RuleList;->select(Landroid/icu/text/PluralRules$FixedDecimal;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public select(D)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Landroid/icu/text/PluralRules;->rules:Landroid/icu/text/PluralRules$RuleList;

    new-instance v1, Landroid/icu/text/PluralRules$FixedDecimal;

    invoke-direct {v1, p1, p2}, Landroid/icu/text/PluralRules$FixedDecimal;-><init>(D)V

    invoke-virtual {v0, v1}, Landroid/icu/text/PluralRules$RuleList;->select(Landroid/icu/text/PluralRules$FixedDecimal;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public select(DIJ)Ljava/lang/String;
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v6, p0, Landroid/icu/text/PluralRules;->rules:Landroid/icu/text/PluralRules$RuleList;

    new-instance v0, Landroid/icu/text/PluralRules$FixedDecimal;

    move-wide v1, p1

    move v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/icu/text/PluralRules$FixedDecimal;-><init>(DIJ)V

    invoke-virtual {v6, v0}, Landroid/icu/text/PluralRules$RuleList;->select(Landroid/icu/text/PluralRules$FixedDecimal;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public select(Landroid/icu/text/PluralRules$FixedDecimal;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/icu/text/PluralRules;->rules:Landroid/icu/text/PluralRules$RuleList;

    invoke-virtual {v0, p1}, Landroid/icu/text/PluralRules$RuleList;->select(Landroid/icu/text/PluralRules$FixedDecimal;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/PluralRules;->rules:Landroid/icu/text/PluralRules$RuleList;

    invoke-virtual {v0}, Landroid/icu/text/PluralRules$RuleList;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
