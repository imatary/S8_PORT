.class final enum Landroid/icu/impl/coll/CollationRuleParser$Position;
.super Ljava/lang/Enum;
.source "CollationRuleParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/coll/CollationRuleParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Position"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/icu/impl/coll/CollationRuleParser$Position;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/impl/coll/CollationRuleParser$Position;

.field public static final enum FIRST_IMPLICIT:Landroid/icu/impl/coll/CollationRuleParser$Position;

.field public static final enum FIRST_PRIMARY_IGNORABLE:Landroid/icu/impl/coll/CollationRuleParser$Position;

.field public static final enum FIRST_REGULAR:Landroid/icu/impl/coll/CollationRuleParser$Position;

.field public static final enum FIRST_SECONDARY_IGNORABLE:Landroid/icu/impl/coll/CollationRuleParser$Position;

.field public static final enum FIRST_TERTIARY_IGNORABLE:Landroid/icu/impl/coll/CollationRuleParser$Position;

.field public static final enum FIRST_TRAILING:Landroid/icu/impl/coll/CollationRuleParser$Position;

.field public static final enum FIRST_VARIABLE:Landroid/icu/impl/coll/CollationRuleParser$Position;

.field public static final enum LAST_IMPLICIT:Landroid/icu/impl/coll/CollationRuleParser$Position;

.field public static final enum LAST_PRIMARY_IGNORABLE:Landroid/icu/impl/coll/CollationRuleParser$Position;

.field public static final enum LAST_REGULAR:Landroid/icu/impl/coll/CollationRuleParser$Position;

.field public static final enum LAST_SECONDARY_IGNORABLE:Landroid/icu/impl/coll/CollationRuleParser$Position;

.field public static final enum LAST_TERTIARY_IGNORABLE:Landroid/icu/impl/coll/CollationRuleParser$Position;

.field public static final enum LAST_TRAILING:Landroid/icu/impl/coll/CollationRuleParser$Position;

.field public static final enum LAST_VARIABLE:Landroid/icu/impl/coll/CollationRuleParser$Position;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Landroid/icu/impl/coll/CollationRuleParser$Position;

    const-string/jumbo v1, "FIRST_TERTIARY_IGNORABLE"

    invoke-direct {v0, v1, v3}, Landroid/icu/impl/coll/CollationRuleParser$Position;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/coll/CollationRuleParser$Position;->FIRST_TERTIARY_IGNORABLE:Landroid/icu/impl/coll/CollationRuleParser$Position;

    new-instance v0, Landroid/icu/impl/coll/CollationRuleParser$Position;

    const-string/jumbo v1, "LAST_TERTIARY_IGNORABLE"

    invoke-direct {v0, v1, v4}, Landroid/icu/impl/coll/CollationRuleParser$Position;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/coll/CollationRuleParser$Position;->LAST_TERTIARY_IGNORABLE:Landroid/icu/impl/coll/CollationRuleParser$Position;

    new-instance v0, Landroid/icu/impl/coll/CollationRuleParser$Position;

    const-string/jumbo v1, "FIRST_SECONDARY_IGNORABLE"

    invoke-direct {v0, v1, v5}, Landroid/icu/impl/coll/CollationRuleParser$Position;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/coll/CollationRuleParser$Position;->FIRST_SECONDARY_IGNORABLE:Landroid/icu/impl/coll/CollationRuleParser$Position;

    new-instance v0, Landroid/icu/impl/coll/CollationRuleParser$Position;

    const-string/jumbo v1, "LAST_SECONDARY_IGNORABLE"

    invoke-direct {v0, v1, v6}, Landroid/icu/impl/coll/CollationRuleParser$Position;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/coll/CollationRuleParser$Position;->LAST_SECONDARY_IGNORABLE:Landroid/icu/impl/coll/CollationRuleParser$Position;

    new-instance v0, Landroid/icu/impl/coll/CollationRuleParser$Position;

    const-string/jumbo v1, "FIRST_PRIMARY_IGNORABLE"

    invoke-direct {v0, v1, v7}, Landroid/icu/impl/coll/CollationRuleParser$Position;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/coll/CollationRuleParser$Position;->FIRST_PRIMARY_IGNORABLE:Landroid/icu/impl/coll/CollationRuleParser$Position;

    new-instance v0, Landroid/icu/impl/coll/CollationRuleParser$Position;

    const-string/jumbo v1, "LAST_PRIMARY_IGNORABLE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/coll/CollationRuleParser$Position;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/coll/CollationRuleParser$Position;->LAST_PRIMARY_IGNORABLE:Landroid/icu/impl/coll/CollationRuleParser$Position;

    new-instance v0, Landroid/icu/impl/coll/CollationRuleParser$Position;

    const-string/jumbo v1, "FIRST_VARIABLE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/coll/CollationRuleParser$Position;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/coll/CollationRuleParser$Position;->FIRST_VARIABLE:Landroid/icu/impl/coll/CollationRuleParser$Position;

    new-instance v0, Landroid/icu/impl/coll/CollationRuleParser$Position;

    const-string/jumbo v1, "LAST_VARIABLE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/coll/CollationRuleParser$Position;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/coll/CollationRuleParser$Position;->LAST_VARIABLE:Landroid/icu/impl/coll/CollationRuleParser$Position;

    new-instance v0, Landroid/icu/impl/coll/CollationRuleParser$Position;

    const-string/jumbo v1, "FIRST_REGULAR"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/coll/CollationRuleParser$Position;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/coll/CollationRuleParser$Position;->FIRST_REGULAR:Landroid/icu/impl/coll/CollationRuleParser$Position;

    new-instance v0, Landroid/icu/impl/coll/CollationRuleParser$Position;

    const-string/jumbo v1, "LAST_REGULAR"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/coll/CollationRuleParser$Position;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/coll/CollationRuleParser$Position;->LAST_REGULAR:Landroid/icu/impl/coll/CollationRuleParser$Position;

    new-instance v0, Landroid/icu/impl/coll/CollationRuleParser$Position;

    const-string/jumbo v1, "FIRST_IMPLICIT"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/coll/CollationRuleParser$Position;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/coll/CollationRuleParser$Position;->FIRST_IMPLICIT:Landroid/icu/impl/coll/CollationRuleParser$Position;

    new-instance v0, Landroid/icu/impl/coll/CollationRuleParser$Position;

    const-string/jumbo v1, "LAST_IMPLICIT"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/coll/CollationRuleParser$Position;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/coll/CollationRuleParser$Position;->LAST_IMPLICIT:Landroid/icu/impl/coll/CollationRuleParser$Position;

    new-instance v0, Landroid/icu/impl/coll/CollationRuleParser$Position;

    const-string/jumbo v1, "FIRST_TRAILING"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/coll/CollationRuleParser$Position;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/coll/CollationRuleParser$Position;->FIRST_TRAILING:Landroid/icu/impl/coll/CollationRuleParser$Position;

    new-instance v0, Landroid/icu/impl/coll/CollationRuleParser$Position;

    const-string/jumbo v1, "LAST_TRAILING"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/coll/CollationRuleParser$Position;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/coll/CollationRuleParser$Position;->LAST_TRAILING:Landroid/icu/impl/coll/CollationRuleParser$Position;

    const/16 v0, 0xe

    new-array v0, v0, [Landroid/icu/impl/coll/CollationRuleParser$Position;

    sget-object v1, Landroid/icu/impl/coll/CollationRuleParser$Position;->FIRST_TERTIARY_IGNORABLE:Landroid/icu/impl/coll/CollationRuleParser$Position;

    aput-object v1, v0, v3

    sget-object v1, Landroid/icu/impl/coll/CollationRuleParser$Position;->LAST_TERTIARY_IGNORABLE:Landroid/icu/impl/coll/CollationRuleParser$Position;

    aput-object v1, v0, v4

    sget-object v1, Landroid/icu/impl/coll/CollationRuleParser$Position;->FIRST_SECONDARY_IGNORABLE:Landroid/icu/impl/coll/CollationRuleParser$Position;

    aput-object v1, v0, v5

    sget-object v1, Landroid/icu/impl/coll/CollationRuleParser$Position;->LAST_SECONDARY_IGNORABLE:Landroid/icu/impl/coll/CollationRuleParser$Position;

    aput-object v1, v0, v6

    sget-object v1, Landroid/icu/impl/coll/CollationRuleParser$Position;->FIRST_PRIMARY_IGNORABLE:Landroid/icu/impl/coll/CollationRuleParser$Position;

    aput-object v1, v0, v7

    sget-object v1, Landroid/icu/impl/coll/CollationRuleParser$Position;->LAST_PRIMARY_IGNORABLE:Landroid/icu/impl/coll/CollationRuleParser$Position;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/impl/coll/CollationRuleParser$Position;->FIRST_VARIABLE:Landroid/icu/impl/coll/CollationRuleParser$Position;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/impl/coll/CollationRuleParser$Position;->LAST_VARIABLE:Landroid/icu/impl/coll/CollationRuleParser$Position;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/impl/coll/CollationRuleParser$Position;->FIRST_REGULAR:Landroid/icu/impl/coll/CollationRuleParser$Position;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/impl/coll/CollationRuleParser$Position;->LAST_REGULAR:Landroid/icu/impl/coll/CollationRuleParser$Position;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/impl/coll/CollationRuleParser$Position;->FIRST_IMPLICIT:Landroid/icu/impl/coll/CollationRuleParser$Position;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/impl/coll/CollationRuleParser$Position;->LAST_IMPLICIT:Landroid/icu/impl/coll/CollationRuleParser$Position;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/impl/coll/CollationRuleParser$Position;->FIRST_TRAILING:Landroid/icu/impl/coll/CollationRuleParser$Position;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/impl/coll/CollationRuleParser$Position;->LAST_TRAILING:Landroid/icu/impl/coll/CollationRuleParser$Position;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sput-object v0, Landroid/icu/impl/coll/CollationRuleParser$Position;->$VALUES:[Landroid/icu/impl/coll/CollationRuleParser$Position;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/impl/coll/CollationRuleParser$Position;
    .locals 1

    const-class v0, Landroid/icu/impl/coll/CollationRuleParser$Position;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/coll/CollationRuleParser$Position;

    return-object v0
.end method

.method public static values()[Landroid/icu/impl/coll/CollationRuleParser$Position;
    .locals 1

    sget-object v0, Landroid/icu/impl/coll/CollationRuleParser$Position;->$VALUES:[Landroid/icu/impl/coll/CollationRuleParser$Position;

    return-object v0
.end method
