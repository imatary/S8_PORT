.class public final enum Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;
.super Ljava/lang/Enum;
.source "PositionControllerBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NavigationPos"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;

.field public static final enum BOTTOM:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;

.field public static final enum LEFT:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;

.field public static final enum RIGHT:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;

    const-string/jumbo v1, "LEFT"

    invoke-direct {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;->LEFT:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;

    const-string/jumbo v1, "RIGHT"

    invoke-direct {v0, v1, v3}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;->RIGHT:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;

    const-string/jumbo v1, "BOTTOM"

    invoke-direct {v0, v1, v4}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;->BOTTOM:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;

    sget-object v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;->LEFT:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;->RIGHT:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;->BOTTOM:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;->$VALUES:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;
    .locals 1

    const-class v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;

    return-object v0
.end method

.method public static values()[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;->$VALUES:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;

    invoke-virtual {v0}, [Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;

    return-object v0
.end method
