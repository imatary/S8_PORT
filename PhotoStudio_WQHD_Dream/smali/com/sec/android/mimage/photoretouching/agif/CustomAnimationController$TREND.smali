.class public final enum Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController$TREND;
.super Ljava/lang/Enum;
.source "CustomAnimationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TREND"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController$TREND;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController$TREND;

.field public static final enum DECREASE:Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController$TREND;

.field public static final enum INCREASE:Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController$TREND;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController$TREND;

    const-string v1, "INCREASE"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController$TREND;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController$TREND;->INCREASE:Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController$TREND;

    new-instance v0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController$TREND;

    const-string v1, "DECREASE"

    invoke-direct {v0, v1, v3}, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController$TREND;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController$TREND;->DECREASE:Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController$TREND;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController$TREND;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController$TREND;->INCREASE:Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController$TREND;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController$TREND;->DECREASE:Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController$TREND;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController$TREND;->$VALUES:[Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController$TREND;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController$TREND;
    .locals 1

    const-class v0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController$TREND;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController$TREND;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController$TREND;
    .locals 1

    sget-object v0, Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController$TREND;->$VALUES:[Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController$TREND;

    invoke-virtual {v0}, [Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController$TREND;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/mimage/photoretouching/agif/CustomAnimationController$TREND;

    return-object v0
.end method
