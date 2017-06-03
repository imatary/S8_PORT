.class final enum Landroid/icu/util/LocaleMatcher$Level;
.super Ljava/lang/Enum;
.source "LocaleMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/LocaleMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Level"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/icu/util/LocaleMatcher$Level;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/util/LocaleMatcher$Level;

.field public static final enum language:Landroid/icu/util/LocaleMatcher$Level;

.field public static final enum region:Landroid/icu/util/LocaleMatcher$Level;

.field public static final enum script:Landroid/icu/util/LocaleMatcher$Level;


# instance fields
.field final worst:D


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Landroid/icu/util/LocaleMatcher$Level;

    const-string/jumbo v1, "language"

    const-wide v2, 0x3fefae147ae147aeL    # 0.99

    invoke-direct {v0, v1, v4, v2, v3}, Landroid/icu/util/LocaleMatcher$Level;-><init>(Ljava/lang/String;ID)V

    sput-object v0, Landroid/icu/util/LocaleMatcher$Level;->language:Landroid/icu/util/LocaleMatcher$Level;

    new-instance v0, Landroid/icu/util/LocaleMatcher$Level;

    const-string/jumbo v1, "script"

    const-wide v2, 0x3fc999999999999aL    # 0.2

    invoke-direct {v0, v1, v5, v2, v3}, Landroid/icu/util/LocaleMatcher$Level;-><init>(Ljava/lang/String;ID)V

    sput-object v0, Landroid/icu/util/LocaleMatcher$Level;->script:Landroid/icu/util/LocaleMatcher$Level;

    new-instance v0, Landroid/icu/util/LocaleMatcher$Level;

    const-string/jumbo v1, "region"

    const-wide v2, 0x3fa47ae147ae147bL    # 0.04

    invoke-direct {v0, v1, v6, v2, v3}, Landroid/icu/util/LocaleMatcher$Level;-><init>(Ljava/lang/String;ID)V

    sput-object v0, Landroid/icu/util/LocaleMatcher$Level;->region:Landroid/icu/util/LocaleMatcher$Level;

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/icu/util/LocaleMatcher$Level;

    sget-object v1, Landroid/icu/util/LocaleMatcher$Level;->language:Landroid/icu/util/LocaleMatcher$Level;

    aput-object v1, v0, v4

    sget-object v1, Landroid/icu/util/LocaleMatcher$Level;->script:Landroid/icu/util/LocaleMatcher$Level;

    aput-object v1, v0, v5

    sget-object v1, Landroid/icu/util/LocaleMatcher$Level;->region:Landroid/icu/util/LocaleMatcher$Level;

    aput-object v1, v0, v6

    sput-object v0, Landroid/icu/util/LocaleMatcher$Level;->$VALUES:[Landroid/icu/util/LocaleMatcher$Level;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ID)V
    .locals 1

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-wide p3, p0, Landroid/icu/util/LocaleMatcher$Level;->worst:D

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/util/LocaleMatcher$Level;
    .locals 1

    const-class v0, Landroid/icu/util/LocaleMatcher$Level;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/icu/util/LocaleMatcher$Level;

    return-object v0
.end method

.method public static values()[Landroid/icu/util/LocaleMatcher$Level;
    .locals 1

    sget-object v0, Landroid/icu/util/LocaleMatcher$Level;->$VALUES:[Landroid/icu/util/LocaleMatcher$Level;

    return-object v0
.end method
