.class public final enum Landroid/icu/text/MessagePatternUtil$MessageContentsNode$Type;
.super Ljava/lang/Enum;
.source "MessagePatternUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/MessagePatternUtil$MessageContentsNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/icu/text/MessagePatternUtil$MessageContentsNode$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/text/MessagePatternUtil$MessageContentsNode$Type;

.field public static final enum ARG:Landroid/icu/text/MessagePatternUtil$MessageContentsNode$Type;

.field public static final enum REPLACE_NUMBER:Landroid/icu/text/MessagePatternUtil$MessageContentsNode$Type;

.field public static final enum TEXT:Landroid/icu/text/MessagePatternUtil$MessageContentsNode$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Landroid/icu/text/MessagePatternUtil$MessageContentsNode$Type;

    const-string/jumbo v1, "TEXT"

    invoke-direct {v0, v1, v2}, Landroid/icu/text/MessagePatternUtil$MessageContentsNode$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/MessagePatternUtil$MessageContentsNode$Type;->TEXT:Landroid/icu/text/MessagePatternUtil$MessageContentsNode$Type;

    new-instance v0, Landroid/icu/text/MessagePatternUtil$MessageContentsNode$Type;

    const-string/jumbo v1, "ARG"

    invoke-direct {v0, v1, v3}, Landroid/icu/text/MessagePatternUtil$MessageContentsNode$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/MessagePatternUtil$MessageContentsNode$Type;->ARG:Landroid/icu/text/MessagePatternUtil$MessageContentsNode$Type;

    new-instance v0, Landroid/icu/text/MessagePatternUtil$MessageContentsNode$Type;

    const-string/jumbo v1, "REPLACE_NUMBER"

    invoke-direct {v0, v1, v4}, Landroid/icu/text/MessagePatternUtil$MessageContentsNode$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/MessagePatternUtil$MessageContentsNode$Type;->REPLACE_NUMBER:Landroid/icu/text/MessagePatternUtil$MessageContentsNode$Type;

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/icu/text/MessagePatternUtil$MessageContentsNode$Type;

    sget-object v1, Landroid/icu/text/MessagePatternUtil$MessageContentsNode$Type;->TEXT:Landroid/icu/text/MessagePatternUtil$MessageContentsNode$Type;

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/text/MessagePatternUtil$MessageContentsNode$Type;->ARG:Landroid/icu/text/MessagePatternUtil$MessageContentsNode$Type;

    aput-object v1, v0, v3

    sget-object v1, Landroid/icu/text/MessagePatternUtil$MessageContentsNode$Type;->REPLACE_NUMBER:Landroid/icu/text/MessagePatternUtil$MessageContentsNode$Type;

    aput-object v1, v0, v4

    sput-object v0, Landroid/icu/text/MessagePatternUtil$MessageContentsNode$Type;->$VALUES:[Landroid/icu/text/MessagePatternUtil$MessageContentsNode$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/text/MessagePatternUtil$MessageContentsNode$Type;
    .locals 1

    const-class v0, Landroid/icu/text/MessagePatternUtil$MessageContentsNode$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/icu/text/MessagePatternUtil$MessageContentsNode$Type;

    return-object v0
.end method

.method public static values()[Landroid/icu/text/MessagePatternUtil$MessageContentsNode$Type;
    .locals 1

    sget-object v0, Landroid/icu/text/MessagePatternUtil$MessageContentsNode$Type;->$VALUES:[Landroid/icu/text/MessagePatternUtil$MessageContentsNode$Type;

    return-object v0
.end method
