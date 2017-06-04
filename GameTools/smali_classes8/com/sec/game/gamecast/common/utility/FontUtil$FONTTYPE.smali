.class public final enum Lcom/sec/game/gamecast/common/utility/FontUtil$FONTTYPE;
.super Ljava/lang/Enum;
.source "FontUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/game/gamecast/common/utility/FontUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FONTTYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/game/gamecast/common/utility/FontUtil$FONTTYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/game/gamecast/common/utility/FontUtil$FONTTYPE;

.field public static final enum FONT_DEFAULT:Lcom/sec/game/gamecast/common/utility/FontUtil$FONTTYPE;

.field public static final enum SECRobotoLight_Bold:Lcom/sec/game/gamecast/common/utility/FontUtil$FONTTYPE;

.field public static final enum SECRobotoLight_Regular:Lcom/sec/game/gamecast/common/utility/FontUtil$FONTTYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/sec/game/gamecast/common/utility/FontUtil$FONTTYPE;

    const-string/jumbo v1, "SECRobotoLight_Bold"

    invoke-direct {v0, v1, v2}, Lcom/sec/game/gamecast/common/utility/FontUtil$FONTTYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/game/gamecast/common/utility/FontUtil$FONTTYPE;->SECRobotoLight_Bold:Lcom/sec/game/gamecast/common/utility/FontUtil$FONTTYPE;

    new-instance v0, Lcom/sec/game/gamecast/common/utility/FontUtil$FONTTYPE;

    const-string/jumbo v1, "SECRobotoLight_Regular"

    invoke-direct {v0, v1, v3}, Lcom/sec/game/gamecast/common/utility/FontUtil$FONTTYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/game/gamecast/common/utility/FontUtil$FONTTYPE;->SECRobotoLight_Regular:Lcom/sec/game/gamecast/common/utility/FontUtil$FONTTYPE;

    new-instance v0, Lcom/sec/game/gamecast/common/utility/FontUtil$FONTTYPE;

    const-string/jumbo v1, "FONT_DEFAULT"

    invoke-direct {v0, v1, v4}, Lcom/sec/game/gamecast/common/utility/FontUtil$FONTTYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/game/gamecast/common/utility/FontUtil$FONTTYPE;->FONT_DEFAULT:Lcom/sec/game/gamecast/common/utility/FontUtil$FONTTYPE;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sec/game/gamecast/common/utility/FontUtil$FONTTYPE;

    sget-object v1, Lcom/sec/game/gamecast/common/utility/FontUtil$FONTTYPE;->SECRobotoLight_Bold:Lcom/sec/game/gamecast/common/utility/FontUtil$FONTTYPE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/game/gamecast/common/utility/FontUtil$FONTTYPE;->SECRobotoLight_Regular:Lcom/sec/game/gamecast/common/utility/FontUtil$FONTTYPE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/game/gamecast/common/utility/FontUtil$FONTTYPE;->FONT_DEFAULT:Lcom/sec/game/gamecast/common/utility/FontUtil$FONTTYPE;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/game/gamecast/common/utility/FontUtil$FONTTYPE;->$VALUES:[Lcom/sec/game/gamecast/common/utility/FontUtil$FONTTYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/game/gamecast/common/utility/FontUtil$FONTTYPE;
    .locals 1

    const-class v0, Lcom/sec/game/gamecast/common/utility/FontUtil$FONTTYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/game/gamecast/common/utility/FontUtil$FONTTYPE;

    return-object v0
.end method

.method public static values()[Lcom/sec/game/gamecast/common/utility/FontUtil$FONTTYPE;
    .locals 1

    sget-object v0, Lcom/sec/game/gamecast/common/utility/FontUtil$FONTTYPE;->$VALUES:[Lcom/sec/game/gamecast/common/utility/FontUtil$FONTTYPE;

    invoke-virtual {v0}, [Lcom/sec/game/gamecast/common/utility/FontUtil$FONTTYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/game/gamecast/common/utility/FontUtil$FONTTYPE;

    return-object v0
.end method
