.class public final enum Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu$Section;
.super Ljava/lang/Enum;
.source "ToolkitTopMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Section"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu$Section;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu$Section;

.field public static final enum OUT:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu$Section;

.field public static final enum REMOVE:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu$Section;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu$Section;

    const-string/jumbo v1, "REMOVE"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu$Section;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu$Section;->REMOVE:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu$Section;

    new-instance v0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu$Section;

    const-string/jumbo v1, "OUT"

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu$Section;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu$Section;->OUT:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu$Section;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu$Section;

    sget-object v1, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu$Section;->REMOVE:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu$Section;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu$Section;->OUT:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu$Section;

    aput-object v1, v0, v3

    sput-object v0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu$Section;->$VALUES:[Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu$Section;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu$Section;
    .locals 1

    const-class v0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu$Section;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu$Section;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu$Section;
    .locals 1

    sget-object v0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu$Section;->$VALUES:[Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu$Section;

    invoke-virtual {v0}, [Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu$Section;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu$Section;

    return-object v0
.end method
