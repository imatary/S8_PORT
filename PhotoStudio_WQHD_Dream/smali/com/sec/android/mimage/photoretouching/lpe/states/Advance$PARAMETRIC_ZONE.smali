.class public final enum Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_ZONE;
.super Ljava/lang/Enum;
.source "Advance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PARAMETRIC_ZONE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_ZONE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_ZONE;

.field public static final enum DARKS:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_ZONE;

.field public static final enum HIGHLIGHTS:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_ZONE;

.field public static final enum LIGHTS:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_ZONE;

.field public static final enum NONE:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_ZONE;

.field public static final enum SHADOWS:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_ZONE;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_ZONE;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_ZONE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_ZONE;->NONE:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_ZONE;

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_ZONE;

    const-string v1, "SHADOWS"

    invoke-direct {v0, v1, v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_ZONE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_ZONE;->SHADOWS:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_ZONE;

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_ZONE;

    const-string v1, "DARKS"

    invoke-direct {v0, v1, v4}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_ZONE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_ZONE;->DARKS:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_ZONE;

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_ZONE;

    const-string v1, "LIGHTS"

    invoke-direct {v0, v1, v5}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_ZONE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_ZONE;->LIGHTS:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_ZONE;

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_ZONE;

    const-string v1, "HIGHLIGHTS"

    invoke-direct {v0, v1, v6}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_ZONE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_ZONE;->HIGHLIGHTS:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_ZONE;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_ZONE;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_ZONE;->NONE:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_ZONE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_ZONE;->SHADOWS:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_ZONE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_ZONE;->DARKS:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_ZONE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_ZONE;->LIGHTS:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_ZONE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_ZONE;->HIGHLIGHTS:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_ZONE;

    aput-object v1, v0, v6

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_ZONE;->$VALUES:[Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_ZONE;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_ZONE;
    .locals 1

    const-class v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_ZONE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_ZONE;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_ZONE;
    .locals 1

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_ZONE;->$VALUES:[Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_ZONE;

    invoke-virtual {v0}, [Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_ZONE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_ZONE;

    return-object v0
.end method
