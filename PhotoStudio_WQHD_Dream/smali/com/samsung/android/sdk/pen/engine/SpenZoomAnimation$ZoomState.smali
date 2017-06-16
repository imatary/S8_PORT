.class final enum Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation$ZoomState;
.super Ljava/lang/Enum;
.source "SpenZoomAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ZoomState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation$ZoomState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation$ZoomState;

.field public static final enum IDLE_STATE:Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation$ZoomState;

.field public static final enum ZOOMIN_STATE:Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation$ZoomState;

.field public static final enum ZOOMOUT_STATE:Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation$ZoomState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation$ZoomState;

    const-string v1, "IDLE_STATE"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation$ZoomState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation$ZoomState;->IDLE_STATE:Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation$ZoomState;

    new-instance v0, Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation$ZoomState;

    const-string v1, "ZOOMIN_STATE"

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation$ZoomState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation$ZoomState;->ZOOMIN_STATE:Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation$ZoomState;

    new-instance v0, Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation$ZoomState;

    const-string v1, "ZOOMOUT_STATE"

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation$ZoomState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation$ZoomState;->ZOOMOUT_STATE:Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation$ZoomState;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation$ZoomState;

    sget-object v1, Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation$ZoomState;->IDLE_STATE:Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation$ZoomState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation$ZoomState;->ZOOMIN_STATE:Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation$ZoomState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation$ZoomState;->ZOOMOUT_STATE:Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation$ZoomState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation$ZoomState;->$VALUES:[Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation$ZoomState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation$ZoomState;
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation$ZoomState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation$ZoomState;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation$ZoomState;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation$ZoomState;->$VALUES:[Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation$ZoomState;

    invoke-virtual {v0}, [Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation$ZoomState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation$ZoomState;

    return-object v0
.end method
