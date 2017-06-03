.class final enum Landroid/icu/text/PluralRules$Operand;
.super Ljava/lang/Enum;
.source "PluralRules.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/PluralRules;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Operand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/icu/text/PluralRules$Operand;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/text/PluralRules$Operand;

.field public static final enum f:Landroid/icu/text/PluralRules$Operand;

.field public static final enum i:Landroid/icu/text/PluralRules$Operand;

.field public static final enum j:Landroid/icu/text/PluralRules$Operand;

.field public static final enum n:Landroid/icu/text/PluralRules$Operand;

.field public static final enum t:Landroid/icu/text/PluralRules$Operand;

.field public static final enum v:Landroid/icu/text/PluralRules$Operand;

.field public static final enum w:Landroid/icu/text/PluralRules$Operand;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Landroid/icu/text/PluralRules$Operand;

    const-string/jumbo v1, "n"

    invoke-direct {v0, v1, v3}, Landroid/icu/text/PluralRules$Operand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/PluralRules$Operand;->n:Landroid/icu/text/PluralRules$Operand;

    new-instance v0, Landroid/icu/text/PluralRules$Operand;

    const-string/jumbo v1, "i"

    invoke-direct {v0, v1, v4}, Landroid/icu/text/PluralRules$Operand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/PluralRules$Operand;->i:Landroid/icu/text/PluralRules$Operand;

    new-instance v0, Landroid/icu/text/PluralRules$Operand;

    const-string/jumbo v1, "f"

    invoke-direct {v0, v1, v5}, Landroid/icu/text/PluralRules$Operand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/PluralRules$Operand;->f:Landroid/icu/text/PluralRules$Operand;

    new-instance v0, Landroid/icu/text/PluralRules$Operand;

    const-string/jumbo v1, "t"

    invoke-direct {v0, v1, v6}, Landroid/icu/text/PluralRules$Operand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/PluralRules$Operand;->t:Landroid/icu/text/PluralRules$Operand;

    new-instance v0, Landroid/icu/text/PluralRules$Operand;

    const-string/jumbo v1, "v"

    invoke-direct {v0, v1, v7}, Landroid/icu/text/PluralRules$Operand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/PluralRules$Operand;->v:Landroid/icu/text/PluralRules$Operand;

    new-instance v0, Landroid/icu/text/PluralRules$Operand;

    const-string/jumbo v1, "w"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/icu/text/PluralRules$Operand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/PluralRules$Operand;->w:Landroid/icu/text/PluralRules$Operand;

    new-instance v0, Landroid/icu/text/PluralRules$Operand;

    const-string/jumbo v1, "j"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Landroid/icu/text/PluralRules$Operand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/PluralRules$Operand;->j:Landroid/icu/text/PluralRules$Operand;

    const/4 v0, 0x7

    new-array v0, v0, [Landroid/icu/text/PluralRules$Operand;

    sget-object v1, Landroid/icu/text/PluralRules$Operand;->n:Landroid/icu/text/PluralRules$Operand;

    aput-object v1, v0, v3

    sget-object v1, Landroid/icu/text/PluralRules$Operand;->i:Landroid/icu/text/PluralRules$Operand;

    aput-object v1, v0, v4

    sget-object v1, Landroid/icu/text/PluralRules$Operand;->f:Landroid/icu/text/PluralRules$Operand;

    aput-object v1, v0, v5

    sget-object v1, Landroid/icu/text/PluralRules$Operand;->t:Landroid/icu/text/PluralRules$Operand;

    aput-object v1, v0, v6

    sget-object v1, Landroid/icu/text/PluralRules$Operand;->v:Landroid/icu/text/PluralRules$Operand;

    aput-object v1, v0, v7

    sget-object v1, Landroid/icu/text/PluralRules$Operand;->w:Landroid/icu/text/PluralRules$Operand;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/text/PluralRules$Operand;->j:Landroid/icu/text/PluralRules$Operand;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sput-object v0, Landroid/icu/text/PluralRules$Operand;->$VALUES:[Landroid/icu/text/PluralRules$Operand;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/text/PluralRules$Operand;
    .locals 1

    const-class v0, Landroid/icu/text/PluralRules$Operand;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/icu/text/PluralRules$Operand;

    return-object v0
.end method

.method public static values()[Landroid/icu/text/PluralRules$Operand;
    .locals 1

    sget-object v0, Landroid/icu/text/PluralRules$Operand;->$VALUES:[Landroid/icu/text/PluralRules$Operand;

    return-object v0
.end method
