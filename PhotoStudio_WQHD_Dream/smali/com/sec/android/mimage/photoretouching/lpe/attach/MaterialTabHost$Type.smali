.class public final enum Lcom/sec/android/mimage/photoretouching/lpe/attach/MaterialTabHost$Type;
.super Ljava/lang/Enum;
.source "MaterialTabHost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/mimage/photoretouching/lpe/attach/MaterialTabHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/mimage/photoretouching/lpe/attach/MaterialTabHost$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/mimage/photoretouching/lpe/attach/MaterialTabHost$Type;

.field public static final enum Centered:Lcom/sec/android/mimage/photoretouching/lpe/attach/MaterialTabHost$Type;

.field public static final enum FullScreenWidth:Lcom/sec/android/mimage/photoretouching/lpe/attach/MaterialTabHost$Type;

.field public static final enum LeftOffset:Lcom/sec/android/mimage/photoretouching/lpe/attach/MaterialTabHost$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/attach/MaterialTabHost$Type;

    const-string v1, "FullScreenWidth"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/attach/MaterialTabHost$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/attach/MaterialTabHost$Type;->FullScreenWidth:Lcom/sec/android/mimage/photoretouching/lpe/attach/MaterialTabHost$Type;

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/attach/MaterialTabHost$Type;

    const-string v1, "Centered"

    invoke-direct {v0, v1, v3}, Lcom/sec/android/mimage/photoretouching/lpe/attach/MaterialTabHost$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/attach/MaterialTabHost$Type;->Centered:Lcom/sec/android/mimage/photoretouching/lpe/attach/MaterialTabHost$Type;

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/attach/MaterialTabHost$Type;

    const-string v1, "LeftOffset"

    invoke-direct {v0, v1, v4}, Lcom/sec/android/mimage/photoretouching/lpe/attach/MaterialTabHost$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/attach/MaterialTabHost$Type;->LeftOffset:Lcom/sec/android/mimage/photoretouching/lpe/attach/MaterialTabHost$Type;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sec/android/mimage/photoretouching/lpe/attach/MaterialTabHost$Type;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/attach/MaterialTabHost$Type;->FullScreenWidth:Lcom/sec/android/mimage/photoretouching/lpe/attach/MaterialTabHost$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/attach/MaterialTabHost$Type;->Centered:Lcom/sec/android/mimage/photoretouching/lpe/attach/MaterialTabHost$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/attach/MaterialTabHost$Type;->LeftOffset:Lcom/sec/android/mimage/photoretouching/lpe/attach/MaterialTabHost$Type;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/attach/MaterialTabHost$Type;->$VALUES:[Lcom/sec/android/mimage/photoretouching/lpe/attach/MaterialTabHost$Type;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/mimage/photoretouching/lpe/attach/MaterialTabHost$Type;
    .locals 1

    const-class v0, Lcom/sec/android/mimage/photoretouching/lpe/attach/MaterialTabHost$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/mimage/photoretouching/lpe/attach/MaterialTabHost$Type;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/mimage/photoretouching/lpe/attach/MaterialTabHost$Type;
    .locals 1

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/attach/MaterialTabHost$Type;->$VALUES:[Lcom/sec/android/mimage/photoretouching/lpe/attach/MaterialTabHost$Type;

    invoke-virtual {v0}, [Lcom/sec/android/mimage/photoretouching/lpe/attach/MaterialTabHost$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/mimage/photoretouching/lpe/attach/MaterialTabHost$Type;

    return-object v0
.end method
