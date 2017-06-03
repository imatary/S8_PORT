.class public final enum Landroid/icu/text/IDNA$Error;
.super Ljava/lang/Enum;
.source "IDNA.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/IDNA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Error"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/icu/text/IDNA$Error;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/text/IDNA$Error;

.field public static final enum BIDI:Landroid/icu/text/IDNA$Error;

.field public static final enum CONTEXTJ:Landroid/icu/text/IDNA$Error;

.field public static final enum CONTEXTO_DIGITS:Landroid/icu/text/IDNA$Error;

.field public static final enum CONTEXTO_PUNCTUATION:Landroid/icu/text/IDNA$Error;

.field public static final enum DISALLOWED:Landroid/icu/text/IDNA$Error;

.field public static final enum DOMAIN_NAME_TOO_LONG:Landroid/icu/text/IDNA$Error;

.field public static final enum EMPTY_LABEL:Landroid/icu/text/IDNA$Error;

.field public static final enum HYPHEN_3_4:Landroid/icu/text/IDNA$Error;

.field public static final enum INVALID_ACE_LABEL:Landroid/icu/text/IDNA$Error;

.field public static final enum LABEL_HAS_DOT:Landroid/icu/text/IDNA$Error;

.field public static final enum LABEL_TOO_LONG:Landroid/icu/text/IDNA$Error;

.field public static final enum LEADING_COMBINING_MARK:Landroid/icu/text/IDNA$Error;

.field public static final enum LEADING_HYPHEN:Landroid/icu/text/IDNA$Error;

.field public static final enum PUNYCODE:Landroid/icu/text/IDNA$Error;

.field public static final enum TRAILING_HYPHEN:Landroid/icu/text/IDNA$Error;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Landroid/icu/text/IDNA$Error;

    const-string/jumbo v1, "EMPTY_LABEL"

    invoke-direct {v0, v1, v3}, Landroid/icu/text/IDNA$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/IDNA$Error;->EMPTY_LABEL:Landroid/icu/text/IDNA$Error;

    new-instance v0, Landroid/icu/text/IDNA$Error;

    const-string/jumbo v1, "LABEL_TOO_LONG"

    invoke-direct {v0, v1, v4}, Landroid/icu/text/IDNA$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/IDNA$Error;->LABEL_TOO_LONG:Landroid/icu/text/IDNA$Error;

    new-instance v0, Landroid/icu/text/IDNA$Error;

    const-string/jumbo v1, "DOMAIN_NAME_TOO_LONG"

    invoke-direct {v0, v1, v5}, Landroid/icu/text/IDNA$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/IDNA$Error;->DOMAIN_NAME_TOO_LONG:Landroid/icu/text/IDNA$Error;

    new-instance v0, Landroid/icu/text/IDNA$Error;

    const-string/jumbo v1, "LEADING_HYPHEN"

    invoke-direct {v0, v1, v6}, Landroid/icu/text/IDNA$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/IDNA$Error;->LEADING_HYPHEN:Landroid/icu/text/IDNA$Error;

    new-instance v0, Landroid/icu/text/IDNA$Error;

    const-string/jumbo v1, "TRAILING_HYPHEN"

    invoke-direct {v0, v1, v7}, Landroid/icu/text/IDNA$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/IDNA$Error;->TRAILING_HYPHEN:Landroid/icu/text/IDNA$Error;

    new-instance v0, Landroid/icu/text/IDNA$Error;

    const-string/jumbo v1, "HYPHEN_3_4"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/icu/text/IDNA$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/IDNA$Error;->HYPHEN_3_4:Landroid/icu/text/IDNA$Error;

    new-instance v0, Landroid/icu/text/IDNA$Error;

    const-string/jumbo v1, "LEADING_COMBINING_MARK"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Landroid/icu/text/IDNA$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/IDNA$Error;->LEADING_COMBINING_MARK:Landroid/icu/text/IDNA$Error;

    new-instance v0, Landroid/icu/text/IDNA$Error;

    const-string/jumbo v1, "DISALLOWED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Landroid/icu/text/IDNA$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/IDNA$Error;->DISALLOWED:Landroid/icu/text/IDNA$Error;

    new-instance v0, Landroid/icu/text/IDNA$Error;

    const-string/jumbo v1, "PUNYCODE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Landroid/icu/text/IDNA$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/IDNA$Error;->PUNYCODE:Landroid/icu/text/IDNA$Error;

    new-instance v0, Landroid/icu/text/IDNA$Error;

    const-string/jumbo v1, "LABEL_HAS_DOT"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Landroid/icu/text/IDNA$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/IDNA$Error;->LABEL_HAS_DOT:Landroid/icu/text/IDNA$Error;

    new-instance v0, Landroid/icu/text/IDNA$Error;

    const-string/jumbo v1, "INVALID_ACE_LABEL"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/icu/text/IDNA$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/IDNA$Error;->INVALID_ACE_LABEL:Landroid/icu/text/IDNA$Error;

    new-instance v0, Landroid/icu/text/IDNA$Error;

    const-string/jumbo v1, "BIDI"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Landroid/icu/text/IDNA$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/IDNA$Error;->BIDI:Landroid/icu/text/IDNA$Error;

    new-instance v0, Landroid/icu/text/IDNA$Error;

    const-string/jumbo v1, "CONTEXTJ"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Landroid/icu/text/IDNA$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/IDNA$Error;->CONTEXTJ:Landroid/icu/text/IDNA$Error;

    new-instance v0, Landroid/icu/text/IDNA$Error;

    const-string/jumbo v1, "CONTEXTO_PUNCTUATION"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Landroid/icu/text/IDNA$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/IDNA$Error;->CONTEXTO_PUNCTUATION:Landroid/icu/text/IDNA$Error;

    new-instance v0, Landroid/icu/text/IDNA$Error;

    const-string/jumbo v1, "CONTEXTO_DIGITS"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Landroid/icu/text/IDNA$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/IDNA$Error;->CONTEXTO_DIGITS:Landroid/icu/text/IDNA$Error;

    const/16 v0, 0xf

    new-array v0, v0, [Landroid/icu/text/IDNA$Error;

    sget-object v1, Landroid/icu/text/IDNA$Error;->EMPTY_LABEL:Landroid/icu/text/IDNA$Error;

    aput-object v1, v0, v3

    sget-object v1, Landroid/icu/text/IDNA$Error;->LABEL_TOO_LONG:Landroid/icu/text/IDNA$Error;

    aput-object v1, v0, v4

    sget-object v1, Landroid/icu/text/IDNA$Error;->DOMAIN_NAME_TOO_LONG:Landroid/icu/text/IDNA$Error;

    aput-object v1, v0, v5

    sget-object v1, Landroid/icu/text/IDNA$Error;->LEADING_HYPHEN:Landroid/icu/text/IDNA$Error;

    aput-object v1, v0, v6

    sget-object v1, Landroid/icu/text/IDNA$Error;->TRAILING_HYPHEN:Landroid/icu/text/IDNA$Error;

    aput-object v1, v0, v7

    sget-object v1, Landroid/icu/text/IDNA$Error;->HYPHEN_3_4:Landroid/icu/text/IDNA$Error;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/text/IDNA$Error;->LEADING_COMBINING_MARK:Landroid/icu/text/IDNA$Error;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/text/IDNA$Error;->DISALLOWED:Landroid/icu/text/IDNA$Error;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/text/IDNA$Error;->PUNYCODE:Landroid/icu/text/IDNA$Error;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/text/IDNA$Error;->LABEL_HAS_DOT:Landroid/icu/text/IDNA$Error;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/text/IDNA$Error;->INVALID_ACE_LABEL:Landroid/icu/text/IDNA$Error;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/text/IDNA$Error;->BIDI:Landroid/icu/text/IDNA$Error;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/text/IDNA$Error;->CONTEXTJ:Landroid/icu/text/IDNA$Error;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/text/IDNA$Error;->CONTEXTO_PUNCTUATION:Landroid/icu/text/IDNA$Error;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/text/IDNA$Error;->CONTEXTO_DIGITS:Landroid/icu/text/IDNA$Error;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sput-object v0, Landroid/icu/text/IDNA$Error;->$VALUES:[Landroid/icu/text/IDNA$Error;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/text/IDNA$Error;
    .locals 1

    const-class v0, Landroid/icu/text/IDNA$Error;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/icu/text/IDNA$Error;

    return-object v0
.end method

.method public static values()[Landroid/icu/text/IDNA$Error;
    .locals 1

    sget-object v0, Landroid/icu/text/IDNA$Error;->$VALUES:[Landroid/icu/text/IDNA$Error;

    return-object v0
.end method
