.class public final enum Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd$BroadcastReceiverCmdType;
.super Ljava/lang/Enum;
.source "BroadcastReceiverCmd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BroadcastReceiverCmdType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd$BroadcastReceiverCmdType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd$BroadcastReceiverCmdType;

.field public static final enum ONCREATE:Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd$BroadcastReceiverCmdType;

.field public static final enum ONDESTROY:Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd$BroadcastReceiverCmdType;

.field public static final enum ONPAUSE:Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd$BroadcastReceiverCmdType;

.field public static final enum ONRESUME:Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd$BroadcastReceiverCmdType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd$BroadcastReceiverCmdType;

    const-string/jumbo v1, "ONCREATE"

    invoke-direct {v0, v1, v2}, Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd$BroadcastReceiverCmdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd$BroadcastReceiverCmdType;->ONCREATE:Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd$BroadcastReceiverCmdType;

    new-instance v0, Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd$BroadcastReceiverCmdType;

    const-string/jumbo v1, "ONRESUME"

    invoke-direct {v0, v1, v3}, Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd$BroadcastReceiverCmdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd$BroadcastReceiverCmdType;->ONRESUME:Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd$BroadcastReceiverCmdType;

    new-instance v0, Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd$BroadcastReceiverCmdType;

    const-string/jumbo v1, "ONPAUSE"

    invoke-direct {v0, v1, v4}, Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd$BroadcastReceiverCmdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd$BroadcastReceiverCmdType;->ONPAUSE:Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd$BroadcastReceiverCmdType;

    new-instance v0, Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd$BroadcastReceiverCmdType;

    const-string/jumbo v1, "ONDESTROY"

    invoke-direct {v0, v1, v5}, Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd$BroadcastReceiverCmdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd$BroadcastReceiverCmdType;->ONDESTROY:Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd$BroadcastReceiverCmdType;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd$BroadcastReceiverCmdType;

    sget-object v1, Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd$BroadcastReceiverCmdType;->ONCREATE:Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd$BroadcastReceiverCmdType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd$BroadcastReceiverCmdType;->ONRESUME:Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd$BroadcastReceiverCmdType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd$BroadcastReceiverCmdType;->ONPAUSE:Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd$BroadcastReceiverCmdType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd$BroadcastReceiverCmdType;->ONDESTROY:Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd$BroadcastReceiverCmdType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd$BroadcastReceiverCmdType;->$VALUES:[Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd$BroadcastReceiverCmdType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd$BroadcastReceiverCmdType;
    .locals 1

    const-class v0, Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd$BroadcastReceiverCmdType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd$BroadcastReceiverCmdType;

    return-object v0
.end method

.method public static values()[Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd$BroadcastReceiverCmdType;
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd$BroadcastReceiverCmdType;->$VALUES:[Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd$BroadcastReceiverCmdType;

    invoke-virtual {v0}, [Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd$BroadcastReceiverCmdType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd$BroadcastReceiverCmdType;

    return-object v0
.end method
