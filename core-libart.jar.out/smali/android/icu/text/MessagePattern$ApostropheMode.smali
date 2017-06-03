.class public final enum Landroid/icu/text/MessagePattern$ApostropheMode;
.super Ljava/lang/Enum;
.source "MessagePattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/MessagePattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ApostropheMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/icu/text/MessagePattern$ApostropheMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/text/MessagePattern$ApostropheMode;

.field public static final enum DOUBLE_OPTIONAL:Landroid/icu/text/MessagePattern$ApostropheMode;

.field public static final enum DOUBLE_REQUIRED:Landroid/icu/text/MessagePattern$ApostropheMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Landroid/icu/text/MessagePattern$ApostropheMode;

    const-string/jumbo v1, "DOUBLE_OPTIONAL"

    invoke-direct {v0, v1, v2}, Landroid/icu/text/MessagePattern$ApostropheMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/MessagePattern$ApostropheMode;->DOUBLE_OPTIONAL:Landroid/icu/text/MessagePattern$ApostropheMode;

    new-instance v0, Landroid/icu/text/MessagePattern$ApostropheMode;

    const-string/jumbo v1, "DOUBLE_REQUIRED"

    invoke-direct {v0, v1, v3}, Landroid/icu/text/MessagePattern$ApostropheMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/MessagePattern$ApostropheMode;->DOUBLE_REQUIRED:Landroid/icu/text/MessagePattern$ApostropheMode;

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/icu/text/MessagePattern$ApostropheMode;

    sget-object v1, Landroid/icu/text/MessagePattern$ApostropheMode;->DOUBLE_OPTIONAL:Landroid/icu/text/MessagePattern$ApostropheMode;

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/text/MessagePattern$ApostropheMode;->DOUBLE_REQUIRED:Landroid/icu/text/MessagePattern$ApostropheMode;

    aput-object v1, v0, v3

    sput-object v0, Landroid/icu/text/MessagePattern$ApostropheMode;->$VALUES:[Landroid/icu/text/MessagePattern$ApostropheMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/text/MessagePattern$ApostropheMode;
    .locals 1

    const-class v0, Landroid/icu/text/MessagePattern$ApostropheMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/icu/text/MessagePattern$ApostropheMode;

    return-object v0
.end method

.method public static values()[Landroid/icu/text/MessagePattern$ApostropheMode;
    .locals 1

    sget-object v0, Landroid/icu/text/MessagePattern$ApostropheMode;->$VALUES:[Landroid/icu/text/MessagePattern$ApostropheMode;

    return-object v0
.end method
