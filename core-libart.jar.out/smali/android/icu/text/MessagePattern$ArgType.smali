.class public final enum Landroid/icu/text/MessagePattern$ArgType;
.super Ljava/lang/Enum;
.source "MessagePattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/MessagePattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ArgType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/icu/text/MessagePattern$ArgType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/text/MessagePattern$ArgType;

.field public static final enum CHOICE:Landroid/icu/text/MessagePattern$ArgType;

.field public static final enum NONE:Landroid/icu/text/MessagePattern$ArgType;

.field public static final enum PLURAL:Landroid/icu/text/MessagePattern$ArgType;

.field public static final enum SELECT:Landroid/icu/text/MessagePattern$ArgType;

.field public static final enum SELECTORDINAL:Landroid/icu/text/MessagePattern$ArgType;

.field public static final enum SIMPLE:Landroid/icu/text/MessagePattern$ArgType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Landroid/icu/text/MessagePattern$ArgType;

    const-string/jumbo v1, "NONE"

    invoke-direct {v0, v1, v3}, Landroid/icu/text/MessagePattern$ArgType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/MessagePattern$ArgType;->NONE:Landroid/icu/text/MessagePattern$ArgType;

    new-instance v0, Landroid/icu/text/MessagePattern$ArgType;

    const-string/jumbo v1, "SIMPLE"

    invoke-direct {v0, v1, v4}, Landroid/icu/text/MessagePattern$ArgType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/MessagePattern$ArgType;->SIMPLE:Landroid/icu/text/MessagePattern$ArgType;

    new-instance v0, Landroid/icu/text/MessagePattern$ArgType;

    const-string/jumbo v1, "CHOICE"

    invoke-direct {v0, v1, v5}, Landroid/icu/text/MessagePattern$ArgType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/MessagePattern$ArgType;->CHOICE:Landroid/icu/text/MessagePattern$ArgType;

    new-instance v0, Landroid/icu/text/MessagePattern$ArgType;

    const-string/jumbo v1, "PLURAL"

    invoke-direct {v0, v1, v6}, Landroid/icu/text/MessagePattern$ArgType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/MessagePattern$ArgType;->PLURAL:Landroid/icu/text/MessagePattern$ArgType;

    new-instance v0, Landroid/icu/text/MessagePattern$ArgType;

    const-string/jumbo v1, "SELECT"

    invoke-direct {v0, v1, v7}, Landroid/icu/text/MessagePattern$ArgType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/MessagePattern$ArgType;->SELECT:Landroid/icu/text/MessagePattern$ArgType;

    new-instance v0, Landroid/icu/text/MessagePattern$ArgType;

    const-string/jumbo v1, "SELECTORDINAL"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/icu/text/MessagePattern$ArgType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/MessagePattern$ArgType;->SELECTORDINAL:Landroid/icu/text/MessagePattern$ArgType;

    const/4 v0, 0x6

    new-array v0, v0, [Landroid/icu/text/MessagePattern$ArgType;

    sget-object v1, Landroid/icu/text/MessagePattern$ArgType;->NONE:Landroid/icu/text/MessagePattern$ArgType;

    aput-object v1, v0, v3

    sget-object v1, Landroid/icu/text/MessagePattern$ArgType;->SIMPLE:Landroid/icu/text/MessagePattern$ArgType;

    aput-object v1, v0, v4

    sget-object v1, Landroid/icu/text/MessagePattern$ArgType;->CHOICE:Landroid/icu/text/MessagePattern$ArgType;

    aput-object v1, v0, v5

    sget-object v1, Landroid/icu/text/MessagePattern$ArgType;->PLURAL:Landroid/icu/text/MessagePattern$ArgType;

    aput-object v1, v0, v6

    sget-object v1, Landroid/icu/text/MessagePattern$ArgType;->SELECT:Landroid/icu/text/MessagePattern$ArgType;

    aput-object v1, v0, v7

    sget-object v1, Landroid/icu/text/MessagePattern$ArgType;->SELECTORDINAL:Landroid/icu/text/MessagePattern$ArgType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Landroid/icu/text/MessagePattern$ArgType;->$VALUES:[Landroid/icu/text/MessagePattern$ArgType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/text/MessagePattern$ArgType;
    .locals 1

    const-class v0, Landroid/icu/text/MessagePattern$ArgType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/icu/text/MessagePattern$ArgType;

    return-object v0
.end method

.method public static values()[Landroid/icu/text/MessagePattern$ArgType;
    .locals 1

    sget-object v0, Landroid/icu/text/MessagePattern$ArgType;->$VALUES:[Landroid/icu/text/MessagePattern$ArgType;

    return-object v0
.end method


# virtual methods
.method public hasPluralStyle()Z
    .locals 2

    const/4 v0, 0x1

    sget-object v1, Landroid/icu/text/MessagePattern$ArgType;->PLURAL:Landroid/icu/text/MessagePattern$ArgType;

    if-eq p0, v1, :cond_0

    sget-object v1, Landroid/icu/text/MessagePattern$ArgType;->SELECTORDINAL:Landroid/icu/text/MessagePattern$ArgType;

    if-ne p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
