.class public final enum Landroid/icu/util/ULocale$Minimize;
.super Ljava/lang/Enum;
.source "ULocale.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/ULocale;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Minimize"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/icu/util/ULocale$Minimize;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/util/ULocale$Minimize;

.field public static final enum FAVOR_REGION:Landroid/icu/util/ULocale$Minimize;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum FAVOR_SCRIPT:Landroid/icu/util/ULocale$Minimize;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Landroid/icu/util/ULocale$Minimize;

    const-string/jumbo v1, "FAVOR_SCRIPT"

    invoke-direct {v0, v1, v2}, Landroid/icu/util/ULocale$Minimize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/util/ULocale$Minimize;->FAVOR_SCRIPT:Landroid/icu/util/ULocale$Minimize;

    new-instance v0, Landroid/icu/util/ULocale$Minimize;

    const-string/jumbo v1, "FAVOR_REGION"

    invoke-direct {v0, v1, v3}, Landroid/icu/util/ULocale$Minimize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/util/ULocale$Minimize;->FAVOR_REGION:Landroid/icu/util/ULocale$Minimize;

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/icu/util/ULocale$Minimize;

    sget-object v1, Landroid/icu/util/ULocale$Minimize;->FAVOR_SCRIPT:Landroid/icu/util/ULocale$Minimize;

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/util/ULocale$Minimize;->FAVOR_REGION:Landroid/icu/util/ULocale$Minimize;

    aput-object v1, v0, v3

    sput-object v0, Landroid/icu/util/ULocale$Minimize;->$VALUES:[Landroid/icu/util/ULocale$Minimize;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/util/ULocale$Minimize;
    .locals 1

    const-class v0, Landroid/icu/util/ULocale$Minimize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/icu/util/ULocale$Minimize;

    return-object v0
.end method

.method public static values()[Landroid/icu/util/ULocale$Minimize;
    .locals 1

    sget-object v0, Landroid/icu/util/ULocale$Minimize;->$VALUES:[Landroid/icu/util/ULocale$Minimize;

    return-object v0
.end method
