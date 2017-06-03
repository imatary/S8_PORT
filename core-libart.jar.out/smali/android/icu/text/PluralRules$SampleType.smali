.class public final enum Landroid/icu/text/PluralRules$SampleType;
.super Ljava/lang/Enum;
.source "PluralRules.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/PluralRules;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SampleType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/icu/text/PluralRules$SampleType;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/text/PluralRules$SampleType;

.field public static final enum DECIMAL:Landroid/icu/text/PluralRules$SampleType;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum INTEGER:Landroid/icu/text/PluralRules$SampleType;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Landroid/icu/text/PluralRules$SampleType;

    const-string/jumbo v1, "INTEGER"

    invoke-direct {v0, v1, v2}, Landroid/icu/text/PluralRules$SampleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/PluralRules$SampleType;->INTEGER:Landroid/icu/text/PluralRules$SampleType;

    new-instance v0, Landroid/icu/text/PluralRules$SampleType;

    const-string/jumbo v1, "DECIMAL"

    invoke-direct {v0, v1, v3}, Landroid/icu/text/PluralRules$SampleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/PluralRules$SampleType;->DECIMAL:Landroid/icu/text/PluralRules$SampleType;

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/icu/text/PluralRules$SampleType;

    sget-object v1, Landroid/icu/text/PluralRules$SampleType;->INTEGER:Landroid/icu/text/PluralRules$SampleType;

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/text/PluralRules$SampleType;->DECIMAL:Landroid/icu/text/PluralRules$SampleType;

    aput-object v1, v0, v3

    sput-object v0, Landroid/icu/text/PluralRules$SampleType;->$VALUES:[Landroid/icu/text/PluralRules$SampleType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/text/PluralRules$SampleType;
    .locals 1

    const-class v0, Landroid/icu/text/PluralRules$SampleType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/icu/text/PluralRules$SampleType;

    return-object v0
.end method

.method public static values()[Landroid/icu/text/PluralRules$SampleType;
    .locals 1

    sget-object v0, Landroid/icu/text/PluralRules$SampleType;->$VALUES:[Landroid/icu/text/PluralRules$SampleType;

    return-object v0
.end method
