.class public final enum Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu$InOutState;
.super Ljava/lang/Enum;
.source "ToolkitTopMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "InOutState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu$InOutState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu$InOutState;

.field public static final enum OUT:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu$InOutState;

.field public static final enum REMOVE:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu$InOutState;

.field public static final enum REMOVE_IN:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu$InOutState;

.field public static final enum REMOVE_OUT:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu$InOutState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu$InOutState;

    const-string/jumbo v1, "REMOVE_IN"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu$InOutState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu$InOutState;->REMOVE_IN:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu$InOutState;

    new-instance v0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu$InOutState;

    const-string/jumbo v1, "REMOVE_OUT"

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu$InOutState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu$InOutState;->REMOVE_OUT:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu$InOutState;

    new-instance v0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu$InOutState;

    const-string/jumbo v1, "REMOVE"

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu$InOutState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu$InOutState;->REMOVE:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu$InOutState;

    new-instance v0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu$InOutState;

    const-string/jumbo v1, "OUT"

    invoke-direct {v0, v1, v5}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu$InOutState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu$InOutState;->OUT:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu$InOutState;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu$InOutState;

    sget-object v1, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu$InOutState;->REMOVE_IN:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu$InOutState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu$InOutState;->REMOVE_OUT:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu$InOutState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu$InOutState;->REMOVE:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu$InOutState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu$InOutState;->OUT:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu$InOutState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu$InOutState;->$VALUES:[Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu$InOutState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu$InOutState;
    .locals 1

    const-class v0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu$InOutState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu$InOutState;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu$InOutState;
    .locals 1

    sget-object v0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu$InOutState;->$VALUES:[Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu$InOutState;

    invoke-virtual {v0}, [Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu$InOutState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu$InOutState;

    return-object v0
.end method
