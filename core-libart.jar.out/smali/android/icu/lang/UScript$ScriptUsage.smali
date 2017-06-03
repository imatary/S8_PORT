.class public final enum Landroid/icu/lang/UScript$ScriptUsage;
.super Ljava/lang/Enum;
.source "UScript.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/lang/UScript;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ScriptUsage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/icu/lang/UScript$ScriptUsage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/lang/UScript$ScriptUsage;

.field public static final enum ASPIRATIONAL:Landroid/icu/lang/UScript$ScriptUsage;

.field public static final enum EXCLUDED:Landroid/icu/lang/UScript$ScriptUsage;

.field public static final enum LIMITED_USE:Landroid/icu/lang/UScript$ScriptUsage;

.field public static final enum NOT_ENCODED:Landroid/icu/lang/UScript$ScriptUsage;

.field public static final enum RECOMMENDED:Landroid/icu/lang/UScript$ScriptUsage;

.field public static final enum UNKNOWN:Landroid/icu/lang/UScript$ScriptUsage;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Landroid/icu/lang/UScript$ScriptUsage;

    const-string/jumbo v1, "NOT_ENCODED"

    invoke-direct {v0, v1, v3}, Landroid/icu/lang/UScript$ScriptUsage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/lang/UScript$ScriptUsage;->NOT_ENCODED:Landroid/icu/lang/UScript$ScriptUsage;

    new-instance v0, Landroid/icu/lang/UScript$ScriptUsage;

    const-string/jumbo v1, "UNKNOWN"

    invoke-direct {v0, v1, v4}, Landroid/icu/lang/UScript$ScriptUsage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/lang/UScript$ScriptUsage;->UNKNOWN:Landroid/icu/lang/UScript$ScriptUsage;

    new-instance v0, Landroid/icu/lang/UScript$ScriptUsage;

    const-string/jumbo v1, "EXCLUDED"

    invoke-direct {v0, v1, v5}, Landroid/icu/lang/UScript$ScriptUsage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/lang/UScript$ScriptUsage;->EXCLUDED:Landroid/icu/lang/UScript$ScriptUsage;

    new-instance v0, Landroid/icu/lang/UScript$ScriptUsage;

    const-string/jumbo v1, "LIMITED_USE"

    invoke-direct {v0, v1, v6}, Landroid/icu/lang/UScript$ScriptUsage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/lang/UScript$ScriptUsage;->LIMITED_USE:Landroid/icu/lang/UScript$ScriptUsage;

    new-instance v0, Landroid/icu/lang/UScript$ScriptUsage;

    const-string/jumbo v1, "ASPIRATIONAL"

    invoke-direct {v0, v1, v7}, Landroid/icu/lang/UScript$ScriptUsage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/lang/UScript$ScriptUsage;->ASPIRATIONAL:Landroid/icu/lang/UScript$ScriptUsage;

    new-instance v0, Landroid/icu/lang/UScript$ScriptUsage;

    const-string/jumbo v1, "RECOMMENDED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/icu/lang/UScript$ScriptUsage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/lang/UScript$ScriptUsage;->RECOMMENDED:Landroid/icu/lang/UScript$ScriptUsage;

    const/4 v0, 0x6

    new-array v0, v0, [Landroid/icu/lang/UScript$ScriptUsage;

    sget-object v1, Landroid/icu/lang/UScript$ScriptUsage;->NOT_ENCODED:Landroid/icu/lang/UScript$ScriptUsage;

    aput-object v1, v0, v3

    sget-object v1, Landroid/icu/lang/UScript$ScriptUsage;->UNKNOWN:Landroid/icu/lang/UScript$ScriptUsage;

    aput-object v1, v0, v4

    sget-object v1, Landroid/icu/lang/UScript$ScriptUsage;->EXCLUDED:Landroid/icu/lang/UScript$ScriptUsage;

    aput-object v1, v0, v5

    sget-object v1, Landroid/icu/lang/UScript$ScriptUsage;->LIMITED_USE:Landroid/icu/lang/UScript$ScriptUsage;

    aput-object v1, v0, v6

    sget-object v1, Landroid/icu/lang/UScript$ScriptUsage;->ASPIRATIONAL:Landroid/icu/lang/UScript$ScriptUsage;

    aput-object v1, v0, v7

    sget-object v1, Landroid/icu/lang/UScript$ScriptUsage;->RECOMMENDED:Landroid/icu/lang/UScript$ScriptUsage;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Landroid/icu/lang/UScript$ScriptUsage;->$VALUES:[Landroid/icu/lang/UScript$ScriptUsage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/lang/UScript$ScriptUsage;
    .locals 1

    const-class v0, Landroid/icu/lang/UScript$ScriptUsage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/icu/lang/UScript$ScriptUsage;

    return-object v0
.end method

.method public static values()[Landroid/icu/lang/UScript$ScriptUsage;
    .locals 1

    sget-object v0, Landroid/icu/lang/UScript$ScriptUsage;->$VALUES:[Landroid/icu/lang/UScript$ScriptUsage;

    return-object v0
.end method
