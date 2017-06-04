.class public final enum Lcom/sec/android/app/ve/bgm/BGM$BGMModes;
.super Ljava/lang/Enum;
.source "BGM.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/ve/bgm/BGM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BGMModes"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/app/ve/bgm/BGM$BGMModes;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/ve/bgm/BGM$BGMModes;

.field public static final enum FAST:Lcom/sec/android/app/ve/bgm/BGM$BGMModes;

.field public static final enum MEDIUM:Lcom/sec/android/app/ve/bgm/BGM$BGMModes;

.field public static final enum SLOW:Lcom/sec/android/app/ve/bgm/BGM$BGMModes;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/sec/android/app/ve/bgm/BGM$BGMModes;

    const-string/jumbo v1, "SLOW"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/ve/bgm/BGM$BGMModes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/ve/bgm/BGM$BGMModes;->SLOW:Lcom/sec/android/app/ve/bgm/BGM$BGMModes;

    new-instance v0, Lcom/sec/android/app/ve/bgm/BGM$BGMModes;

    const-string/jumbo v1, "MEDIUM"

    invoke-direct {v0, v1, v3}, Lcom/sec/android/app/ve/bgm/BGM$BGMModes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/ve/bgm/BGM$BGMModes;->MEDIUM:Lcom/sec/android/app/ve/bgm/BGM$BGMModes;

    new-instance v0, Lcom/sec/android/app/ve/bgm/BGM$BGMModes;

    const-string/jumbo v1, "FAST"

    invoke-direct {v0, v1, v4}, Lcom/sec/android/app/ve/bgm/BGM$BGMModes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/ve/bgm/BGM$BGMModes;->FAST:Lcom/sec/android/app/ve/bgm/BGM$BGMModes;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sec/android/app/ve/bgm/BGM$BGMModes;

    sget-object v1, Lcom/sec/android/app/ve/bgm/BGM$BGMModes;->SLOW:Lcom/sec/android/app/ve/bgm/BGM$BGMModes;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/android/app/ve/bgm/BGM$BGMModes;->MEDIUM:Lcom/sec/android/app/ve/bgm/BGM$BGMModes;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/android/app/ve/bgm/BGM$BGMModes;->FAST:Lcom/sec/android/app/ve/bgm/BGM$BGMModes;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/android/app/ve/bgm/BGM$BGMModes;->$VALUES:[Lcom/sec/android/app/ve/bgm/BGM$BGMModes;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/ve/bgm/BGM$BGMModes;
    .locals 1

    const-class v0, Lcom/sec/android/app/ve/bgm/BGM$BGMModes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/ve/bgm/BGM$BGMModes;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/app/ve/bgm/BGM$BGMModes;
    .locals 1

    sget-object v0, Lcom/sec/android/app/ve/bgm/BGM$BGMModes;->$VALUES:[Lcom/sec/android/app/ve/bgm/BGM$BGMModes;

    invoke-virtual {v0}, [Lcom/sec/android/app/ve/bgm/BGM$BGMModes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/ve/bgm/BGM$BGMModes;

    return-object v0
.end method
