.class public final enum Landroid/icu/text/PluralRules$PluralType;
.super Ljava/lang/Enum;
.source "PluralRules.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/PluralRules;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PluralType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/icu/text/PluralRules$PluralType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/text/PluralRules$PluralType;

.field public static final enum CARDINAL:Landroid/icu/text/PluralRules$PluralType;

.field public static final enum ORDINAL:Landroid/icu/text/PluralRules$PluralType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Landroid/icu/text/PluralRules$PluralType;

    const-string/jumbo v1, "CARDINAL"

    invoke-direct {v0, v1, v2}, Landroid/icu/text/PluralRules$PluralType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/PluralRules$PluralType;->CARDINAL:Landroid/icu/text/PluralRules$PluralType;

    new-instance v0, Landroid/icu/text/PluralRules$PluralType;

    const-string/jumbo v1, "ORDINAL"

    invoke-direct {v0, v1, v3}, Landroid/icu/text/PluralRules$PluralType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/PluralRules$PluralType;->ORDINAL:Landroid/icu/text/PluralRules$PluralType;

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/icu/text/PluralRules$PluralType;

    sget-object v1, Landroid/icu/text/PluralRules$PluralType;->CARDINAL:Landroid/icu/text/PluralRules$PluralType;

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/text/PluralRules$PluralType;->ORDINAL:Landroid/icu/text/PluralRules$PluralType;

    aput-object v1, v0, v3

    sput-object v0, Landroid/icu/text/PluralRules$PluralType;->$VALUES:[Landroid/icu/text/PluralRules$PluralType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/text/PluralRules$PluralType;
    .locals 1

    const-class v0, Landroid/icu/text/PluralRules$PluralType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/icu/text/PluralRules$PluralType;

    return-object v0
.end method

.method public static values()[Landroid/icu/text/PluralRules$PluralType;
    .locals 1

    sget-object v0, Landroid/icu/text/PluralRules$PluralType;->$VALUES:[Landroid/icu/text/PluralRules$PluralType;

    return-object v0
.end method
