.class public final enum Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$BUTTON_SIZE;
.super Ljava/lang/Enum;
.source "ToolkitSatelite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BUTTON_SIZE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$BUTTON_SIZE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$BUTTON_SIZE;

.field public static final enum BUTTON6:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$BUTTON_SIZE;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$BUTTON_SIZE;

    const-string/jumbo v1, "BUTTON6"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$BUTTON_SIZE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$BUTTON_SIZE;->BUTTON6:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$BUTTON_SIZE;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$BUTTON_SIZE;

    sget-object v1, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$BUTTON_SIZE;->BUTTON6:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$BUTTON_SIZE;

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$BUTTON_SIZE;->$VALUES:[Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$BUTTON_SIZE;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$BUTTON_SIZE;
    .locals 1

    const-class v0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$BUTTON_SIZE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$BUTTON_SIZE;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$BUTTON_SIZE;
    .locals 1

    sget-object v0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$BUTTON_SIZE;->$VALUES:[Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$BUTTON_SIZE;

    invoke-virtual {v0}, [Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$BUTTON_SIZE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$BUTTON_SIZE;

    return-object v0
.end method
