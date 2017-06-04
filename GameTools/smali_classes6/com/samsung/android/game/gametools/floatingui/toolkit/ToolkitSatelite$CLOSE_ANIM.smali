.class public final enum Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$CLOSE_ANIM;
.super Ljava/lang/Enum;
.source "ToolkitSatelite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CLOSE_ANIM"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$CLOSE_ANIM;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$CLOSE_ANIM;

.field public static final enum FADEOUT_ANIM:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$CLOSE_ANIM;

.field public static final enum FULL_ANIM:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$CLOSE_ANIM;

.field public static final enum NO_ANIM:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$CLOSE_ANIM;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$CLOSE_ANIM;

    const-string/jumbo v1, "FULL_ANIM"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$CLOSE_ANIM;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$CLOSE_ANIM;->FULL_ANIM:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$CLOSE_ANIM;

    new-instance v0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$CLOSE_ANIM;

    const-string/jumbo v1, "FADEOUT_ANIM"

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$CLOSE_ANIM;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$CLOSE_ANIM;->FADEOUT_ANIM:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$CLOSE_ANIM;

    new-instance v0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$CLOSE_ANIM;

    const-string/jumbo v1, "NO_ANIM"

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$CLOSE_ANIM;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$CLOSE_ANIM;->NO_ANIM:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$CLOSE_ANIM;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$CLOSE_ANIM;

    sget-object v1, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$CLOSE_ANIM;->FULL_ANIM:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$CLOSE_ANIM;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$CLOSE_ANIM;->FADEOUT_ANIM:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$CLOSE_ANIM;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$CLOSE_ANIM;->NO_ANIM:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$CLOSE_ANIM;

    aput-object v1, v0, v4

    sput-object v0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$CLOSE_ANIM;->$VALUES:[Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$CLOSE_ANIM;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$CLOSE_ANIM;
    .locals 1

    const-class v0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$CLOSE_ANIM;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$CLOSE_ANIM;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$CLOSE_ANIM;
    .locals 1

    sget-object v0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$CLOSE_ANIM;->$VALUES:[Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$CLOSE_ANIM;

    invoke-virtual {v0}, [Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$CLOSE_ANIM;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$CLOSE_ANIM;

    return-object v0
.end method
