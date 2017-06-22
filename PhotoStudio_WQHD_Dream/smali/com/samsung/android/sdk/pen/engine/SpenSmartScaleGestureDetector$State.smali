.class public final enum Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;
.super Ljava/lang/Enum;
.source "SpenSmartScaleGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;

.field public static final enum EDGE_STATE:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;

.field public static final enum FLING_STATE:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;

.field public static final enum IDLE_STATE:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;

.field public static final enum READY_FOR_ZOOMOUT_STATE:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;

.field public static final enum SCROLL_STATE:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;

.field public static final enum ZOOMED_STATE:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;

.field public static final enum ZOOMIN_STATE:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;

.field public static final enum ZOOMOUT_STATE:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;

    const-string v1, "IDLE_STATE"

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;->IDLE_STATE:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;

    new-instance v0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;

    const-string v1, "ZOOMIN_STATE"

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;->ZOOMIN_STATE:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;

    new-instance v0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;

    const-string v1, "ZOOMOUT_STATE"

    invoke-direct {v0, v1, v5}, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;->ZOOMOUT_STATE:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;

    new-instance v0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;

    const-string v1, "ZOOMED_STATE"

    invoke-direct {v0, v1, v6}, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;->ZOOMED_STATE:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;

    new-instance v0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;

    const-string v1, "READY_FOR_ZOOMOUT_STATE"

    invoke-direct {v0, v1, v7}, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;->READY_FOR_ZOOMOUT_STATE:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;

    new-instance v0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;

    const-string v1, "SCROLL_STATE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;->SCROLL_STATE:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;

    new-instance v0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;

    const-string v1, "FLING_STATE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;->FLING_STATE:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;

    new-instance v0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;

    const-string v1, "EDGE_STATE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;->EDGE_STATE:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;

    sget-object v1, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;->IDLE_STATE:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;->ZOOMIN_STATE:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;->ZOOMOUT_STATE:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;->ZOOMED_STATE:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;->READY_FOR_ZOOMOUT_STATE:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;->SCROLL_STATE:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;->FLING_STATE:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;->EDGE_STATE:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;->$VALUES:[Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;->$VALUES:[Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;

    invoke-virtual {v0}, [Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;

    return-object v0
.end method
