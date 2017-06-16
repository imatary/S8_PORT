.class final enum Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_THRESHOLD;
.super Ljava/lang/Enum;
.source "Advance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "PARAMETRIC_THRESHOLD"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_THRESHOLD;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_THRESHOLD;

.field public static final enum HIGH:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_THRESHOLD;

.field public static final enum LOW:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_THRESHOLD;

.field public static final enum MIDDLE:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_THRESHOLD;

.field public static final enum NONE:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_THRESHOLD;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_THRESHOLD;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_THRESHOLD;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_THRESHOLD;->NONE:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_THRESHOLD;

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_THRESHOLD;

    const-string v1, "LOW"

    invoke-direct {v0, v1, v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_THRESHOLD;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_THRESHOLD;->LOW:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_THRESHOLD;

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_THRESHOLD;

    const-string v1, "MIDDLE"

    invoke-direct {v0, v1, v4}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_THRESHOLD;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_THRESHOLD;->MIDDLE:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_THRESHOLD;

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_THRESHOLD;

    const-string v1, "HIGH"

    invoke-direct {v0, v1, v5}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_THRESHOLD;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_THRESHOLD;->HIGH:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_THRESHOLD;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_THRESHOLD;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_THRESHOLD;->NONE:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_THRESHOLD;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_THRESHOLD;->LOW:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_THRESHOLD;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_THRESHOLD;->MIDDLE:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_THRESHOLD;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_THRESHOLD;->HIGH:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_THRESHOLD;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_THRESHOLD;->$VALUES:[Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_THRESHOLD;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_THRESHOLD;
    .locals 1

    const-class v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_THRESHOLD;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_THRESHOLD;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_THRESHOLD;
    .locals 1

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_THRESHOLD;->$VALUES:[Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_THRESHOLD;

    invoke-virtual {v0}, [Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_THRESHOLD;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_THRESHOLD;

    return-object v0
.end method
